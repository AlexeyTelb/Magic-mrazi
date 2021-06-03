from bottle import post, request, route, run, redirect,put
@post('/Entry', method="post")
def Entry_form():
    logs=[]
    login = request.forms.get('log')
    pas = request.forms.get('pas')
    g=open("data1.txt","r")
    lines=0
    for line in g:
        lines+=1
        if "Login:" in line:
            string1, separator, string2 = line.partition(': ')
            if (login+"\n" == string2):
                break
    string3, separator1, string4 = g.readline(lines+1).partition(': ')
    print (g.readlines())
    if pas+"\n"==string2:
        f=open("D:/Users/lehat/Desktop/ррррр/Magic-mrazi-master1/views/layout.tpl","r")
        print (f.read(1))
        print ("SOSI")
                