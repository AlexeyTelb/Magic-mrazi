from bottle import post, request
import re
@post('/index', method='post')
def my_form():
    mail = request.forms.get('ADRESS')
    qwer =  request.forms.get('QUEST')
    if qwer=="" or  mail=="":
         return "Не все поля заполены "
    else:
        match = re.search(r'^(\w|\.|\_|\-)+[@](\w|\_|\-|\.)+[.]\w{2,3}$', mail)
        if match!="":
            return "Thanks! The answer will be sent to the mail %s" % mail
        else:
            return "This mail is not %s"% mail