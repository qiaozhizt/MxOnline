from django import forms
from captcha.fields import CaptchaField
import redis
from MxOnline.settings import REDIS_PORT,REDIS_HOST
from apps.users.models import UserProfile


class LoginForm(forms.Form):
    username = forms.CharField(required=True,min_length=2)
    password = forms.CharField(required=True,min_length=3)


class RegisterGetForm(forms.Form):
    captcha = CaptchaField()


class RegisterPostForm(forms.Form):
    mobile = forms.CharField(required=True, max_length=11, min_length=11)
    code = forms.CharField(required=True, min_length=4, max_length=4)
    password = forms.CharField(required=True)

    def clean_mobile(self):
        # 验证手机是否存在
        mobile = self.data.get('mobile')
        users = UserProfile.objects.filter(mobile=mobile)
        if users:
            raise forms.ValidationError('该手机号码已注册')
        return mobile  

    def clean_code(self):
        code = self.data.get('code')
        mobile = self.data.get('mobile')
        r = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, db=0, charset='utf8', decode_responses=True)
        redis_code = r.get(str(mobile))
        if code != redis_code:
            raise forms.ValidationError('验证码不正确')
        return code


class DynamicLoginForm(forms.Form):
    mobile = forms.CharField(required=True,max_length=11,min_length=11)
    captcha = CaptchaField()


class DynamicLoginPostForm(forms.Form):
    mobile = forms.CharField(required=True, max_length=11, min_length=11)
    code = forms.CharField(required=True, min_length=4, max_length=4)

    # 对输入的字母验证码的校验
    def clean_code(self):
        # mobile = self.cleaned_data["mobile"]
        # code = self.cleaned_data["code"]

        mobile = self.data.get('mobile')
        code = self.data.get('code')

        r = redis.Redis(host=REDIS_HOST,port=REDIS_PORT,db=0, charset='utf8',decode_responses=True)
        redis_code = r.get(str(mobile))
        if code != redis_code:
            raise forms.ValidationError('验证码不正确')
        return self.cleaned_data


class UploadImageForm(forms.ModelForm):

    class Meta:
        model = UserProfile
        fields = ["image"]


class UserInfoForm(forms.ModelForm):

    class Meta:
        model = UserProfile
        fields = ["nick_name","gender","birthday","address"]


class ChangePwdForm(forms.Form):
    password1 = forms.CharField(required=True,min_length=5)
    password2 = forms.CharField(required=True,min_length=5)

    def clean(self):
        pwd1 = self.cleaned_data["password1"]
        pwd2 = self.cleaned_data["password2"]

        if pwd1 != pwd2:
           raise forms.ValidationError("密码不一致")
        return self.cleaned_data


class UpdateMobileForm(forms.Form):
    mobile = forms.CharField(required=True, max_length=11, min_length=11)
    code = forms.CharField(required=True, min_length=4, max_length=4)

    # 对输入的字母验证码的校验
    def clean_code(self):
        # mobile = self.cleaned_data["mobile"]
        # code = self.cleaned_data["code"]

        mobile = self.data.get('mobile')
        code = self.data.get('code')

        r = redis.Redis(host=REDIS_HOST,port=REDIS_PORT,db=0, charset='utf8',decode_responses=True)
        redis_code = r.get(str(mobile))
        if code != redis_code:
            raise forms.ValidationError('验证码不正确')
        return self.cleaned_data

