<%-- 
    Document   : createexam
    Created on : Apr 17, 2016, 3:59:58 PM
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
  <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <script src="angular.js"></script>
 <script>
    $(function() {
      $( "#EndRegDt" ).datepicker({ minDate: -100, maxDate: "+0D" });
      $("#EndRegDt").datepicker("setDate",new Date());
      $( "#EndRegDt" ).datepicker( "option", "dateFormat", "dd/mm/yy");
      $( "#StartExDt" ).datepicker({ minDate: -100, maxDate: "+0D" });
      $("#StartExDt").datepicker("setDate",new Date());
      $( "#StartExDt" ).datepicker( "option", "dateFormat", "dd/mm/yy");
      $("#EndExDt").datepicker("setDate",new Date());
      $( "#EndExDt" ).datepicker( "option", "dateFormat", "dd/mm/yy");
      $( "#EndExDt" ).datepicker({ minDate: -100, maxDate: "+0D" });
      $("#StartRegDt").datepicker("setDate",new Date());
      $( "#StartRegDt" ).datepicker( "option", "dateFormat", "dd/mm/yy");
      $( "#StartRegDt" ).datepicker({ minDate: -100, maxDate: "+0D" });
    });
    
    
            var ap=angular.module("my",[]);
            ap.controller("ctrl",function($scope){
               $scope.width=screen.width/100;
               $scope.height=screen.height/100;
              
            });
