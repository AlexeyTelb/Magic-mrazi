from bottle import post, request, route, run, redirect,put
@post('/Entry', method="post")
def Entry_form():
    logs=[]
    login = request.forms.get('log')
    pas = request.forms.get('pas')
    g=open("data2.txt","r")
    lines=0
    for line in g:
        lines+=1
        if login == line:
            log1=line
            break
    t=open("data3.txt","r")
    a=t.readlines(lines)[0]
    if pas+"\n"==a:
        f=open("D:/Users/lehat/Desktop/ррррр/Magic-mrazi-master1/views/layout.tpl","r")
        b=f.readline(10000)[24]
        print(b)
                