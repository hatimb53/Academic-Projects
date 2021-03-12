<%-- 
    Document   : cam.jsp
    Created on : Mar 26, 2016, 12:09:37 PM
    Author     : sanjay jain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="angular.min.js"></script>
    </head>
    <body ng-app="my" ng-controller="ctrl">
        
 <%@ page import=" java.util.Base64" %>
      
         
         <%@ page import=" face.DetectFaceDemo" %>
         <%@ page import=" java.io.File" %>
         <%@ page import=" java.io.FileOutputStream" %>
          <%@ page import=" java.io.FileInputStream" %>
         <%@ page import=" java.io.IOException" %>
         <%@ page import=" java.io.PrintWriter" %>
         <p id="jk"></p>
        
        <div style="background-image:url(face.jpg); background-size: 100% 100% ;width:{{width*100}}px; height:{{height*100}}px; background-repeat: no-repeat; position: absolute;">
        <br>
        <h1 style="color: deepskyblue"><center>Adjust your <b>Face</b></center></h1>
        <canvas id="myCanvas" width="500" height="420" style="border:2px solid brown ; position: absolute; top: 100px; right: 410px; background-size: 100% 100%"></canvas>
        <video ng-hide="true"  autoplay="true"  id="videoElement"  width="0" height="0">
          
    </video>
        <script>
            
            
              var ap=angular.module("my",[]);
            ap.controller("ctrl",function($scope){
               $scope.width=screen.width/100;
               $scope.height=screen.height/100;
               document.getElementById("jk").innerHTML=screen.width+" "+screen.height;              
            });
        </script>
        
        <script>
             var video = document.querySelector("#videoElement");
  var c=document.getElementById("myCanvas");
         var ctx=c.getContext("2d");
         var app=angular.module("my",[]);
     
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


        
timer=setInterval(function(){
    if(check===false)
    {
       
        ctx.drawImage(video,0,0,500,420);
        var img=c.toDataURL();
      //& myCtrl($scope);
        /*
        $http.post('cam.jsp',{'img':img}).success(function(data,status){
            $scope.status=status;
            $scope.data=data;
            $scope.result=data;
        }   */
    }
},10);

       
var check=false;
  function capture()
  {
      check=true;
      ctx.drawImage(video,0,0,500,420);
      image=c.toDataURL();
    
      /*  $(document).ready(function(){
              
       //    document.getElementById("kl").innerHTML=image;    
    var img=new Image();
  $.ajax({
                       type:'POST',
                       data:{fname:image},
                       url:'ajax',
                    //   dataType: "xml",

                       success: function(result){
                       // $('#kl').html(result);
                        img.src=result.toString();
                    //   
                         
     
                       }
                             
                   
               });
      
           });*/
  }
  
function reset()
{
    check=false;
}
        
         

        </script>
        <div class="btn-group btn-group-xs">
            <button type="button" onclick="reset()" class="btn btn-primary" style="position: absolute; top: 530px; right: 680px;  height: 30px "><center>Retake</center></button>
            <button type="button" onclick="capture()" class="btn btn-primary" style="position: absolute; top: 530px; right: 620px;  height: 30px"><center>Capture</center></button>
            <button type="button" class="btn btn-primary" style="position: absolute; top: 530px; right: 580px;  height: 30px"><center>Save</center></button>
        </div>
        </div>
    </body>
</html>
 <%@ page import=" face.DetectFaceDemo" %>
<%@ page import="  java.sql.Blob" %>
<%@ page import=" java.awt.image.BufferedImage" %>

<%@ page import=" java.io.File" %>
<%@ page import=" java.io.FileInputStream" %>
<%@ page import="  java.io.FileOutputStream" %>
<%@ page import="  java.io.FileWriter" %>
<%@ page import=" java.io.InputStream" %>
<%@ page import="  java.sql.Connection" %>
<%@ page import="  java.sql.DriverManager" %>
<%@ page import="  java.sql.PreparedStatement" %>
<%@ page import=" java.sql.ResultSet" %>

<%/*
    String name=request.getParameter("name");
    String lname=request.getParameter("Last_name");
    String usr=request.getParameter("User_Id");
    String pwd=request.getParameter("Password");
    String addr=request.getParameter("Address");
    String mob=request.getParameter("Mob_No");
    String email=request.getParameter("Emai_Id");
    String inst=request.getParameter("Inst_Name");
    /*String qual=request.getParameter("name");
     String pincode=request.getParameter("name");
    String country=request.getParameter("name");
    String city=request.getParameter("name");
    String =request.getParameter("name");
    
    String name=request.getParameter("name");
    String name=request.getParameter("name");
    
     String url = "jdbc:mysql://localhost:3306/candidate";
        String user = "root";
        String password = "hatim";
 Class.forName("com.mysql.jdbc.Driver");
 File f=new File("D:/share/htm.png");
  InputStream in=new FileInputStream(f);
String sql = "INSERTED IN candidate_detail  " +
                "VALUES ("+name+", "+lname+", "+usr+", "+pwd+","+email+","+inst+","+addr+","+null+","+null+","+null+","+mob+","+in+")";

      Connection conn = DriverManager.getConnection(url, user, password);
   PreparedStatement statement=null; 
 statement = conn.prepareStatement(sql);
 int row = statement.executeUpdate();
*/
%>