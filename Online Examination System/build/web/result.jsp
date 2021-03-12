<%-- 
    Document   : result
    Created on : Jun 4, 2016, 3:44:52 PM
    Author     : sanjay jain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <style>
    table {
    position: absolute;
    top: 350px;
    left: 220px;
    border: black;
    width: 70%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: white}
tr:nth-child(odd){background-color: cadetblue}
th {
    background-color: #4CAF50;
    color: white;
}

.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: brown;
  border: none;
  border-radius: 0;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
    </style>
    <body>
        <div style="background-image: url(wood.jpg);background-size: 100% 100%;position: absolute; width: 1330px; height: 600px"><h1 style="font-size: 30px; color: white"><center>Marks Scored</center></h1>
            
          <button class="button" style="position:absolute; top: 20px; right: 350px">FAQ</button>
            
            <button class="button" style="position:absolute; top: 20px; right: 440px">Home</button>
            
            <button class="button" style="position:absolute; top: 20px; right: 220px">About Us</button>
            
            <button class="button" style="position:absolute; top: 20px; right: 105px">LogOut</button>  
        <div style=" background-color: activeborder;width: 200px; height: 200px; border-radius: 300px;position: absolute; top: 100px; left: 570px"></div>
        
        
        <p style="color: inactiveborder;position: absolute; top: 280px; left: 580px; font-size: 30px">Exam Summary</p> 
        <table border="4">
  <tr>
    
  </tr>
  <tr>
      <td>No. of questions answered correctly</td>
    <td> <%  %> </td>
   
  </tr>
  <tr>
      <td>No. of questions attempted</td>
    <td> <%   %> </td>
   
  </tr>
  <tr>
      <td>Total no. of questions</td>
    <td> <%   %> </td>
   
  </tr>
        </table>
        </div>
    </body>
</html>
