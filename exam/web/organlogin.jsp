<%-- 
    Document   : organlogin
    Created on : Apr 17, 2016, 11:22:19 AM
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
  background-color: brown;
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
  background-color: crimson;
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
        
      <div  id="ht" style="background-color: white; background-size: 100% 100%;  margin:0; background-repeat: no-repeat; background-position: center" >
          <br><br><br><br><br>
            
      <button class="btn" style="vertical-align:middle; position: absolute; top: 250px; left: 300px"><span>Create Exam </span></button>      
      
      <button class="btn" style="vertical-align:middle; position: absolute; top: 250px; left: 800px"><span>Update Profile </span></button> 
      
      <button class="btn" style="vertical-align:middle; position: absolute; top: 450px; left: 300px"><span>Update exam Details </span></button> 
      
      <button class="btn" style="vertical-align:middle; position: absolute; top: 450px; left: 800px"><span>Declare Results</span></button>  
        </div>
        <div >
         <!-- Carousel begining -->
  <br>
  <div ng-controller="myCtrl">
      
     
  </div>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="background-size: 100% 100%;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" style="background-size: 100% 100%;">
      
        <!-- Carousel first Image --> 
      
      <div id="img1" class="item active" style="background-image:url(Online-Examination1.jpg); padding: 200px; margin:0; background-repeat: no-repeat; background-position: center; background-size: 100% 100%;">
    
      </div>

      
      
        <!-- Carousel second Image --><div id="img2" class="item" style=" background-image:url(Online-Exam.jpg);background-size: 100% 100%; padding: 200px; margin:0; background-repeat: no-repeat; background-position: center" >
        
      </div>
       <!-- Carousel third Image -->  <div id="img3" class="item" style=" background-image:url(Desktop_1.jpg);background-size: 100% 100%; padding: 200px; margin:0; background-repeat: no-repeat; background-position: center" >
        
      </div>
        
        <script>
          document.getElementById("img2").style.padding=screen.width/6+"px";
          //  document.getElementById("hn").style.height=screen.height/2+"px";
            document.getElementById("img1").style.padding=screen.width/6+"px";
              document.getElementById("img3").style.padding=screen.width/6+"px";
           // document.getElementById("ht").style.height=screen.height/2+"px";*/
            
        </script>

    </div>

    <!-- Left and right controls -->
    
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    
  </div>
  
</div>
        
        
          <div ng-controller="myCtrl">
              
      <!--  <div   id="ht" style="background-image:url(wood.jpg);width:{{width*100}}px;height:{{height*100}}px; background-size: 100% 100%;  margin:0; background-repeat: no-repeat; background-position: center" > -->
        
           <!-- <img src="online.jpg" alt="Online" style=" margin-left: 30px; margin-top: 10px; width:400px;height:120px;"> -->
            
            <button class="button" style="position:absolute; top: 20px; right: 435px">FAQ</button>
            
            <button class="button" style="position:absolute; top: 20px; right: 525px">Home</button>
            
            <button class="button" style="position:absolute; top: 20px; right: 305px">About Us</button>
            
            <button class="button" style="position:absolute; top: 20px; right: 190px">LogOut</button>
            
            <div class="dropdown" style="position: absolute; top: 25px; right: 50px">
  <img src="login.png" alt="Trolltunga Norway" width="100" height="50">
  <div class="dropdown-content" >
      <img src="login.png" alt="Trolltunga Norway" width="170" height="140">
    <div class="desc">Honey Jain</div>
  </div>
</div>
            <form action="createexam .jsp" method="post">
      <button class="btn" style="vertical-align:middle; position: absolute; top: 250px; left: 300px"><span>Organize Exam </span></button>      
            </form>
      <button class="btn" style="vertical-align:middle; position: absolute; top: 250px; left: 800px"><span>Update Profile </span></button> 
      
      <button class="btn" style="vertical-align:middle; position: absolute; top: 450px; left: 300px"><span>Update Exam Details</span></button> 
      
      <div class="container">
          
      <button class="btn" data-toggle="modal" data-target="#myModal" style="vertical-align:middle; position: absolute; top: 450px; left: 800px"><span>Declare Results</span></button> 
      
       <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><center>Exam</center></h4>
        </div>
        <div class="modal-body">
          <p>Select Exam</p>
          <select>
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
        </div>
        <div class="modal-footer">
          <button type="button" class="button" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
      
      </div>
      
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
