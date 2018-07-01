<%-- 
    Document   : webcam
    Created on : Apr 10, 2016, 1:34:46 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script src="angular.min.js"></script>
          <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    </head>
    <body ng-app="my"  ng-controller="ctrl" >
       
                <script>
            
            
              var ap=angular.module("my",[]);
            ap.controller("ctrl",function($scope){
               $scope.width=screen.width/100;
               $scope.height=screen.height/100;
                 
            });
            
        </script>
        
           <div style="background-image: url(face.jpg); background-size: 100% 100% ;width:{{width*100}}px; height:{{height*84}}px; position: absolute;">
               <script>
                 /*  var name=<%= request.getParameter("Name")%> ;
            document.getElementById("jk").innerHTML=name;*/
               </script>
             
               <h1 style="position:absolute ;top:700px;left:500px; " id="jk"></h1>
               <canvas id="myCanvas"  style="background-image: url(face.jpg); left: {{width*25}}px; top:{{height*15}}px; background-size: 100% 100% ;width:{{width*50}}px; height:{{height*65}}px; position: absolute;">
              </canvas>
                <button type="button" onclick="capture()" class="btn btn-primary" style="position: absolute; top: {{height*40}}px; left: {{width*7}}px; "><center>Capture</center></button>
            <button type="button" onclick="submit()" class="btn btn-primary" style="position: absolute; top: {{height*40}}px; right: {{width*7}}px; "><center>Submit</center></button>
             
            <script>
                function subm()
                {
                    
                }
            </script>
            
            <button type="button" onclick="retake()" class="btn btn-primary" style="position: absolute; top: {{height*5}}px; right: {{width*47}}px; "><center>Retake</center></button>    
            <video ng-hide="true"  autoplay="true"  id="videoElement"  width="0" height="0">
               </video>
        </div>
       
       
        <script>
           
      var video = document.querySelector("#videoElement");
  var c=document.getElementById("myCanvas");
         var ctx=c.getContext("2d");
        
     
navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia || navigator.oGetUserMedia;
 
if (navigator.getUserMedia) {       
    navigator.getUserMedia({video: true}, handleVideo, videoError);
}
      
function handleVideo(stream) {
    video.src = window.URL.createObjectURL(stream);

}
 
function videoError(e) {
    // do something
}
var imag;
var check=false;
        
timer=setInterval(function(){
   
      if(check===false)
       {          document.getElementById("jk").innerHTML=name;
        ctx.drawImage(video,0,0,screen.width*0.26,screen.height*0.23);
         imag=c.toDataURL();
  /*   var img=new Image();
  $.ajax({
                       type:'POST',
                       data:{fname:image},
                       url:'ajax',
                    //   dataType: "xml",

                       success: function(result){
                       // $('#kl').html(result);
                        img.src=result.toString();
                    //   
                         
        var c=document.getElementById("myCanvas");
         var ctx=c.getContext("2d");
        
        
        ctx.drawImage(img,0,0,500,420);
       
                       }
                             
                   
               });
      
           });*/
          }
       
},10);
      
      

  function capture()
  {
      check=true;
      ctx.drawImage(video,0,0,screen.width*0.26,screen.height*0.23);
      imag=c.toDataURL();
    
 
       }
  
function retake()
{
    check=false;
}
    var hj;
 function submit()
 {   
  
       
       
   $.ajax({
     
                        url:'Store_Candi',
                    //   dataType: "xml",
                        type:'POST',
                       data:{Name:"<%=request.getParameter("Name")%>",Last_Name:"<%=request.getParameter("Last_Name")%>",
                            User_Id:"<%=request.getParameter("User_Id")%>",Password:"<%=request.getParameter("Password")%>",
                            Address:"<%=request.getParameter("Address")%>",Mob_No:"<%=request.getParameter("Mob_No")%>",
                            Email_Id:"<%=request.getParameter("Email_Id")%>",Inst_Name:"<%=request.getParameter("Name")%>",
                            Image:imag},
                       success: function(result){
                               alert(result);
                                   window.open("indextest.jsp");
                              
                                 
    }
    
                             
                   
               });
               }
      

               

        </script>
    </body>
</html>
