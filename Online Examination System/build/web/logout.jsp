<%-- 
    Document   : logout.jsp
    Created on : Jun 8, 2016, 11:06:04 PM
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
        <%
       //HTTP 1.0 backward compatibility

            session.invalidate();
            session=request.getSession();
            
          
            response.sendRedirect("index.jsp");
            %>
            <form action="index.jsp">
                  <button type="submit">home</button>
            </form>
    </body>
</html>
