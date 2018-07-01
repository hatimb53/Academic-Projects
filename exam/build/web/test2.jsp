<%-- 
    Document   : test2
    Created on : Apr 16, 2016, 12:59:35 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="angular.min.js"></script>
    <form id="my" action="test3.jsp" method="post">
    </form>
    <script>
       
 
</script>
</head>
<body >
        <div id="full" style="width: 100px;height: 100px;background-color:green;"></div>
        <table id="opt" onclick="hj()"style="background-color: grey;width: 500px;height:500px;"></table>
       
    </body>
    <script>

     function getEventTarget(e) {
    e = e || window.event;
    return e.target || e.srcElement; 
    }

    document.getElementById('opt').onclick=function(event){
         alert(getEventTarget(event).id);
     };
    </script>
</html>
