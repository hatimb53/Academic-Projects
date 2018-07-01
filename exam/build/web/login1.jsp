<%-- 
    Document   : login
    Created on : Mar 26, 2016, 5:41:13 PM
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
        <script src="setParameter.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  
  
   <%@ page import="java.io.PrintWriter" %>
   <%@ page import="java.sql.Connection" %>
   <%@ page import="java.sql.DriverManager" %>
   <%@ page import="java.sql.ResultSet" %>
   <%@ page import="java.sql.Statement" %>
   <%@ page import="java.sql.ResultSetMetaData" %>
   <META http-equiv="refresh" content="<%= session.getMaxInactiveInterval()%>;" url="index.jsp" />
         <%//out.println(session.getMaxInactiveInterval()); %>
  
   <%
  // if(session.getAttribute("User_Id")!=null)
   {
        boolean result=false;
       //session.setMaxInactiveInterval(6);
   
           try{
            String url = "jdbc:mysql://localhost:3306/candidate";
           
        String user = "root";
        String password = "hatim";
        String usr=request.getParameter("User_Id");
        String pwd=request.getParameter("Password");
       // out.println(usr+" "+pwd);
         //out.println(usr+" "+pwd);
        Class.forName("com.mysql.jdbc.Driver");
         Statement statement=null;
         Connection conn = DriverManager.getConnection(url, user, password);
         statement = conn.createStatement();

         
           ResultSet rs = statement.executeQuery("SELECT * FROM candidate_detail");
           while(rs.next()){
         //Retrieve by column name
         String ur=rs.getString("User_Id");
         String pw=rs.getString("Password");
        ResultSetMetaData metaData=null;
if(ur.equals(usr)&&pw.equals(pwd)){
    metaData = rs.getMetaData();
    int count = metaData.getColumnCount(); 
  // out.println(count);

 for (int i = 1; i <= 9; i++){
        session.setAttribute(metaData.getColumnLabel(i),rs.getString(metaData.getColumnLabel(i))); 
        //out.println(session.getAttribute(metaData.getColumnLabel(i)));
 }
   session.setAttribute(metaData.getColumnLabel(10),rs.getInt(metaData.getColumnLabel(10))); 
   session.setAttribute(metaData.getColumnLabel(11),rs.getInt(metaData.getColumnLabel(11)));
    session.setAttribute(metaData.getColumnLabel(12),rs.getBinaryStream(metaData.getColumnLabel(12)));
  
  
    result=true;
      break;
}
     

 /**/
//Display values
         
      }

         //  out.println("esf"+session.getAttribute("User_Id"));
           
        
      
 
            }
            catch(Exception e)
            {
                out.println(e);
            }
  //boolean result=true;
      
//request.getRequestDispatcher("login" + ".jsp").forward(request, response);
%>      
      
      
      
  <style> 
  
   .button {
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

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
      

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: lightblue;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown:hover .dropdown-content {
    display: block;
}

.desc {
    padding: 15px;
    text-align: center;
}

.btn {
  display: inline-block;
  border-radius: 4px;
  background-color:royalblue;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.btn span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.btn span:after {
  content: '';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.btn:hover span {
  padding-right: 25px;
  color: black;
}

.btn:hover span:after {
  opacity: 1;
  right: 0;
}

  </style>
    </head>
    <body ng-app="myApp"> 
        
   
        <!-- Carousel second Image --><div id="img2"  style=" background-image:url(dark.jpg);background-size: 100% 100%; padding: 0px;height: 700px;  margin:0; background-repeat: no-repeat; background-position: center" >
        
      </div>
    
        <script>
          document.getElementById("img2").style.padding=screen.width/6+"px";
          //  document.getElementById("hn").style.height=screen.height/2+"px";
            document.getElementById("img1").style.padding=screen.width/6+"px";
              document.getElementById("img3").style.padding=screen.width/6+"px";
           // document.getElementById("ht").style.height=screen.height/2+"px";*/
            
        </script>

 

    <!-- Left and right controls -->
    
    
  

        
        
          <div ng-controller="myCtrl">
              
      <!--  <div   id="ht" style="background-image:url(wood.jpg);width:{{width*100}}px;height:{{height*100}}px; background-size: 100% 100%;  margin:0; background-repeat: no-repeat; background-position: center" > -->
        
           <!-- <img src="online.jpg" alt="Online" style=" margin-left: 30px; margin-top: 10px; width:400px;height:120px;"> -->
            
            <button class="button" style="position:absolute; top: 20px; right: 435px">Help</button>
            
            <button class="button" style="position:absolute; top: 20px; right: 525px">FAQ</button>
            
            <button class="button" style="position:absolute; top: 20px; right: 305px">About Us</button>
          
            <form action="logout.jsp">
            <button id="logout" type="submit" class="button" style="position:absolute; top: 20px; right: 190px">LogOut</button>
            </form>
            <div class="dropdown" style="position: absolute; top: 25px; right: 50px">
  <img src="login.png" alt="Trolltunga Norway" width="100" height="50">
  <div class="dropdown-content" >
      <img src="login.png" alt="Trolltunga Norway" width="170" height="140">
    <div class="desc">Honey Jain</div>
  </div>
</div>
            <form action="examReg.jsp" method="post">
              
            <button class="btn" style="vertical-align:middle; position: absolute; top: 250px; left: 300px"><span>Exam Registration </span></button>   
            
            </form>
       <form action="updateCandi.jsp" method="post">
              
      <button class="btn" style="vertical-align:middle; position: absolute; top: 250px; left: 800px"><span>Update Profile </span></button> 
       </form>
      <button class="btn" style="vertical-align:middle; position: absolute; top: 450px; left: 300px"><span>Appear In Exam </span></button> 
      
      <button class="btn" style="vertical-align:middle; position: absolute; top: 450px; left: 800px"><span>Previous Academic</span></button> 
      
        </div>
              
        </div>
        
        <p id="ht"></p>
          
        <script>
            
var app=angular.module('myApp',[]);

app.controller('myCtrl',function($scope)
{
    $scope.height=screen.height/100;
    $scope.width=screen.width/100;
 });
            
            </script>
            
            <%}
   %>
            
    </body>
</html>
