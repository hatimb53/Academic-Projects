<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="angular.min.js"></script>
  
  <% session.setAttribute("User_Id",null);
  session.invalidate();
  response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
     response.setHeader("Pragma", "no-cache");
     response.setDateHeader("Expires", 0);
  
  %>
        <style>
            
    .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
div.cities {
   
    background-color:grey;
    background-image: url("page.gif");
    background-size: 100% 100%;
    background-repeat: no-repeat;
    background-position: center;
    
    color:blue;
    padding:120px;
}	
div.cities1 {
    background-color:grey;
    background-image: url("books.PNG");
    background-size: 100% 100%;
   
    background-position: center; 
    margin: 0;
    color:black;
    
    
    padding:120px;
}	
div.cities2 {
    background-color:grey;
    background-image: url("page.gif");
    background-size: 100% 100%;
    background-repeat: no-repeat;
    background-position: center; 
    margin: 0;
    color:black;
    
    
    padding:120px;
}	
</style>
<script>
             var ap=angular.module("my",[]);
            ap.controller("ctrl",function($scope){
               $scope.width=screen.width/100;
               $scope.height=screen.height/100;
              
            });
        </script>
    </head>
    <body ng-app="my" ng-controller="ctrl" style="background-color: black;">
        


   
      <div style="top:0px;" >
         <!-- Carousel begining -->
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="background-size: 100% 100%;height:{{height*75}}px;  margin:0;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" style="background-size: 100% 100%; margin:0; ">
      
        <!-- Carousel first Image --> 
      
      <div id="img1" class="item active" style="background-image:url(Online-Examination1.jpg);height:{{height*75}}px; margin:0; background-repeat: no-repeat; background-position: center; background-size: 100% 100%;">
    
      </div>

      
      
        <!-- Carousel second Image --><div id="img2" class="item" style=" height:{{height*75}}px;background-image:url(Online-Exam.jpg);background-size: 100% 100%;  margin:0; background-repeat: no-repeat; background-position: center" >
        
      </div>
       <!-- Carousel third Image -->  <div id="img3" class="item" style="height:{{height*75}}px; background-image:url(Desktop_1.jpg);background-size: 100% 100%;  margin:0; background-repeat: no-repeat; background-position: center" >
        
      </div>
        
        
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
   
       <!--background image second division--> 
       
       <div  id="ht" style="background-image:url(img10.jpg); background-size: 100% 100%;top:{{height*75}}px;height:{{height*75}}px;  margin:0; background-repeat: no-repeat; background-position: center" >
            <div class="dropdown" style="width: 10px">
                
                
    <!--Login Button -->
    
    <button class="btn btn-primary dropdown-toggle" style="width: 250px;height: 50px;font-size: 25px; font-family:monospace; position:absolute;background-color:blueviolet;
    top: {{height*35}}px; left: {{width*15}}px;" type="button" data-toggle="dropdown">Login
    
        
   <!-- Dropdown button menu --> 
   
   <span class="caret"></span></button>
    <ul class="dropdown-menu" style="position:absolute; top: {{height*35+50}}px; left: {{width*15}}px; font-family:Comic Sans MS; width: 250px;height: 115px; font-size: 14px;  background-color: lightgray;">
        <li><a href="#" style="font-size: 20px;" class="btn btn-info btn-lg" data-toggle="modal" data-target="#cand"> Candidate</a></li>
      <li><a href="#" style="font-size: 20px;" class="btn btn-info btn-lg" data-toggle="modal" data-target="#organ">Organizer</a></li>
      <li><a href="#" style="font-size: 20px;" class="btn btn-info btn-lg" data-toggle="modal" data-target="#admin">Administrator</a></li>
    </ul>
    
    
                           <div class="modal fade" id="cand" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
          
          
        <div class="modal-header" style="background-color: dodgerblue;">
             
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style=" text-align: center;">Login</h4>
        </div>
         
             
          <form id="myForm" action="login1.jsp" method="post">
        <div class="modal-body">
 
   
            
            <div class="form-group" >
        
      <label for="usr" >UserID</label>
      <input type="text" class="form-control" id="usrCand" name="User_Id">
    </div>
        
    <div class="form-group" >
      <label for="pwd" >Password</label>
      <input type="password" class="form-control" id="pwdCand" name="Password">
    </div>
    
        </div>
           
               
        <div class="modal-footer">
          
            <button type="submit" onclick="myForm.submit();"  class="btn btn-default" style="background-color:dodgerblue; width: 70px;" data-dismiss="modal">Login</button>
      
            </div>
            
              
          </form>
           
         
              
        
      </div>
      
    </div>
  </div>
                   
    <div>
        <h1 id="kl"></h1>
    </div>
                                <div class="modal fade" id="organ" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color: dodgerblue;">
             
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style=" text-align: center;">Login</h4>
        </div>
          <form id="formOrg"  action="orgLog" method="post">
        <div class="modal-body">
            
    <div class="form-group" >
      <label for="usr" >UserID</label>
      <input type="text" class="form-control" id="usr" name="User_Id">
    </div>
    <div class="form-group" >
      <label for="pwd" >Password</label>
      <input type="password" class="form-control" id="pwd" name="Password">
    </div>
  
           
        </div>
        <div class="modal-footer">
          
          <button type="button"  onclick="formOrg.submit();" class="btn btn-default" style="background-color:dodgerblue; width: 70px;" data-dismiss="modal">Login</button>
      
        </div>
          </form>
      </div>
      
    </div>
  </div>
                   
                                <div class="modal fade" id="admin" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color: dodgerblue;">
             
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style=" text-align: center;">Login</h4>
        </div>
        <div class="modal-body">
            <form role="form">
    <div class="form-group" >
      <label for="usr" >UserID</label>
      <input type="text" class="form-control" id="usr">
    </div>
    <div class="form-group" >
      <label for="pwd" >Password</label>
      <input type="password" class="form-control" id="pwd">
    </div>
  </form>
           
        </div>
        <div class="modal-footer">
          
          <button type="button" class="btn btn-default" style="background-color:dodgerblue; width: 70px;" data-dismiss="modal">Login</button>
      
        </div>
      </div>
      
    </div>
  </div>
                   
               
    
    
    
    
  </div>
           
           <!-- Register button -->
           
               <div class="dropdown" style="width: 10px">
    <button class="btn btn-primary dropdown-toggle" style="width: 250px;height: 50px;font-size: 25px;font-family:monospace; position:relative; background-color:blueviolet;
   top: {{height*35}}px;left: {{width*60}}px;;" type="button" data-toggle="dropdown">Register
    <span class="caret"></span></button>
    <ul class="dropdown-menu" style="position:absolute; top: {{height*35+50}}px; left: {{width*60}}px; font-family:Comic Sans MS; width: 250px;height: 115px; font-size: 14px;  background-color:lightgray;">
        <li><a href="registercandi.jsp" style="font-size: 20px;"> Candidate</a></li>
      <li><a href="registerorg.jsp" style="font-size: 20px;">Organizer</a></li>
      <li><a href="#" style="font-size: 20px;">Administrator</a></li>
    </ul>
                   
             
                   
  </div>
           
