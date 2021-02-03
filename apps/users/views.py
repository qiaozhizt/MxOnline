from pure_pagination import Paginator,PageNotAnInteger
from django.shortcuts import render
from django.views.generic.base import View
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect, JsonResponse
from django.urls import reverse
import redis
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q

from apps.users.forms import LoginForm, DynamicLoginForm, DynamicLoginPostForm,UpdateMobileForm
from apps.users.forms import RegisterGetForm, RegisterPostForm, UploadImageForm, UserInfoForm, ChangePwdForm
from apps.utils.YunPian import send_single_sms
from MxOnline.settings import yp_apikey, REDIS_PORT, REDIS_HOST
from apps.utils.random_str import generate_random
from apps.users.models import UserProfile
from django.contrib.auth.mixins import LoginRequiredMixin
from apps.operations.models import UserCourse,UserFavorite,UserMessage,Banner
from apps.organiztions.models import CourseOrg,Teacher
from apps.courses.models import Course


def message_nums(request):
    # 消息数量
    if request.user.is_authenticated:
        return {"unread_nums":request.user.usermessage_set.filter(has_read=False).count()}
    else:
        return {}


class CustomAuth(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = UserProfile.objects.get(Q(username=username)|Q(mobile=username))
            if user.check_password(password):
                return user
        except Exception as e:
            return None

class MyMessageView(LoginRequiredMixin, View):
    login_url = '/login/'

    def get(self, request, *args, **kwargs):
        current_page = "message"
        messages = UserMessage.objects.filter(user=request.user)
        for message in messages:
            message.has_read = True
            message.save()

        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(messages,per_page=1,request=request)
        message = p.page(page)

        return render(request,"usercenter-message.html",{
            "current_page":current_page,
            "messages":message

        })


class MyFavCourseView(LoginRequiredMixin, View):
    login_url = '/login/'

    def get(self, request, *args, **kwargs):
        current_page = "myfavcourse"

        course_list = []
        fav_courses = UserFavorite.objects.filter(user=request.user,fav_type=1)
        for fav_course in fav_courses:
            try:
                course = Course.objects.get(id=fav_course.fav_id)
                course_list.append(course)
            except Course.DoesNotExist as e:
                pass
        return render(request,"usercenter-fav-course.html",{
            "course_list": course_list,
            "current_page": current_page,
        })


class MyFavTeacherView(LoginRequiredMixin, View):
    login_url = '/login/'

    def get(self, request, *args, **kwargs):
        current_page = "myfavteacher"

        teacher_list = []
        fav_teachers = UserFavorite.objects.filter(user=request.user,fav_type=3)
        for fav_teacher in fav_teachers:
            teacher = Teacher.objects.get(id=fav_teacher.fav_id)
            teacher_list.append(teacher)

        return render(request,"usercenter-fav-teacher.html",{
            "teacher_list":teacher_list,
            "current_page":current_page,
        })


class MyFavOrgView(LoginRequiredMixin, View):
    login_url = '/login/'

    def get(self, request, *args, **kwargs):
        current_page = "myfavorg"

        org_list = []
        fav_orgs = UserFavorite.objects.filter(user=request.user,fav_type=2)
        for fav_org in fav_orgs:
            org = CourseOrg.objects.get(id=fav_org.fav_id)
            org_list.append(org)

        return render(request,"usercenter-fav-org.html",{
            "org_list":org_list,
            "current_page":current_page,
        })


class MyCourseView(LoginRequiredMixin, View):
    login_url = '/login/'

    def get(self, request, *args, **kwargs):
        current_page = "mycourse"
        my_courses = UserCourse.objects.filter(user=request.user)

        return render(request,"usercenter-mycourse.html",{
            "my_courses":my_courses,
            "current_page":current_page,
        })


class ChangeMobileView(LoginRequiredMixin, View):
    login_url = '/login/'
    def post(self, request, *args, **kwargs):
        mobile_form = UpdateMobileForm(request.POST)
        if mobile_form.is_valid():
            mobile = mobile_form.cleaned_data['mobile']
            if UserProfile.objects.filter(mobile=mobile):
                return JsonResponse({
                    "mobile":"该手机号码已被占用"
                })
            user = request.user
            user.mobile = mobile
            user.username = mobile
            user.save()
            return JsonResponse({
                "status":"success"
            })
        else:
            return JsonResponse(mobile_form.errors)


class ChangePwdView(LoginRequiredMixin, View):
    login_url = '/login/'

    def post(self, request, *args, **kwargs):
        pwd_form = ChangePwdForm(request.POST)
        if pwd_form.is_valid():

            pwd1 = request.POST.get("password1","")
            user = request.user
            user.set_password(pwd1)
            user.save()
            return JsonResponse({
                "status": "success"
            })
        else:
            return JsonResponse(pwd_form.errors)


class UploadImageView(LoginRequiredMixin, View):
    login_url = '/login/'

    # def save_file(self,file):
    #     with open("F:/django/MxOnline/media/head_image/uploaded.jpg","wb") as f:
    #         for chunk in file.chunks():
    #             f.write(chunk)
    def post(self, request, *args, **kwargs):
        # 处理用户上传的头像
        # files = request.FILES["image"]
        # self.save_file(files)

        image_form = UploadImageForm(request.POST, request.FILES, instance=request.user)
        if image_form.is_valid():
            image_form.save()
            return JsonResponse({
                "status": "success"
            })
        else:
            return JsonResponse({
                "status": "fail"
            })


class UserInfoView(LoginRequiredMixin, View):
    login_url = '/login/'

    def get(self, request, *args, **kwargs):
        current_page = "info"

        captcha_form = RegisterGetForm(request.GET)


        return render(request, "usercenter-info.html", {
            "captcha_form":captcha_form,
            "current_page":current_page
        })

    def post(self, request, *args, **kwargs):
        user_info_form = UserInfoForm(request.POST, instance=request.user)
        if user_info_form.is_valid():
            user_info_form.save()
            return JsonResponse({
                "status": "success"
            })
        else:
            return JsonResponse(user_info_form.errors)


class RegisterView(View):
    def get(self, request, *args, **kwargs):
        register_get_form = RegisterGetForm()

        return render(request, 'register.html', {
            'register_get_form': register_get_form
        })

    def post(self, request, *args, **kwargs):
        register_post_form = RegisterPostForm(request.POST)
        if register_post_form.is_valid():
            # 没有注册账号依然可以登录
            mobile = register_post_form.cleaned_data['mobile']
            password = register_post_form.cleaned_data['password']

            # 创建一个用户
            user = UserProfile(username=mobile)
            user.set_password(password)
            user.mobile = mobile
            user.save()
            login(request, user)
            return HttpResponseRedirect(reverse("index"))
        else:
            register_get_form = RegisterGetForm()
            return render(request, 'register.html', {
                'register_get_form': register_get_form,
                'register_post_form': register_post_form,
            })


class DynamicLoginView(View):
    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            return HttpResponseRedirect(reverse("index"))

        next = request.GET.get("next", "")

        login_form = DynamicLoginForm()
        banners = Banner.objects.all()[:3]
        return render(request, 'login.html', {
            'login_form': login_form,
            "next": next,
            "banners":banners,
        })

    def post(self, request, *args, **kwargs):
        login_form = DynamicLoginPostForm(request.POST)
        dynamic_login = True
        banners = Banner.objects.all()[:3]
        if login_form.is_valid():
            # 没有注册账号依然可以登录
            mobile = login_form.cleaned_data['mobile']
            # code = login_form.cleaned_data['code']

            existed_users = UserProfile.objects.filter(mobile=mobile)
            if existed_users:
                user = existed_users[0]
            else:
                # 创建一个用户
                user = UserProfile(username=mobile)
                password = generate_random(10, 2)
                user.set_password(password)
                user.mobile = mobile
                user.save()
            login(request, user)

            next = request.GET.get("next", "")
            if next:
                return HttpResponseRedirect(next)
            return HttpResponseRedirect(reverse("index"))
        else:
            d_form = DynamicLoginForm()
            return render(request, 'login.html', {"login_form": login_form,
                                                  "d_form": d_form,
                                                  "dynamic_login": dynamic_login,
                                                  "banners":banners})


class SendSmsView(View):
    def post(self, request, *args, **kwargs):
        re_dict = {}
        send_sms_form = DynamicLoginForm(request.POST)
        if send_sms_form.is_valid():
            mobile = send_sms_form.cleaned_data['mobile']
            # 随机生成数字验证码
            code = generate_random(4, 0)
            re_json = send_single_sms(yp_apikey, code, mobile=mobile)
            if re_json['code'] == 0:
                re_dict["status"] = "success"
                r = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, db=0, charset='utf8', decode_responses=True)
                r.set(str(mobile), code)
                r.expire(str(mobile), 60 * 5)  # 设置验证码五分钟过期
            else:
                re_dict['msg'] = re_json['msg']
        else:
            for key, value in send_sms_form.errors.items():
                re_dict[key] = value[0]
        return JsonResponse(re_dict)


