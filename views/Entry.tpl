% rebase('layout.tpl', title='Home Page')
<form method="post" action="/Entry" class="form">
<style>

.center {
    position: absolute;
    top: 15%;
    left: 10%;
}

body {
    background: #F6F9F9;
}

.form label {
    width: 180px;
    float: left;
}

.form label {
    width: 180px;
    float: left;
    color: #999;
}

.form input {
    width: 400px;
}

.form textarea {
    width: 400px;
}

.form textarea {
    width: 400px;
    max-width: 400px;
    min-width: 400px;
    line-height: 150%;
}

.confirm {
    float: none !important;
}

.form input[type="checkbox"] {
    width: auto;
}

.form input, .form textarea, .form select {
    padding: 9px;
    border: 1px solid #E5E5E5;
    border-radius: 5px;
}
</style>
<body>
    <div  class=center id=left>
     <p>
     <label for="log"><span class="formTextRed">*</span> Login:</label>
     <input type="text" name="log" id="log" />
     </p>
     <p>
     <label for="pas"><span class="formTextRed">*</span> Password:</label>
     <input type="text" name="pas" id="pas" />
     </p>
     <p class="submit">
     <input type="submit" value="Send" />
     </p>

    </div>
</body>
 </form>
<style>
    .lognText{
        padding: 9px;
        border: 1px solid #E5E5E5;
        border-radius: 5px;
        position: absolute;
        width: 400px;
        height: 600px;
        top: 15%;
        left: 50%;
    }      

</style>

<style>
    .lognLab{
        position: absolute;
        width: 200px;
        top: 13%;
        left: 50%;
    }      

</style>

%with open("data2.txt",encoding="utf-8") as file:
    %logs=file.read()
<p><label class=lognLab ;>Active users:</label><textarea class=lognText>{{logs}}</textarea></p>
