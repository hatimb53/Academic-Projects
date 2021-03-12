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
    top: 800px;
    right: 265px;
  display: inline-block;
  width: 150px;
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

   .btun {
  display: inline-block;
  padding: 15px 25px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: darkslateblue;
  border: none;
  border-radius: 0;
  box-shadow: 0 9px #999;
}

.btun:hover {background-color: #3e8e41}

.btun:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
      
.form-group.required .control-label:after{
    content:"*";
    color:red;
}
</style>
   <%@ page import="java.io.PrintWriter" %>
   <%@ page import="java.sql.Connection" %>
   <%@ page import="java.sql.DriverManager" %>
   <%@ page import="java.sql.ResultSet" %>
   <%@ page import="java.sql.Statement" %>
   <%@ page import="java.sql.ResultSetMetaData" %>
 
    <form action="login.jsp">
            <button class="btun" style="position:absolute; top: 20px; right: 435px">Home</button>
           </form>
            <button class="btun" style="position:absolute; top: 20px; right: 538px">FAQ</button>
             <form action="about.jsp" method="post">
            <button class="btun" style="position:absolute; top: 20px; right: 305px">About Us</button>
             </form>
            <form action="logout.jsp" method="post">
            <button type="submit" name="logout"  class="btun" style="position:absolute; top: 20px; right: 190px">LogOut</button>
            </form
    <%
       //out.println(session.getAttribute("User_Id"));
        if(session.getAttribute("User_Id")!=null)
        {
        
            /* TODO output your page here. You may use following sample code. */
         
          //  out.print(request.getParameter("Name"));
            /* TODO output your page here. You may use following sample code. */
          if(request.getParameter("bt")!=null)
          {
              out.println("SDfg");
          
     String url = "jdbc:mysql://localhost:3306/candidate";
        String user = "root";
        String password = "hatim";
        try
        {
 Class.forName("com.mysql.jdbc.Driver");
// File f=new File("D:/database.png");
  
 Connection conn = DriverManager.getConnection(url, user, password);
  Statement stmt=null;
   stmt = conn.createStatement();
   ResultSet rs = stmt.executeQuery("SELECT * FROM candidate_Detail");
  ResultSetMetaData metaData = rs.getMetaData();
   
   
    int count = metaData.getColumnCount(); 
      for(int i=1;i<=9;i++)
      {session.setAttribute(metaData.getColumnLabel(i),request.getParameter(metaData.getColumnLabel(i)));
         // out.println(" "+request.getParameter(metaData.getColumnLabel(i))+" "+session.getAttribute("User_Id")+" "+metaData.getColumnLabel(i));
   String sql = "UPDATE candidate_Detail " +
                   "SET "+metaData.getColumnLabel(i)+"='"+request.getParameter(metaData.getColumnLabel(i))+"' WHERE User_Id='"+session.getAttribute("User_Id")+"'";
  
      stmt.executeUpdate(sql);
      }
      String sql = "UPDATE candidate_Detail " +
                   "SET "+metaData.getColumnLabel(10)+"="+request.getParameter(metaData.getColumnLabel(10))+" WHERE User_Id='"+session.getAttribute("User_Id")+"'";
  
      stmt.executeUpdate(sql);
       sql = "UPDATE candidate_Detail " +
                   "SET "+metaData.getColumnLabel(11)+"="+request.getParameter(metaData.getColumnLabel(11))+" WHERE User_Id='"+session.getAttribute("User_Id")+"'";
  
      stmt.executeUpdate(sql);
//  InputStream in=new FileInputStream(f);

        }catch(Exception e)
        {
            out.println(e);
        }
          }
          else{
    
%>
    <body>
     
        <div style="background-image:url(keyboard.jpg);background-size: 100% 100%">
        <div class="container">
             <form action="updateCandi.jsp" method="post">
                 <form role="form" style="color:royalblue; font-size: 20px" >
                 
  
      <div style=" font-family:sans-serif; padding: 30px;text-align: center;font-size: 50px"
           <br> <h1 style="font-family:sans-serif; color:white"><b><center>Update</center><br></b></h1>
      </div>
    
          
   <table class="table" border="0" width="400" >
   
    <tbody>
      <tr>
        <td> <div class="form-group">
      <label style="color:white" for="usr">First Name:</label>
      <input type="text" class="form-control" id="Name" name="Name" value="<%= session.getAttribute("Name")%>" style="width: 400px" placeholder="Enter first name">
    </div>
      </td>
        <td> <div class="form-group">
      <label style="color:white"  for="usr">Last Name:</label>
      <input type="text" class="form-control" id="Last_name" name="Last_Name" value="<%= session.getAttribute("Last_Name")%>" style="width: 400px" placeholder="Enter last name">
    </div>
      </td>
       
      </tr>
      <tr>
          <td> <div class="form-group">
      <label style="color:white" for="usr">E-Mail:</label>
      <input type="text" class="form-control" id="Email_Id" name="Email_Id" value="<%= session.getAttribute("Email_Id")%>"style="width: 400px" placeholder="Enter e-mail">
    </div>
      </td>
        <td> <div class="form-group">
      <label style="color:white" for="usr">Address:</label>
      <input type="text" class="form-control" id="Address" name="Address" value="<%= session.getAttribute("Address")%>"style="width: 400px" placeholder="Enter address">
    </div>
      
      </td>
       
      </tr>
      <tr>
        <td> <div class="form-group">
      <label style="color:white"  for="usr">Phone No.:</label>
      <input type="text" class="form-control" id="Mob_No" name="Mob_No" value="<%= session.getAttribute("Mob_No")%>"style="width: 400px" placeholder="Enter phone no.">
    </div>
      </td>
        <td>  <div class="form-group">
      <label style="color:white"  for="usr">Institute Name:</label>
      <input type="text" class="form-control" id="Inst_Name" name="Inst_Name" value="<%= session.getAttribute("Inst_Name")%>"style="width: 400px" placeholder="Enter institute name (if any)">
    </div>
      </td>
      
      </tr>
      <tr>
        <td>   <div class="form-group">
      <label style="color:white"  for="usr">Qualification:</label>
      <input type="text" class="form-control" id="qual" style="width: 400px" value placeholder="Enter qualification">
    </div>
      
      </td>
        <td>  
      </td>
      
      </tr>
      <tr>
           <td> <div class="form-group">
      <label style="color:white"  for="usr">User-Id:</label>
      <input type="text" class="form-control" id="User_Id" name="User_Id" value="<%= session.getAttribute("User_Id")%>" style="width: 400px" placeholder="Enter user-id">
    </div>
      </td>
          
        <td>  <div class="form-group">
      <label style="color:white"  for="pwd">Password:</label>
      <input type="password" class="form-control" id="Password" name="Password" value="<%= session.getAttribute("Password")%>" style="width: 400px" placeholder="Enter password"><br>
    </div>
      </td>
       
      
      </tr>
      
    </tbody>
  </table>
          <center>   <input type="submit" class="button" style="font-family: sans-serif; position: absolute; top: 610px; right: 700px" value="Update">     </center>>
  </form>
             </form>  
</div>
        </div>
    <% }
          
        }%>
    </body>
    
    
</html>