class LogoutView(View):
    def get(self, request, *args, **kwargs):
        logout(request)
        return HttpResponseRedirect(reverse("index"))


class LoginView(View):

    def get(self, request, *args, **kwargs):
        banners = Banner.objects.all()[:3]
        if request.user.is_authenticated:
            return HttpResponseRedirect(reverse("index"))

        next = request.GET.get("next", "")

        login_form = DynamicLoginForm()
        return render(request, 'login.html', {
            'login_form': login_form,
            "next": next,
            "banners" : banners,
        })

    def post(self, request, *args, **kwargs):
        banners = Banner.objects.all()[:3]
        login_form = LoginForm(request.POST)
        # 表单验证
        if login_form.is_valid():
            user_name = login_form.cleaned_data['username']
            password = login_form.cleaned_data['password']

            # 用于通过用户和密码查询用户是否存在
            user = authenticate(username=user_name, password=password)
            if user is not None:
                # 查询到用户
                login(request, user)

                # 登录之后怎么返回页面
                next = request.GET.get("next", "")
                if next:
                    return HttpResponseRedirect(next)
                return HttpResponseRedirect(reverse("index"))
            else:
                # 未查询到用户
                return render(request, 'login.html', {"msg": "用户名或密码错误", "login_form": login_form,"banners":banners})
        else:
            return render(request, 'login.html', {"login_form": login_form,"banners":banners})
