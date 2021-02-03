import requests
import json


def send_single_sms(apikey, code, mobile):
    # 发送单条短信
    url = 'https://sms.yunpian.com/v2/sms/single_send.json'
    text = '【朱彤提示】您的验证码是{}'.format(code)
    res = requests.post(url, data={
        'apikey': apikey,
        'mobile': mobile,
        'text': text,
    })
    res_json = json.loads(res.text)
    return res_json


if __name__ == '__main__':
    res = send_single_sms('60e7f6a9191a57a59c287216ed7a587a', '123456', '13805654621')

    res_json = json.loads(res.text)
    code = res_json['code']
    msg = res_json['msg']
    if code == 0:
        print('发送成功')
    else:
        print('发送失败：{}'.format(msg))
    print(res.text)
