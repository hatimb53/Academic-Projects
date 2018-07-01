<%-- 
    Document   : logincandi
    Created on : Mar 25, 2016, 6:46:23 PM
    Author     : sanjay jain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="angular.min.js"></script>
    </head>
    
    <style>
.button {
    position: absolute;
    top: 630px;
    right: 265px;
  display: inline-block;
  width: 100px;
  padding: 20px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: black;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.form-group.required .control-label:after{
    content:"*";
    color:red;
}
    </style>   
    <body>
        <div style="background-image:url(reg.jpg)">
        <div class="container">
            <form id="form" action="webcam.jsp" method="post" onsubmit="return formValid();">
                 <form role="form" style="color:royalblue; font-size: 20px" >
              
  
      <div  style=" font-family:sans-serif; padding: 30px;text-align: center;font-size: 50px"
           <br> <h1 style="font-family:sans-serif; color:white"><b><center>Register</center><br></b></h1>
      </div>
    
          
   <table style="color:white;"class="table" border="0" width="400" >
   
    <tbody>
      <tr>
        <td> <div class="form-group">
                <label for="usr">First Name<font color="red">*</font></label>  
      <input type="text" class="form-control" required id="Name" name="Name" style="width: 400px" placeholder="Enter first name">
    
    </div>
      </td>
        <td> <div class="form-group">
      <label for="usr">Last Name<font color="red">*</font></label> 
      <input type="text" class="form-control" required id="Last_name" name="Last_Name"  style="width: 400px" placeholder="Enter last name">
    
    </div>
      </td>
       
      </tr>
      <tr>
          <td> <div class="form-group">
      <label for="usr">E-Mail<font color="red">*</font></label> 
      <input type="email" class="form-control" required id="Email_Id" name="Email_Id" style="width: 400px" placeholder="Enter e-mail">
    
              </div>
      </td>
        <td> <div class="form-group">
      <label for="usr">Address<font color="red">*</font></label> 
      <input type="text" class="form-control" required id="Address" name="Address" style="width: 400px" placeholder="Enter address">
    
            </div>
      
      </td>
       
      </tr>
      <tr>
        <td> <div class="form-group">
      <label for="usr">Phone No.*</label> 
      <input type="text" id="phone" name="Mob_no" class="form-control"  style="width: 400px" placeholder="Enter phone no.">
      
            </div>
      </td>
        <td>  <div class="form-group">
      <label for="usr">Institute Name<font color="red">*</font></label> 
      <input type="text" class="form-control" id="Inst_Name" name="Inst_Name" style="width: 400px" placeholder="Enter institute name (if any)">
      
            </div>
      </td>
      
      </tr>
     
      <tr>
           <td> <div class="form-group">
      <label for="usr">User-Id<font color="red">*</font></label> 
      <input type="text" class="form-control" required id="User_Id" name="User_Id" style="width: 400px" placeholder="Enter user-id">
    
               </div>
      </td>
          
        <td>  <div class="form-group">
      <label for="pwd">Password<font color="red">*</font></label> 
      <input type="password" class="form-control" id="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" name="Password" style="width: 400px" placeholder="Enter password"><br>
      
            </div>
      </td>
       
      
      </tr>
      
    </tbody>
  </table>
                     <br>
                     <br>
       <input type="submit"   class="button" style="font-family: sans-serif; position: absolute; top: 530px; right: 720px" value="Next"> 
  </form>
             </form>  
</div>
        
        </div>
    </body>
    
    <script>
        function formValid(){
             var phone=document.getElementById("phone").value;
           var mob=document.getElementById("phone").value.length;
          
           if(mob!=10){
               
               alert("Mobile no. should be 10 digit number");
               
               return false;
           }
           return true;
        }
            </script>
</html>
