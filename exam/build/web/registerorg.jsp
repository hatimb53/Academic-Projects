<%-- 
    Document   : registerorg
    Created on : Mar 26, 2016, 10:53:00 AM
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
    </head>
    
    
    <body>
      <div style="background-image:url(reg.jpg);background-size: 100% 100%;height:670px" >
        <div class="container">
            <h2 style="color:white;"><center><b>Register</b></center></h2>
            <form role="form"  enctype="multipart/form-data" action="Store_Org" method="POST">
    <div class="form-group">
      <label style="color:white;" for="email">Organization Name<font color="red">*</font></label>
      <input type="text" class="form-control" required id="org" name="OrgName" placeholder="Enter organization name">
    </div>
      
      <div class="form-group">
      <label style="color:white;" for="email">E-Mail<font color="red">*</font></label>
      <input type="email" class="form-control" required id="email" name="Email_Id" placeholder="Enter email">
    </div>
      
      <div class="form-group">
      <label style="color:white;" for="text">Phone No.<font color="red">*</font></label>
      <input type="number"  class="form-control" title="enter 10 digit number" name="Phone_No" required id="email" placeholder="Enter phone no.">
    </div>
      
      <div class="form-group">
      <label style="color:white;" for="text">Address<font color="red">*</font></label>
      <input type="text" class="form-control" required name="Address" placeholder="Enter address">
    </div>
                
      <div class="form-group">
      <label for="text">UserId<font color="red">*</font></label>
      <input type="text" class="form-control" required id="email" name="UserId" placeholder="Enter address">
    </div>
      
      
    <div class="form-group">
      <label style="color:white;" for="pwd">Password<font color="red">*</font></label>
      <input type="password" name="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"class="form-control" required id="pwd" placeholder="Enter password(minimum 6 characters)">
    </div>
  <form action="upload" method="post" enctype="multipart/form-data">
      <div class="form-group">
      <label style="color:white;" for="pwd">Browse Image<font color="red">*</font></label>
      <input type="file" name="file" class="form-control" id="File">
    </div>
      
      <div class="container">
      
      <input type="submit" style="position:absolute;left:600px;top:600px;height:60px;width:150px;font-size:30px;" required class="btn btn-success" onclick="form.submit()" data-target="#myModal" style="background-color: blue; color: white;" value="submit">
      
      <div  class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Registration Successful</h4>
        </div>
        <div class="modal-body">
          
            <img src="success.png" style="width: 100px; height: 100px"> 
            
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

      </div>
  </form>
     
</div>
        <script>
          function formValidate()
          {
          
             // alert( document.getElementById("myModal").toggle());
              return true;
          }
        </script>
      </div>
    </body>
    
    
</html>

