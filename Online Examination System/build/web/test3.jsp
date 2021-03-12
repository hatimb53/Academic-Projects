<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <% out.println(session.getMaxInactiveInterval()); %>
<form id="my" action="test2.jsp" method="post"></form>
         <script>
             var dat=new Date();
             var ts=dat.getTime();
             timer=setInterval(function(){
                 
               var d=new Date();
               tc=Number(d.getTime());
               var y=Math.floor(Number((tc-ts)/1000));
               document.getElementById("jk").innerHTML=y;
                if(y==10){
                  my.submit();
                }
                
             },10);
             </script>
</head>

<body>
    <h1 id="jk"></h1>
 helloworld
</body>
</html>
