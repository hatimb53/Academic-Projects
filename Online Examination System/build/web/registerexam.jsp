<%-- 
    Document   : registerexam
    Created on : Jun 3, 2016, 10:45:36 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <style>
.button {
    position: absolute;
    top: 630px;
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
.form-group.required .control-label:after{
    content:"*";
    color:red;
}
p {
    border-style: ridge;
    border-bottom-color: green;
    border-bottom-width: 600px;
}
#rcorners1 {
    border-radius: 25px;
    background: #73AD21;
    padding: 20px; 
    position:absolute;
    top:150px;
    left:400px;
    overflow:auto;
    width: 500px;
    height: 300px;    
}

    </style> 
     <%@ page import="java.io.PrintWriter" %>
   <%@ page import="java.sql.Connection" %>
   <%@ page import="java.sql.DriverManager" %>
   <%@ page import="java.sql.ResultSet" %>
   <%@ page import="java.sql.Statement" %>
   <%@ page import="java.sql.ResultSetMetaData" %>
    <%
          try{
            String url = "jdbc:mysql://localhost:3306/organizer";
           
        String user = "root";
        String password = "hatim";
      
        Class.forName("com.mysql.jdbc.Driver");
         Statement statement=null;
         Connection conn = DriverManager.getConnection(url, user, password);
         statement = conn.createStatement();

         
           ResultSet rs = statement.executeQuery("SELECT * FROM examdetail");
           session.setAttribute("Exam_Name",request.getParameter("exam"));
           while(rs.next()){
         //Retrieve by column name
         String ur=rs.getString("Name");
        
       
if(ur.equals(request.getParameter("exam"))){
   session.setAttribute("detail",rs.getString("detail"));
   
   break;
}
       }
          }catch(Exception e)
           {
               
           }
%>
    <body>
        <div> <%= request.getParameter("exam")%> </div>
        <div id="rcorners1"><%= session.getAttribute("detail")%></div>
        <form action="examReg" method="post" >
          <input type="submit" class="button" style="font-family: sans-serif; position: absolute; top:550px; right: 660px" value="Register"> 
        </form>
            </body>
</html>
