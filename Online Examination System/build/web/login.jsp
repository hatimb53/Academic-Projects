

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
  
  
   <%@ page import="java.io.PrintWriter" %>
   <%@ page import="java.sql.Connection" %>
   <%@ page import="java.sql.DriverManager" %>
   <%@ page import="java.sql.ResultSet" %>
   <%@ page import="java.sql.Statement" %>
   <%@ page import="java.sql.ResultSetMetaData" %>
   <META http-equiv="refresh" content="<%= session.getMaxInactiveInterval()%>;" url="index.jsp" />
         <%//out.println(session.getMaxInactiveInterval()); %>
  
   <%  
 if(session.getAttribute("User_Id")!=null){
        
//request.getRequestDispatcher("login" + ".jsp").forward(request, response);
%>      
      
      
      
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
  background-color: darkslateblue;
  border: none;
  border-radius: 0;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.buttonn:active {
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
  background-color:royalblue;
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
        
    
       
  
        <!-- Carousel second Image --><div id="img2"  style=" background-image:url(dark.jpg);background-size: 100% 100%; padding: 0px;height: 700px;  margin:0; background-repeat: no-repeat; background-position: center" >
        
      </div>
    
        <script>
          document.getElementById("img2").style.padding=screen.width/6+"px";
          //  document.getElementById("hn").style.height=screen.height/2+"px";
            document.getElementById("img1").style.padding=screen.width/6+"px";
              document.getElementById("img3").style.padding=screen.width/6+"px";
           // document.getElementById("ht").style.height=screen.height/2+"px";*/
            
        </script>

 

    <!-- Left and right controls -->
    
    
  

        
        
          <div ng-controller="myCtrl">
              
      <!--  <div   id="ht" style="background-image:url(wood.jpg);width:{{width*100}}px;height:{{height*100}}px; background-size: 100% 100%;  margin:0; background-repeat: no-repeat; background-position: center" > -->
        
           <!-- <img src="online.jpg" alt="Online" style=" margin-left: 30px; margin-top: 10px; width:400px;height:120px;"> -->
           <form action="login.jsp">
            <button class="button" style="position:absolute; top: 20px; right: 435px">Home</button>
           </form>
            <button class="button" style="position:absolute; top: 20px; right: 538px">FAQ</button>
             <form action="about.jsp" method="post">
            <button class="button" style="position:absolute; top: 20px; right: 305px">About Us</button>
             </form>
            <form action="logout.jsp" method="post">
            <button type="submit" name="logout"  class="button" style="position:absolute; top: 20px; right: 190px">LogOut</button>
            </form>
                      
                
          
            <div class="dropdown" style="position: absolute; top: 25px; right: 50px">
  <img src="login.png" alt="Trolltunga Norway" width="100" height="50">
  <div class="dropdown-content" >
      <img src="login.png" alt="Trolltunga Norway" width="170" height="140">
    <div class="desc">Honey Jain</div>
  </div>
</div>
            <form action="examReg.jsp" method="post">
              
            <button class="btn" style="vertical-align:middle; position: absolute; top: 250px; left: 300px"><span>Exam Registration </span></button>   
            
            </form>
       <form action="updateCandi.jsp" method="post">
              
      <button class="btn" style="vertical-align:middle; position: absolute; top: 250px; left: 800px"><span>Update Profile </span></button> 
       </form>
            <form action="instruction.jsp">
          
           
            
             <button class="btn"  style="vertical-align:middle; position: absolute; top: 450px; left: 300px"><span>Appear In Exam </span></button> 
       
 
            </form>
            <script>
                
                  $('#btoth').click(function(){
        
    reqOthers();
        });   
      var ck=true;
      function getEventTarget(e) {
    e = e || window.event;
    return e.target || e.srcElement; 
}
           
   //   var arnam=[];
    document.getElementById('academic').onclick = function(event) {
   
   document.getElementById("hidden").value=getEventTarget(event).innerHTML;
    document.forms['myForm'].submit();
  
};
                
             function request()
      {
         // arnam=null;
       //   alert(exam);
       
       var appear=document.getElementById("appear");
          $.ajax({
                       type:'POST',
                      
                       url:'getExamReg',
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
                                   document.getElementById(appear).appendChild(li);
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
           
            
              <form action="instruction.jsp" method="post">
                  
                  
                  
                  
                  
      </form>
             <form action="academic.jsp" method="post">
                 
      <button class="btn" style="vertical-align:middle; position: absolute; top: 450px; left: 800px"><span>Previous Academic</span></button> 
             </form>
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
            
            <%
        }
   else{
       response.sendRedirect("indextest.jsp");
   }
            %>
            
    </body>
</html>