</div>
   
       <!-- Background image third division -->
       <div style="top:{{height*150}}px;width:{{width*99}}px; margin:0;">
           <form id="myForm" action="RegPad.jsp" method="post">
        
  
     
                 <div class="dropdown" style="width: 10px" ng-click="chkApp=false">
       
     <!-- Aptitude toggle button -->  
     
     
    <button id="btapp" ng-click="checkA=true;checkE=false;checkM=false;checkMd=false;checkO=false;" class="btn btn-primary dropdown-toggle"  style="width: 250px;height: 50px;font-size: 25px;font-family:monospace; position:absolute; background-color:blueviolet;
    top: {{height*10}}px; left: {{width*10}}px;" type="button" data-toggle="dropdown">Aptitute
    <span class="caret"></span></button>
    <input type="text" ng-show="checkA" style="top: {{height*10}}px; left:  {{width*10}}px; position:absolute ;width: 250px;height: 50px">
    
    <ul id="aptitude" class="dropdown-menu" style="position:absolute; top: {{height*17}}px; overflow: scroll; left: {{width*10}}px; font-family:Comic Sans MS; width: 250px;height: 120px; font-size: 14px;  background-color:lightgray;">
        
        <!-- Aptitute   togle-->
        
        
        
    </ul>
  </div       
          
   <!-- Engineering button -->
            
             <div class="dropdown" style="width: 10px">
    <button id="bteng" ng-click="checkA=false;checkE=true;checkM=false;checkMd=false;checkO=false;" class="btn btn-primary dropdown-toggle" style="width: 250px;height: 50px;font-size: 25px;font-family:monospace; position:absolute; background-color:blueviolet;
    top: {{height*10}}px; left:{{width*70}}px;" type="button"  data-toggle="dropdown">Engineering
   
        <span class="caret"></span></button>
        <input type="text" ng-show="checkE"  style="top: {{height*10}}px; left:  {{width*70}}px; position:absolute ;width: 250px;height: 50px">
    <ul id="engineering" class="dropdown-menu" style="position:absolute; top: {{height*17}}px; left:{{width*70}}px; overflow: scroll; font-family:Comic Sans MS; width: 250px;height: 120px; font-size: 14px;  background-color:lightgray;">
       
    </ul>
  </div>
   
   
            <!--Medical button --> 
            
              <div class="dropdown" style="width: 10px">
    <button id="btmed"  class="btn btn-primary dropdown-toggle" style="width: 250px;height: 50px;font-size: 25px;font-family:monospace; position:absolute; background-color:blueviolet;
    top: {{height*40}}px; left: {{width*10}}px" ng-click="checkA=false;checkE=false;checkM=false;checkMd=true;checkO=false;" type="button" data-toggle="dropdown">Medical
    <span class="caret"></span></button>
                  <input type="text" id="Inmed" onkeyup="search('Inmed')" ng-show="checkMd"  style="top: {{height*40}}px; left:  {{width*10}}px; position:absolute ;width: 250px;height: 50px">
    <ul id="medical" class="dropdown-menu" style="position:absolute; top: {{height*47}}px;; left: {{width*10}}px; overflow: scroll; font-family:Comic Sans MS; width: 250px;height: 120px; font-size: 14px;  background-color:lightgray;">
      
    </ul>
  </div>
            
              <!-- Mgmt. button -->
            
              <div class="dropdown" style="width: 10px">
    <button id="btmgmnt"  class="btn btn-primary dropdown-toggle" style="width: 250px;height: 50px;font-size: 25px;font-family:monospace; position:absolute; background-color:blueviolet;
    top: {{height*40}}px; left: {{width*70}}px;" type="button" data-toggle="dropdown" ng-click="checkA=false;checkE=false;checkM=true;checkMd=false;checkO=false;">Management
   
        
        <span class="caret"></span></button>
            <input type="text" ng-show="checkM" style="top: {{height*40}}px; left:  {{width*70}}px; position:absolute ;width: 250px;height: 50px">
    <ul id="management" class="dropdown-menu" style="position:absolute; top: {{height*47}}px; left: {{width*70}}px; overflow: scroll; font-family:Comic Sans MS; width: 250px;height: 120px; font-size: 14px;  background-color:lightgray;">
       
    </ul>
  </div>
              <!-- Others button -->
            
             <div class="dropdown" style="width: 10px">
    <button id="btoth" ng-click="checkA=false;checkE=false;checkM=false;checkMd=false;checkO=true;" class="btn btn-primary dropdown-toggle"  style="width: 250px;height: 50px;font-size: 25px;font-family:monospace; position:absolute; background-color:blueviolet;
    top: {{height*60}}px; left: {{width*40}}px;" type="button" data-toggle="dropdown" >Others
    <span class="caret"></span></button>
    <input type="text" ng-show="checkO" style="top: {{height*60}}px; left:  {{width*40}}px; position:absolute ;width: 250px;height: 50px">
    <ul id="others" class="dropdown-menu" style="position:absolute; top: {{height*67}}px; left: {{width*40}}px; overflow: scroll; font-family:Comic Sans MS; width: 250px;height: 120px; font-size: 14px;  background-color:lightgray;">
       
       <script> 
   
           </script>
       
        
       
       
    
               
    </ul>
  </div>

  
             <input type="button" id="hn" ng-click="checkA=false;checkE=false;checkM=false;checkMd=false;checkO=false;" style="background-image:url(img5.jpg); background-size: 100% 100% ; width:{{width*99}}px; height:{{height*83}}px" >
        
           
             <script>
            
            
            var x=0; 
            
