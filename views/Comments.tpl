% rebase('layout.tpl', title='Home Page')
<form method="post" action="/Comments" class="form">

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
         <label for="middlename">Patronymic:</label>
         <input type="text" name="middlename" id="middlename" />
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
         <label for="comment"><span class="formTextRed">*</span> Comment:</label>
         <textarea rows="10" name="comment" id="comment"></textarea>
     </p>

    

     <p class="submit">
         <input type="submit" value="Send" />
     </p>
    </div>

    <div class=block-right>
     <div class=con>
         %with open("data1.txt",encoding="utf-8") as file:
            %int_number = file.readline(15)
         <img src="static\image\avatar-female.png" alt="avatar">
         <p>Country: Russia</p>
         <p><span>Maria Belova</span></p>

         <p>{{int_number}}</p>
     </div>

     <div class=con>
         <img src="static\image\avatar-male.png" alt="avatar">
         <p>Country: Russia</p>
         <p><span>Alexey Frolov</span></p> 
         <p>Every day I go to read articles, I like it very much.</p>
     </div>
    </div>
</body>
 </form>
