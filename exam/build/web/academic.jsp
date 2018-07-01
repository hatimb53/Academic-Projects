<%-- 
    Document   : academic
    Created on : Jun 4, 2016, 10:37:27 AM
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
    top: 100px;
    left: 80px;
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
    <body>
        <div style="background-image:url(dark.jpg); background-size: 100% 100%;position: absolute; width: 1380px; height: 700px">
        <h2 style="color:white;"><center>Previous Academics</center></h2>

<table border="4">
  <tr>
    <th>S.No.</th>
    <th>Exam Name</th>
    <th>Marks Scored</th>
    <th>Date Of Exam</th>
  </tr>
  <tr>
    <td>Peter</td>
    <td>Griffin</td>
    <td>$100</td>
    <td>20/09/2016</td>
  </tr>
  <tr>
    <td>Lois</td>
    <td>Griffin</td>
    <td>$150</td>
    <td>20/09/2016</td>
  </tr>
  <tr>
    <td>Joe</td>
    <td>Swanson</td>
    <td>$300</td>
    <td>20/09/2016</td>
  </tr>
  <tr>
    <td>Cleveland</td>
    <td>Brown</td>
    <td>$250</td>
    <td>20/09/2016</td>
</tr>
</table>
        </div>
    </body>
</html>
