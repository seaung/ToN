#### Python爬虫


##### 验证码--手动输入验证码
>
    -- **一般步骤如下**

    1. 获取动态验证码
    2. 手动输入验证码
    3. 准备登录


    `
        import re
        import requests
        from PIL import Image

        session = requests.session()

        headers = {}

        def get_code():
            url = 'https://pan.baidu.com/login' 
            login_page = session.get(url, headers=headers)

            contents = login_page.text

            pattern = r'.*?name="code" type="hidden" value=(.*?)'
            code = re.search(pattern, content).group(1)
            return code

        def get_captcha(code):
            captcha_url = 'pan.baidu.com/captcha/code={}'.format(code)
            contents = session.get(url, headers=headers).content
            with open('captcha.jpg', 'wb') as fs:
                fs.write(contents)

            try:
                img = Image.open('captcha.jpg')
                img.show()
                img.close()
            except Exception as e:
                print(e)
            captcha_code = input('please enter a captcha\n>')
            return captcha_code

        def login(account, email, code):
            post_url = 'pan.baidu.com/?login'

            post_data = {
                    'user_login': account,
                    'user_email': email,
                    'code': code,
                    'redirect_to': '',
                }

            post_data['code'] = get_captcha(code)
            
            login_page = session.post(post_url, headers=headers, data=post_data)

            print('status code >', login_page.statuc_code)


        if __name__ == '__main__':
            code = get_code()
            account = '1212'
            email = '123@email.com'
            login(account, email, code)

    `

##### 光学字符识别
>
    1. 安装pytesseract 和　pytesseract-ocr
       
       `pip install pytesseract`
       `sudo apt-get install pytesseract-ocr`

    2. 举个栗子

       `
           from PIL import Image
           import pytesseract

           img = Image.open('captcha.jpg')
           img.save('captcha_open.jpg')
           gray = img.convert('L')
           gray.save('captcha_code.jpg')
           bw = gray.point(lambda x: 0 if x < 1 else 255, '1')
           bw.save('captcha_screeshot.jpg')
           pytesseract.image_to_string(bw)

       `
    3. 再举个栗子

       `
           from PIL import Image
           import pytesseract

           img = Image.open('captcha.jpg')
           gray = img.convert('L')
           gray.show()

           thredshotl = 150

           tab = []

           for i in range(256):
               if i < thredshotl:
                   tab.append(i)
               else:
                   tab.append(1)
           out = gray.point(tab, '1')
           out.show()

           out.save('capatcha_1.jpg')

           th = Image.open('capatcha_1.jpg')
           pytesseract.image_to_string(th)
       `
