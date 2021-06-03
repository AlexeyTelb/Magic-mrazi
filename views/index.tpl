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
</div>
<style>
    .lognText{
        padding: 9px;
        border: 1px solid #808080;
        border-radius: 5px;
        position: absolute;
        font-size: 20px;
        width: 150px;
        height: 500px;
        top: 20%;
        left: 90%;
        text-align: center;
    }

</style>

<style>
    .lognLab{
        position: absolute;
        font-size: 20px;
        width: 150px;
        top: 15%;
        left: 90%;
        text-align: center;
    }

</style>

%with open("data2.txt",encoding="utf-8") as file:
    %logs=file.read()
<p><label class=lognLab ;>Users</label><textarea class=lognText>{{logs}}</textarea></p>