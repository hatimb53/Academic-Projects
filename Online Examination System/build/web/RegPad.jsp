<%-- 
    Document   : RegPad
    Created on : Apr 16, 2016, 12:06:33 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% out.println(request.getParameter("exam")); %>
    </body>
</html>
