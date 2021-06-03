% rebase('layout.tpl', title='Home Page')
<form method="post" action="" class="form">
%with open ("Comments.txt", encoding="utf-8") as file:
    %text = file.read()

<style>

    .center {
        position: absolute;
        top: 5%;
        left: 25%;
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


    .textarea1 {
        width: 400px;
        max-width: 460px;
        min-width: 460px;
        line-height: 150%;
        resize: none;
    }

    .textarea2 {
        width: 400px;
        max-width: 460px;
        min-width: 460px;
        line-height: 150%;
        resize: none;
        text-align: center
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

<style>
    .block-left{
        width:50%;
        height:800px;
        overflow:auto;
        float:left;
        }
    .block-right{
        width:50%;
        height:800px;
        overflow:auto;
        }
</style>

<style>
 .con {   width: 75%;
  border: 2px solid #ccc;
  background-color: #eee;
  border-radius: 5px;
  padding: 16px; 
  margin: 16px auto;
 }
</style>

<body class =center>
    <div  class=block-left id=left>
     <p>
         <label for="lastname"><span class="formTextRed">*</span> Surname:</label>
         <input type="text" name="lastname" id="lastname" />
     </p>

     <p>
         <label for="firstname"><span class="formTextRed">*</span> Name:</label>
         <input type="text" name="firstname" id="firstname" />
     </p>

     <p>
         <label for="email"><span class="formTextRed">*</span> Email:</label>
         <input type="text" name="email" id="email" />
     </p>

     <p>
         <label for="gender">Gender:</label>
         <select name="gender" id="gender">
         <option value="Male">Male</option>
         <option value="Female">Female</option>
         </select>
     </p>

     <p>
         <label for="country">Country:</label>
         <select name="country" id="country">
         <option value="Russia">Russia</option>
         <option value="America">America</option>
         <option value="Australia">Australia</option>
         <option value="India">India</option>
         <option value="China">China</option>
         </select>
     </p>

     <p>
        <label for="Date"><span class="Date">*</span> Select Date:</label>
        <input name="Date" type="date" name="calendar">
     </p>

     <p>
         <label for="comment"><span class="formTextRed">*</span> Comment:</label>
         <textarea class=textarea1 rows="10" name="comment" id="comment"></textarea>
     </p>

     <p class="submit">
         <input type="submit" value="Send" />
     </p>
    </div>

    <div class=block-right>
     <p>
      <textarea class=textarea2 id="text" name="text" rows=30 readonly>{{text}} </textarea>
     </p>
    </div>
</body>
 </form>