</script>
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
u { 
    text-decoration: underline;
    color: red;
}
.button1 {
    position: absolute;
    top: 300px;
    right: 100px;
  display: inline-block;
  width: 200px;
  padding: 20px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: blueviolet;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.button1:hover {background-color: #3e8e41}

.button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  </style>
  
    </head>
   
    <body ng-app="my" ng-controller="ctrl">  
      
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
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div style="background-color: burlywood; width: 800px; height: 400px;  margin:10px; background-repeat: no-repeat; background-position: center; position: absolute; top: 150px; left: 250px; font-size: 20px; padding: 10px">
                
            
  Name of Exam  
  <input type="text" value name="ExamName" id="ExamName" onkeyup="checkName()">
  <label style="color:red"></label>
  <br><br>
   Type of exam
  <select id="Type" value name="Type">
  <option value="Aptitude">Aptitude</option>
  <option value="Engineering">Engineering</option>
  <option value="Medical">Medical</option>
  <option value="Management">Management</option>
  <option value="Others">Others</option>
</select>
   <br><br>
   <p>Start Registration Date <input type="text" id="StartRegDt" value name="StartRegDt" /></p>
   <br>
   <p>Start Exam Date: <input type="text" id="StartExDt" value name="StartExDt"/></p>
   <br>
    <p>End Exam Date: <input type="text" id="EndExDt" value name="EndExDt"/></p>
   <br>
    <p>End Registration Date: <input type="text" value id="EndRegDt" name="EndRegDt"/></p>
   <br>
   <p>Eligibility Criteria</p>
   <br>
  
   <button onclick="submit()" >Submit</button>
                
   <div class="container">
   
   <button type="button" id="upload" class="button1" data-toggle="modal" data-target="#myModal">Upload Questions</button>
   
    <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><center>Upload Questions</center></h4>
   
<div class="dropdown">
    <button id="Qno" onclick="btqadd()" class="btn btn-primary dropdown-toggle" type="button" style="width:150px; height:50px; "   data-toggle="dropdown"><div  style="top:-15px ;position:relative" >Question</div>
  
  <span class="caret"></span></button>
  <ul id="ulQ" class="dropdown-menu" style="overflow:auto">
  </ul>
</div>
          
         
 <div class="dropdown">
    <button id="btSec" class="btn btn-primary dropdown-toggle" type="button" style="width:150px; height:50px;position:absolute;left:200px; "   data-toggle="dropdown"><div  style="top:-15px ;position:relative" >Section</div>
  
  <span class="caret"></span></button>
     <button onclick="btsecadd()" style="width:50px; height:50px;position:absolute;left:360px; "  >+</button>
      <button onclick="btsecrem()" style="width:50px; height:50px;position:absolute;left:150px; "  >-</button>
  <ul id="ulS"  class="dropdown-menu" style="width: 204px;overflow:auto;position:absolute;left:200px;">
 
  </ul>
      </div>
</div>

 
      
        <div class="modal-body">
          
            <div style="background-color: lightgray; width: 530px; height: 150px;">
           <input type="text" id="Question" value name="textfield" style="position: absolute; top: 30px;left: 30px; width: 500px; height: 120px;">
        </div>
            
        <div style="background-color: grey; width: 530px; height: 150px;">
        <input type="text" name="one" value id="OpA" style="position: relative; top: 20px; left: 20px" placeholder="Option 1">
        <input type="text" name="one" value id="OpB" style="position: relative; top: 20px; left: 50px" placeholder="Option 2">
        <input type="text" name="one" value id="OpC" style="position: relative; top: 60px; left: 20px" placeholder="Option 3">
        <input type="text" name="one" value id="OpD" style="position: relative; top: 60px; left: 50px" placeholder="Option 4">
        </div>
       
            <button onclick="remQ()" >Remove Que</button>
     <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" style="width:150px; height:50px; "   data-toggle="dropdown"><div  style="top:-15px ;position:relative" >Correct</div>
  
  <span class="caret"></span></button>
  <ul id="ulC"  class="dropdown-menu" style="width: 204px;">
 
    <div class="col-sm-4" id="OpAt" style="background-color:lavender;width:50px;">A</div>
    <div class="col-sm-4" id="OpBt" style="background-color:lavender; width:50px;">B</div>
    <div class="col-sm-4" id="OpCt" style="background-color:lavender; width:50px;" >C</div>
    <div class="col-sm-4" id="OpDt" style="background-color:lavender;width:50px;">D</div>

  </div>

  </ul>
</div>
     

            
        <div class="modal-footer">
            <button type="button" onclick="previous()" >Previous</button>
            <button type="button" onclick="next()">Next</button>
            <h1 id="ol"></h1>
        </div>
      </div>
      
    </div>
  </div>

   
   </div>
   

                <script>
                   var click=true; 
                   var j="";
                   var Question=[[],[]];
                   var Correct=[[],[]];
                   var OpA=[[],[]];
                   var OpB=[[],[]];
                   var OpC=[[],[]];
                   var OpD=[[],[]];
                   var SecText=[];
                   var SecNo=1,Qno=1,TQno=[];
                   var Section=0;
                   var prev=1,prevSec=-1;
                   var Exnme =' <%= session.getAttribute("ExamName")%>';
              $('#btupload').click(function(){
                 if(click==true){
                     click=false;
                      $.ajax({
                          url:'RetriewQuestion',
                          type:'post',
                          data:{ExamName:Exnme},
                          success:function(result){
                              var tmp="";
                              var x=1;
                           for(var i=0;i<result.toString().lenght;i++){
                               tmp=tmp+result.charAt(i);
                               if(result.toString().charAt(i)=="/"&&result.toString().charAt(i+1)=="/"){
                                   
                                   switch(x){
                                       case 1:
                                           if(SecText!=tmp)
                                           { if(Section!=0){
                                               TQno[Section]=Qno;
                                           }
                                               Section++;
                                               
                                           SecText[Section]=tmp;
                                            }
                                           break;
                    
                                     case 2:
                                       Qno=Number(tmp);
                                      break;
                                       case 3:
                                         Question[Section][Qno]=tmp;
                                           break
                                       case 4:
                                           OpA[Section][Qno]=tmp;
                                           break;
                                       case 5:
                                           OpB[Section][Qno]=tmp;
                                           break;
                                       case 6:
                                           OpC[Section][Qno]=tmp;
                                           break;
                                       case 7:
                                           OpD[Section][Qno]=tmp;
                                           break;
                                       case 8:
                                           Correct[Section][Qno]=tmp;
                                           break;
                                   }
                             x++;
                             if(x==9){
                                 x=0;
                             }
                                   tmp="";
                                  
                               }
                           }
                          }
                          
                      });
                      Section++;
                      for(var i=1;i<Section;i++){
                                   li=document.createElement("input");
                                   li.setAttribute("value",SecText[i]);
                                   li.setAttribute("id","Section"+i);
                                   li.setAttribute("style","font-size: 20px;");
                                   document.getElementById("ulS").appendChild(li);
                  }
              }
                  });
                   
                   
    function btsecadd(){
                  
                                   li=document.createElement("input");
                                   li.setAttribute("value","SAdf");
                                   li.setAttribute("id","Section"+Section);
                                   li.setAttribute("style","font-size: 20px;");
                                  
                                   document.getElementById("ulS").appendChild(li);
                                   
                       Question[Section]=[];
                       Correct[Section]=[];
                       OpA[Section]=[];
                       OpB[Section]=[];
                       OpC[Section]=[];
                       OpD[Section]=[];
                       TQno[Section]=1;
                                   
                                   Section++;
               } 
               function btsecrem(){
                 
                 if(Section>0){
                      Section--;
                document.getElementById("Section"+Section).remove();
               
                 }
               } 
                    function getEventTarget(e) {
    e = e || window.event;
    return e.target || e.srcElement; 
}
           
           document.getElementById('ulS').onclick = function(event) {
           //    alert("DF");
           
          
           
           prev=SecNo;
           prevSec=TQno[SecNo];
 for(var i=1;i<Section;i++)
                 {
                     document.getElementById("Section"+i).style="background-color:white";
                 }////
   document.getElementById(getEventTarget(event).id).style="background-color:green";
   SecNo=Number(getEventTarget(event).id.substring(7));
   
   Qno=TQno[SecNo];
   if(prev!=SecNo)
   {
       valueerase();
   }
   
   //alert("prev="+prev);
  // document.getElementById("SecNo").innerHTML=getEventTarget(event).value;
 //document.getElementById("ol").innerHTML=getEventTarget(event).value;
  SecText[SecNo]=document.getElementById(getEventTarget(event).id).value;
 document.getElementById(getEventTarget(event).id).onkeyup=function(event){
    SecText[SecNo]=document.getElementById(getEventTarget(event).id).value;
   
    };
   
};
        function next()
        { 
            if(SecNo==0)
            {
              alert("Select section");
            }
           else if(document.getElementById("Question").value==""||document.getElementById("OpA").value==""||document.getElementById("OpB").value==""||document.getElementById("OpC").value==""||document.getElementById("OpD").value=="")
        {
            alert("field cant be empty");
        }
        else if(Correct[SecNo][Qno]==undefined){
          //  alert("Q"+Qno+" S"+SecNo);
            alert("Select corect option");
        }
        else{
   Question[SecNo][Qno]=document.getElementById("Question").value;
   OpA[SecNo][Qno]=document.getElementById("OpA").value;
   OpB[SecNo][Qno]=document.getElementById("OpB").value;
   OpC[SecNo][Qno]=document.getElementById("OpC").value;
   OpD[SecNo][Qno]=document.getElementById("OpD").value;
    document.getElementById("Op"+Correct[SecNo][Qno]).style="background-color:white;";
   document.getElementById("Op"+Correct[SecNo][Qno]+"t").style="background-color:white;";
   
        Qno++;
        //alert(Qno);
            
           if(Qno<TQno[SecNo])
            {
           //alert(TQno[SecNo]);
           
              valueput();
            }

    

              
            else{
                TQno[SecNo]++;
               // alert("TQ"+TQno+"p"+SecNo);
           // alert("SDF");
  // document.getElementById("SecNo").innerHTML=document.getElementById("Section"+Section).value;
  
   
 
  
  // document.getElementById("btSec").innerHTML=document.getElementById("Section"+Section).value;
   valueerase();
   
   
    }       
    
    document.getElementById("Qno").innerHTML=""+Qno;
        }
        var  y=Qno-1;
        //alert("Qno="+y+" Section="+SecText[SecNo]+" Question="+Question[SecNo][Qno-1]+" OpA="+OpA[SecNo][Qno-1]+" OpB="+OpB[SecNo][Qno-1]+" OpC="+OpC[SecNo][Qno-1]+" OpD="+OpD[SecNo][Qno-1]+"Correct="+Correct[SecNo][Qno-1]);
}
            function btqadd(){
                var h;
                if(prev==0)
                {h=SecNo;
                }
                else{
                    h=prev;
                }
              
              
                for(var i=0;i<TQno[h];i++)
                {  if(document.getElementById("rq"+i)!=null){
                    
                    document.getElementById("rq"+i).remove();
                }
            }
                
               // alert(TQno[SecNo]/5);
                for(var i=0;i<=TQno[SecNo]/5;i++)
   {
        var li,y;
                          
                          if(i%2==0)
                          {
                              y=0;
                          }
                          else
                          {
                              y=1;
                          }
                                   li=document.createElement("div");
                                   li.setAttribute("class","row");
                                   li.setAttribute("id","rq"+i);
                                   li.setAttribute("style","font-size: 20px;");
                                  
                                   document.getElementById("ulQ").appendChild(li);
                                   
            var t;
            var tmp=TQno[SecNo]/5;
            var tmp2=Math.floor(tmp);
            
            if(i<tmp2)
            {
                t=5;
            }
            else{
                
                t=TQno[SecNo]%5-1;
            }
            for(var j=0;j<t;j++)
                                   {
                                    li=document.createElement("div");
                                    li.setAttribute("class","col-sm-4");
                                    
                                    li.setAttribute("style","font-size: 20px;");
                                    if(y%2==0)
                                    {
                                     li.setAttribute("style","background-color:lavenderblush;");
                                    }
                                    else
                                    {
                                      li.setAttribute("style","background-color:lavender;");
                                    }
                                    li.innerHTML=j+i*5+1;
                                    document.getElementById("rq"+i).appendChild(li); 
                                   }
   
   
                }
            }
            function btqrem(){
                
            }
       function previous()
        {
           Qno--;
           if(Qno==0)
           {
               Qno=1;
           }
            
            valueput();
            
    }
var pre=null;
    document.getElementById('ulC').onclick = function(event) {
  //alert("SDFv");
   
   //alert(getEventTarget(event).innerHTML);
   if(pre!=null)
   {
    document.getElementById("Op"+pre).style="background-color:white;";
   document.getElementById("Op"+pre+"t").style="background-color:white;";
   }
   Correct[SecNo][Qno]=getEventTarget(event).innerHTML;
   document.getElementById("Op"+Correct[SecNo][Qno]).style="background-color:green;";
   document.getElementById("Op"+Correct[SecNo][Qno]+"t").style="background-color:green;";
   pre=Correct[SecNo][Qno];
   
 };
 document.getElementById('ulQ').onclick = function(event) {
 
     //   alert("hi");
        Qno=Number(getEventTarget(event).innerHTML);
       // alert(Qno);
       valueerase();
  valueput();
 };
 
 
 function valueput(){
     //alert("call");
     document.getElementById("Qno").innerHTML="Question: "+Qno;
   //document.getElementById("SecNo").innerHTML=document.getElementById("Section"+Section).value;
   document.getElementById("Question").value=Question[SecNo][Qno] ;
   document.getElementById("OpA").value=OpA[SecNo][Qno];
   document.getElementById("OpB").value=OpB[SecNo][Qno];
   document.getElementById("OpC").value= OpC[SecNo][Qno];
   document.getElementById("OpD").value=OpD[SecNo][Qno];
   document.getElementById("Op"+Correct[SecNo][Qno]).style="background-color:green;";
   document.getElementById("Op"+Correct[SecNo][Qno]+"t").style="background-color:green;";
 }
 function valueerase(){
     document.getElementById("Question").value="" ;
   document.getElementById("OpA").value="";
   document.getElementById("OpB").value="";
   document.getElementById("OpC").value= "";
   document.getElementById("OpD").value="";
   document.getElementById("OpA").style="background-color:white;";
   document.getElementById("OpAt").style="background-color:white;";
     document.getElementById("OpB").style="background-color:white;";
   document.getElementById("OpBt").style="background-color:white;";
     document.getElementById("OpC").style="background-color:white;";
   document.getElementById("OpCt").style="background-color:white;";
     document.getElementById("OpD").style="background-color:white;";
   document.getElementById("OpDt").style="background-color:white;";
 }
 function remQ(){   
     for(var i=Qno[SecNo]-1;i<=TQno[SecNo];i++)
     {
         Question[SecNo][i]=Question[SecNo][i+1];
         OpA[SecNo][i]=OpA[SecNo][i+1];
         OpA[SecNo][i]=OpA[SecNo][i+1];
         OpA[SecNo][i]=OpA[SecNo][i+1];
         OpA[SecNo][i]=OpA[SecNo][i+1];
         Correct[SecNo][i]=Correct[SecNo][i+1];  
         
     }
     if( TQno[SecNo]==Qno){
         Qno--;
     }
     TQno[SecNo]--;
     alert("Question removed");
     valueerase();
    
 }
 function submit(){
     alert("gf");
    var Exnm=document.getElementById("ExamName").value;
    var prevEx='<%= session.getAttribute("ExamName")%>';
  $.ajax({
      url: 'DeleteQuestion',
      type:'post',
     
      data:{ExamName:prevEx},
      success:function(result){
      //    alert(result);
      
       
      }
      
      
   });
   
 
     for(var i=1;i<Section;i++)
     {
         SecText[i]=document.getElementById("Section"+i).value;
         
      for(var j=1;j<TQno[i];j++)
      {
          
          
           alert("Qno="+j+" Section="+SecText[i]+"Exname"+Exnm+" Question="+Question[j]+" OpA="+OpA[j]+" OpB="+OpB[j]+" OpC="+OpC[j]+" OpD="+OpD[j]+"Correct="+Correct[j]);
      $.ajax({
      url: 'UploadQuestion',
      type:'post',
     
      data:{Qno:j,Section:SecText[i],ExamName:Exnm,Question:Question[i][j],OpA:OpA[i][j],OpB:OpB[i][j],OpC:OpC[i][j],OpD:OpD[i][j],Correct:Correct[i][j]},
      success:function(result){
      //    alert(result);
      
       
      }
      
      
   });
   
 }
 
     }
      $.ajax({
      url: 'Store_Exam',
      type:'post',
     
      data:{Name:document.getElementById("ExamName").value,Type:document.getElementById("Type").value,StartExDt:document.getElementById("StartExDt").value,StartRegDt:document.getElementById("StartRegDt").value,EndExDt:document.getElementById("EndExDt").value,EndRegDt:document.getElementById("EndRegDt").value
      },
      success:function(result){
          alert(result);
      
        // document.getElementById('myForm').submit();
      }
      
      
   });
     return true;
 }
   
                </script>
                    
 
   
                
                
        </div>
     
    </body>
</html>
