from bottle import post, request, route, run, redirect,put
import re
import pdb
import json
@post('/Reg', method="post")
def Entry_form():
    log={}
    login = request.forms.get('Login')
    pas = request.forms.get('Password')
    pas1 = request.forms.get('Password confirmation')
    mail = request.forms.get('email')
    #if pas!=pas1:
        #return ("Password mismatch"+"<br>"+"<a href=/Reg>Back</a>")
    log["login"]=login
    log["password"]=pas
    log["email"]=mail
    with open ('data1.txt', 'a') as outfile:
        jp = json.dumps(log)
        open('data1.txt', 'a').write('\n' + jp)
        print("жопа крота")
    return  ("you have successfully registered "+"<br>"+'''<p><a href="/index"><input type="submit" value="Back"></a></p>''')#("you have successfully registered "+"<br>"+"<a href=/index>Back</a>")