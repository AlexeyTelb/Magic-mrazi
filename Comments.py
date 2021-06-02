from bottle import post, request, route
import pdb
import json
@post('/Comments', method='post')
def Entry_form():
    log=[]
    Surname = request.forms.get('lastname')
    Name = request.forms.get('firstname')
    Patronymic = request.forms.get('middlename')
    email = request.forms.get('email')
    Gender = request.forms.get('gender')
    Country = request.forms.get('country')
    Comment = request.forms.get('comment')

    log["lastname"] = Surname
    log["firstname"] = Name
    log["middlename"] = Patronymic
    log["email"] = email
    log["gender"] = Gender
    log["country"] = Country
    log["comment"] = Comment

    with open ('data1.txt','a') as outfile:
        jp = json.dumps(log)
        open('data1.txt', 'a').write('\n' + jp)




