<%-- 
    Document   : instruction
    Created on : Jun 4, 2016, 12:02:52 PM
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
    ul.b {
    list-style-type: square;
}
table {
    position: absolute;
    top: 100px;
    left: 50px;
    border: black;
    width: 90%;
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

    </style>
    
   <%@ page import="java.io.PrintWriter" %>
   <%@ page import="java.sql.Connection" %>
   <%@ page import="java.sql.DriverManager" %>
   <%@ page import="java.sql.ResultSet" %>
   <%@ page import="java.sql.Statement" %>
   <%@ page import="java.sql.ResultSetMetaData" %>
    <%
         int section=0;
        String que[]=null;
        String name[]=null;
        double marks=0;
        double negmarks=0;
        session.setAttribute("ExamName","hatim");
           try{
                     
            String url = "jdbc:mysql://localhost:3306/Organizer";
          
        String user = "root";
        String password = "hatim";
      
      
        Class.forName("com.mysql.jdbc.Driver");
         Statement statement=null;
         Connection conn = DriverManager.getConnection(url, user, password);
         statement = conn.createStatement();

         
           ResultSet rs = statement.executeQuery("SELECT count(distinct Section) FROM question where ExamName='"+session.getAttribute("ExamName")+"'");
           
        
           while(rs.next()){
         //Retrieve by column name
          
           // out.println(rs.getString(1));
         section=Integer.parseInt(rs.getString(1));
   
         //Display values
         
      }
            rs = statement.executeQuery("SELECT Section,count(Question) FROM question where ExamName='"+session.getAttribute("ExamName")+"' group by Section");
           
         que=new String[section];
        name=new String[section];
        int i=0;
           while(rs.next()){
             
               
         //Retrieve by column name
          //out.println("fzas");
           name[i]=rs.getString(1);
         //  out.println(name[i]);
         que[i++]=rs.getString(2);
   
         //Display values
         
      }
          rs = statement.executeQuery("SELECT marks,negmarks FROM examdetail where Name='"+session.getAttribute("ExamName")+"'");
           
        
           while(rs.next()){
         //Retrieve by column name
          
            
         marks=Double.parseDouble(rs.getString(1));
         negmarks=Double.parseDouble(rs.getString(2));
   
         //Display values
         
      }
            }
            catch(Exception e)
            {
                out.println(e);
            }
           
        %>
    <body>
        <div style="background-image:url(dark.jpg);background-size: 100% 100%;position: absolute; width: 1380px; height: 800px">
            <h1 style="color: white"><center>Instruction</center></h1>
        
        <div style="background-color: lightgray; position: absolute; width: 900px;  top: 80px;left: 200px">
            <p style="color: white; font-size: 20px">
                
                <ul class="b">
                    
               <li> The exam contains "<%= section%>" sections containing following questions below the symbol table
               
               <table style= "top:460px; left:46px; border:4;" style="background-color:black;" >
                   <tr>
                   <th> Section </th>
                   <th> No. of Question </th>
                   </tr>
                   <%
                   for(int i=0;i<section;i++){
                       %>
                       <tr>
                   <td>"<%=  name[i]%>" </td>
                    <td>"<%= que[i]%>" </td>
                       </tr>
                    <%
                     } %>
               </table>
               </li>
               <li> For every correct answer you will get "<%= marks%>" marks and for each wrong answer "<%= negmarks%>" will be deducted.</li>
               <li> The section block on the right contains the number of questions and can be moved from one question to another directly. </li>
               
            
                </ul>
          <!-- <div style="position:absolute; border-radius: 15px;top: 230px; width:80px;height:30px; left: 50px;background-color: cadetblue; text-align: center">Submit</div> -->
           <!--<div style="position:absolute; background-size: 100% 100%; width:70px; height:70px; top: 280px; left: 50px; background-image:url(next.png);"></div> -->
           <!--<div style="position:absolute; background-size: 100% 100%; width:70px; height:70px; top: 370px; left: 50px; background-image:url(prev.png);"></div> -->
           <!--<div id="markp" style="position:absolute; top:270px; left:550px; width:20px; border-radius: 15px; height: 20px; background-color:orange;"></div> -->
           <!--<div id="markr" style="position:absolute; top:330px; left:550px; width:20px; border-radius: 15px; height: 20px; background-color:yellow;"></div> -->
                      
               <table border="4">
  <tr>
    <th>Symbol</th>
    <th>Description</th>
  </tr>
  <tr>
      <td height="40"><div style="position:absolute; border-radius: 15px;top: 46px; width:80px;height:30px; left: 20px;background-color: cadetblue;padding:10px; text-align: center">Submit</div></td>
    <td>It will submit the answers to the exam an give the result</td>
   
  </tr>
  <tr>
      <td height="40"><div style="position:absolute; background-size: 100% 100%; width:50px; height:50px; top: 100px; left: 46px; background-image:url(next.png);"></div></td>
    <td>It will move to the next question</td>
   
  </tr>
  <tr>
    <td height="40"><div style="position:absolute; background-size: 100% 100%; width:50px; height:50px; top: 160px; left: 46px; background-image:url(prev.png);"></div></td>
    <td>It will move to the previous question</td>
     </tr>
  <tr>
    <td height="40"><div id="markp" style="position:absolute; top:240px; left:50px; width:20px; border-radius: 15px; height: 20px; background-color:orange;"></div></td>
    <td>Mark for review but option selected</td>
   </tr>
   <tr>
       <td height="40"><div id="markr" style="position:absolute; top:300px; left:46px; width:20px; border-radius: 15px; height: 20px; background-color:yellow;"></div></td>
       <td>Mark for review but option not selected</td>
   </tr>
</table>
           <form action="faceRecog.jsp">
         <input type="submit" class="button" style="border-radius: 25px;background-color: blueviolet; font-family: sans-serif; width:100px;height:50px;position: absolute; top: 600px; right: 410px" value="Next"> 
  </form>   
        </div>
        </div>
    </body>
</html>
