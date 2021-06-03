% rebase('layout.tpl', title='Home Page')


 <img src= "static\image\banner.png">
 <form method="route" action="/index" class="form">
 </form>

<div class="row">
    <div class="col-md-4">
        <h2>Porgs</h2>
        <img src= "static\image\porgi.jpg">
        <p>They're from Ahch-To. Luke called them porgs. They're adorable.</p>
        <p><a class="btn btn-default" href=/Porgs>Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>Ewoks</h2>
        <img src= "static\image\ewoks.jpg">
        <p>The Ewoks are fierce warriors. The top of the food chain on a savage planet!</p>
        <p><a class="btn btn-default" href=/Ewoks>Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>Wookiee</h2>
        <img src= "static\image\Wookiee.png">
        <p>It's not wise to upset a Wookiee.</p>
        <p><a class="btn btn-default" href=/Wookiee>Learn more &raquo;</a></p>
<h3> Ask a Question </h3>
<form action="/index" method="post">
        <p><textarea rows="2" cols="50" name="QUEST" placeholder="Your question"></textarea></p> 
        <p><input type="text" size="50" name="ADRESS" placeholder="Your email"></p>
        <class="btn btn-default"><input type="submit" value="Send">
</form>
</div>
<style>
    .lognText{
        padding: 9px;
        border: 1px solid #ffffff;
        border-radius: 5px;
        position: absolute;
        font-size: 20px;
        width: 400px;
        height: 600px;
        top: 35%;
        left: 85%;
    }      

</style>

<style>
    .lognLab{
        position: absolute;
        font-size: 20px;
        width: 200px;
        top: 32%;
        left: 85%;
    }      

</style>

%with open("data2.txt",encoding="utf-8") as file:
    %logs=file.read()
<p><label class=lognLab ;>Users:</label><textarea class=lognText>{{logs}}</textarea></p>