$('#btapp').click(function(){
       alert("h");
        reqApptitute();
        });   
        
        $('#btmngmnt').click(function(){
        
    reqManagement();
        });   
        $('#btmed').click(function(){
        
    reqMedical();
        });   
        $('#bteng').click(function(){
        
    reqEngineering();
        });   
        $('#btoth').click(function(){
        
    reqOthers();
        });   
      var ck=true;
      function getEventTarget(e) {
    e = e || window.event;
    return e.target || e.srcElement; 
}
           
   //   var arnam=[];
    document.getElementById('aptitude').onclick = function(event) {
   
   document.getElementById("hidden").value=getEventTarget(event).innerHTML;
    document.forms['myForm'].submit();
    reqFalse();
};
 document.getElementById('medical').onclick = function(event) {
   document.getElementById("hidden").value=getEventTarget(event).innerHTML;
    document.forms['myForm'].submit();
    reqFalse();
};
 document.getElementById('engineering').onclick = function(event) {
   
   document.getElementById("hidden").value=getEventTarget(event).innerHTML;
    document.forms['myForm'].submit();
    reqFalse();
};
 document.getElementById('management').onclick = function(event) {
   
   document.getElementById("hidden").value=getEventTarget(event).innerHTML;
    document.forms['myForm'].submit();
    reqFalse();
};
 document.getElementById('others').onclick = function(event) {
   
   document.getElementById("hidden").value=getEventTarget(event).innerHTML;
    document.forms['myForm'].submit();
    reqFalse();
};

 function reqFalse($scope)
 {
     
     var appElement = document.querySelector('[ng-app=my]');
    var $scope = angular.element(appElement).scope();
    $scope.$apply(function() {
        $scope.checkM=false;
         $scope.checkMd=false;
          $scope.checkA=false; 
          $scope.checkE=false;
           $scope.checkO=false;
          
          
    });

    
 }
        function search(id){
              var menu=document.getElementById('medical');
          if(document.getElementById(id).value.length!=0)
          {
       
    var li=null;
        //   alert(li);
        var cy=menu.offsetTop;
      //  alert(cy);
      //alert(document.getElementById("in").value);
      
      
     for(var i=1;i<=x;i++)
       {
           
           var j=0;
           while(j<document.getElementById(id).value.length)
           {
               il=document.getElementById(i).innerHTML;
         //   var str=il.substring(il.indexOf('>')+1,il.indexOf('<',il.indexOf('>')+1)).charAt(j+1);
            // alert("id="+il.charAt(j));
             //  il.indexOf('>');
              // alert("in="+document.getElementById("in").value.charAt(j));
              
               //alert("j="+j);
              if(document.getElementById(id).value.charAt(j)===il.charAt(j))
               {
                   j++;
                  // alert("j="+j);
               }
               else
               {
                   // alert("I="+i+"j="+j);
                   break;
               }
           }
          // alert("l="+document.getElementById("in").value.length);
           if(j==document.getElementById(id).value.length)
           {
              li=document.getElementById(i).offsetTop;
             //  alert(document.getElementById(i).offsetTop);
                menu.scrollTo(0,li);
                break;
           }
         
       }
   }
  else
           {
              
               li=document.getElementById("1").offsetTop;
              //  alert(li);
               menu.scrollTo(0,li);
               
           }
    }
            
         var exam="";
         function reqApptitute()
         {
           exam="aptitude";
           request();
         
    }
     function reqMedical()
         {
           exam="medical";
           request();
         }
          function reqManagement()
         {
           exam="management";
           request();
         }
          function reqEngineering()
         {
           exam="engineering";
           request();
       }
        function reqEngineering()
         {
           exam="others";
           request();
         }
         
      function request()
      {
         // arnam=null;
       //   alert(exam);
       
       
          $.ajax({
                       type:'POST',
                       data:{exam:exam},
                       url:'getExam',
                    //   dataType: "xml",
                     
                       success: function(result){
                           var exname=result.toString();
                  // alert(exname);
                    // alert(exname.length)
                           var j=0;
                           var temp="";
                     
                         
                          // alert(exname.charAt(5));
                         while(j<=exname.length-2)
                          {
                              temp="";
                           //  alert( exname.charAt(j));
                              while(exname.charAt(j)!='/'&&j<=exname.length-2)
                              {
                                  //alert( exname.charAt(j));
                                  temp=temp+exname.charAt(j);
                                 

                                 // alert("j"+j);
                                  j++;
                                 
                              }
                            var li;
                             x++;
                                li=document.createElement("li");
                                   li.setAttribute("id",x);
                                   li.setAttribute("style","font-size: 20px;")
                                   li.innerHTML=temp;
                                   document.getElementById(exam).appendChild(li);
                             //  alert(temp);
                             j++;
                            //   arnam.push(temp);
                              
                            //alert(x);
                                                  
        }
                             
                         
       

                       // $('#kl').html(result);
                       
                       }
                    //   
                });
      } 
       
           
    
            
        </script>
        <input type="hidden" id="hidden" name="exam">
        <% out.println("USER="+session.getAttribute("Name"));
        out.println("Image="+session.getAttribute("Image"));
        %>
        
    </form>
  </div>
       </body>
    
</html>
