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
    </head>
    <body ng-app="myApp">
          <div ng-controller="myCtrl">
        <div   id="ht" style="background-image:url(books.PNG);width:{{width*100}}px;height:{{height*100}}px; background-size: 100% 100%;  margin:0; background-repeat: no-repeat; background-position: center" >
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
    </body>
</html>
