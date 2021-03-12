<%-- 
    Document   : examReg
    Created on : Apr 15, 2016, 1:12:19 PM
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
  
    </head>
    <body ng-app="my" ng-controller="ctrl">
           <form id="myForm" action="registerexam.jsp" method="post">
        <script>
             var ap=angular.module("my",[]);
            ap.controller("ctrl",function($scope){
               $scope.width=screen.width/100;
               $scope.height=screen.height/100;
              
            });
        </script>
  
     
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
</div>
  
             <input type="button" id="hn" ng-click="checkA=false;checkE=false;checkM=false;checkMd=false;checkO=false;" style="background-image:url(img5.jpg); background-size: 100% 100% ; width:{{width*99}}px; height:{{height*83}}px" >
        <script>
            
            
            var x=0; 
            
$('#btapp').click(function(){
        
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
    </body>
</html>
