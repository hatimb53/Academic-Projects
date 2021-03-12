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
  background-color: darkslateblue;
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
    top: 500px;
    right: 300px;
  display: inline-block;
  width: 200px;
  padding: 20px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: darkslateblue;
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

.button2 {
    position: absolute;
    top: 380px;
    right: 70px;
  display: inline-block;
  width: 100px;
  padding: 20px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: darkslateblue;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.button2:hover {background-color: #3e8e41}

.button2:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  </style>
  
    </head>
   
    <body ng-app="my" ng-controller="ctrl">  
       <div style="background-image:url(darks.jpg); background-size: 100% 100% ;width:1390px;height:650px">
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
             
            <table style="color:white; width: 800px; height: 470px;  background-repeat: no-repeat; background-position: center; position: absolute; top: 150px; left: 250px; font-size: 20px; ">
                <tr> 
                    <td>
  Name of Exam
                    </td>
  <td>
  <input type="text" value name="ExamName" id="ExamName" style="color:black;" onkeyup="checkName()">
  <label style="color:red"></label>
            </td>
                </tr>
                <tr>
                    <td>
   Type of Exam
                    </td>
                    <td>
  <select id="Type" value name="Type" style="color:black;width:238px;height: 35px">
  <option value="Aptitude">Aptitude</option>
  <option value="Engineering">Engineering</option>
  <option value="Medical">Medical</option>
  <option value="Management">Management</option>
  <option value="Others">Others</option>
</select>
   <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        Start Registration Date
                    </td>
                    <td>
       <input type="text" style="color:black;display:inline-block" id="StartRegDt" value name="StartRegDt" />
   <br>
                    </td>
                </tr>
                <tr>
                    <td>
                Start Exam Date 
                    </td>
                    <td>
       <input type="text" style="display:inline-block;color:black;" id="StartExDt" value name="StartExDt"/>
   <br>
                    </td>
                <tr> 
                    <td>
                End Exam Date
                    </td>
                    <td>
        <input type="text" id="EndExDt" style="color:black;" value name="EndExDt"/>
   <br>
                    </td></tr>
                <tr>
                <td>
    End Registration Date
                </td>
                <td>
        <input type="text" style="color:black;" value id="EndRegDt" name="EndRegDt"/>
   <br>
                </td>
                </tr>
                <tr>
                    <td>
   Eligibility Criteria
                    </td>
                    <td>
       <input type="text" style="color:black;"name="elig" id="elig">
   <br>
   <br>
                    </td>
                </tr>
            </table>
   <button class="button2" onclick="submit()" style="position:absolute; top:500px; left: 1170px;" >Submit</button>
   <br>
   <br>
                
   <div class="container">
   
   <button type="button" id="upload" class="button1" data-toggle="modal" data-target="#myModal">Upload Questions</button>
   
    <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" >
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        
   
<div class="dropdown">
    <button id="Qno" onclick="btqadd()" class="btn btn-primary dropdown-toggle" type="button" style="  background-color:blueviolet;height:40px;width:150px;position:absolute;top:-20px;left:20px; " data-toggle="dropdown"><div  style="top:5px ;position:absolute" >Question</div></button>
  
  <span class="caret"></span>
  <ul id="ulQ" class="dropdown-menu" style="overflow:auto ;position:absolute;top:30px;left:20px;">
  </ul>
</div>
          
         
 <div class="dropdown">
    <button id="btSec" class="btn btn-primary dropdown-toggle" type="button" style="background-color:blueviolet;  width:150px; height:40px;position:absolute;top: -35px;left:270px; "   data-toggle="dropdown"><div  style="top:5px ;position:absolute" >Section</div>
  
  <span class="caret"></span></button>
     <button onclick="btsecadd()" style="width:50px; height:40px;position:absolute;top: -30px;left:420px; "  >+</button>
      <button onclick="btsecrem()" style="width:50px; height:40px;position:absolute;top: -30px;left:230px; "  >-</button>
  <ul id="ulS"  class="dropdown-menu" style="width: 150px;overflow:auto;position:absolute;left:270px;top: 15px;">
 
  </ul>
      </div>
</div>

 
      
        <div class="modal-body">
          
            <div style="background-color: lightgray; width: 530px; height: 150px;">
           <input type="text" id="Question" value name="textfield" style="position: absolute; top: 30px;left: 30px; width: 500px; height: 120px;">
        </div>
            
        <div style="background-color: grey; width: 530px; height: 150px;">
        <input type="text" name="one" value id="OpA" style="position: absolute; height:30px; background-color: white;top: 200px; left: 50px" placeholder="Option A">
        <input type="text" name="one" value id="OpB" style="position: absolute;  background-color: white;top: 200px; left: 350px" placeholder="Option B">
        <input type="text" name="one" value id="OpC" style="position:  absolute;  background-color: white;top: 260px; left:50px" placeholder="Option C">
        <input type="text" name="one" value id="OpD" style="position: absolute;  background-color: white;top: 260px; left: 350px" placeholder="Option D">
        </div>
       
            <button class="btn btn-primary dropdown-toggle" type="button" style="background-color: blueviolet;width:200px; height:50px; "onclick="remQ()" ><div  style="top:-15px ;position:relative" >Remove Que</button>
     <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" style="background-color: blueviolet;width:150px; height:50px; "   data-toggle="dropdown"><div  style="top:-15px ;position:relative" >Correct</div>
  
  <span class="caret"></span></button>
  <ul id="ulC"  class="dropdown-menu" style="width: 204px;">
 
    <div class="col-sm-4" id="OpAt" style="background-color:lavender; width:50px;">A</div>
    <div class="col-sm-4" id="OpBt" style="background-color:lavender; width:50px;">B</div>
    <div class="col-sm-4" id="OpCt" style="background-color:lavender; width:50px;">C</div>
    <div class="col-sm-4" id="OpDt" style="background-color:lavender; width:50px;">D</div>
 </ul>
  </div>

 
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
                   
              
                var j="";
                   var Question=[[],[]];
                   var Correct=[[],[]];
                   var OpA=[[],[]];
                   var OpB=[[],[]];
                   var OpC=[[],[]];
                   var OpD=[[],[]];
                   var SecText=[];
                   var SecNo=0,Qno=1,TQno=[];
                   var Section=1;
                   var prev=1,prevSec=-1;
    function btsecadd(){
                  
                    li=document.createElement("input");
                                   li.setAttribute("value","");
                                   li.setAttribute("id","Section"+Section);
                                   li.setAttribute("style","background-color:white;font-size: 20px;");
                                  
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
                     document.getElementById("Section"+i).style.backgroundColor="white";
                 }////
                 //alert(getEventTarget(event).id);
   document.getElementById(getEventTarget(event).id).style.backgroundColor="green";
   
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
    document.getElementById("Op"+Correct[SecNo][Qno]).style.backgroundColor="white";
   document.getElementById("Op"+Correct[SecNo][Qno]+"t").style.backgroundColor="white";
   
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
    
    //document.getElementById("Qno").innerHTML=""+Qno;
        }
        var  y=Qno-1;
        document.getElementById("Qno").style.padding="0px";
     document.getElementById("Qno").innerHTML="Que: "+Qno;
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
                 document.getElementById("Qno").style.padding="0px";
     document.getElementById("Qno").innerHTML="Que: "+Qno;
     
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
               //alert(document.getElementById(Section).value);
            valueput();
            
    }
var pre=null;
    document.getElementById('ulC').onclick = function(event) {
  //alert("SDFv");
   
   //alert(getEventTarget(event).innerHTML);
   if(pre!=null)
   {
    document.getElementById("Op"+pre).style.backgroundColor="white";
   document.getElementById("Op"+pre+"t").style.backgroundColor="white";
   }
   Correct[SecNo][Qno]=getEventTarget(event).innerHTML;
   document.getElementById("Op"+Correct[SecNo][Qno]).style.backgroundColor="green";
   document.getElementById("Op"+Correct[SecNo][Qno]+"t").style.backgroundColor="green";
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
     document.getElementById("Qno").style.padding="0px";
     document.getElementById("Qno").innerHTML="Que: "+Qno;
     //alert(document.getElementById(Section).value);
  // document.getElementById("btSec").innerHTML=document.getElementById("Section").value;
   document.getElementById("Question").value=Question[SecNo][Qno] ;
   document.getElementById("OpA").value=OpA[SecNo][Qno];
   document.getElementById("OpB").value=OpB[SecNo][Qno];
   document.getElementById("OpC").value= OpC[SecNo][Qno];
   document.getElementById("OpD").value=OpD[SecNo][Qno];
   document.getElementById("Op"+Correct[SecNo][Qno]).style.backgroundColor="green";
   document.getElementById("Op"+Correct[SecNo][Qno]+"t").style.backgroundColor="green";
 }
 function valueerase(){
     document.getElementById("Question").value="" ;
   document.getElementById("OpA").value="";
   document.getElementById("OpB").value="";
   document.getElementById("OpC").value= "";
   document.getElementById("OpD").value="";
   document.getElementById("OpA").style.backgroundColor="white";
   document.getElementById("OpAt").style.backgroundColor="whit;";
     document.getElementById("OpB").style.backgroundColor="white";
   document.getElementById("OpBt").style.backgroundColor="white";
     document.getElementById("OpC").style.backgroundColor="white";
   document.getElementById("OpCt").style.backgroundColor="white";
     document.getElementById("OpD").style.backgroundColor="white";
   document.getElementById("OpDt").style.backgroundColor="white";
 }
 function remQ(){   
     for(var i=Qno-1;i<=TQno[SecNo];i++)
     {
         Question[SecNo][i]=Question[SecNo][i+1];
         OpA[SecNo][i]=OpA[SecNo][i+1];
         OpA[SecNo][i]=OpA[SecNo][i+1];
         OpA[SecNo][i]=OpA[SecNo][i+1];
         OpA[SecNo][i]=OpA[SecNo][i+1];
         Correct[SecNo][i]=Correct[SecNo][i+1];  
       //  alert(i);
         
     }
     
     if( TQno[SecNo]==Qno){
         Qno--;
     }
    
     TQno[SecNo]--;
     alert("Question removed");
     valueerase();
     valueput();
    
 }
 function submit(){
   //  alert("Exam Created");
    var Exnm=document.getElementById("ExamName").value;
 
     for(var i=1;i<Section;i++)
     {
         SecText[i]=document.getElementById("Section"+i).value;
         
      for(var j=1;j<TQno[i];j++)
      {
          
          
         //  alert("Qno="+j+" Section="+SecText[i]+"Exname"+Exnm+" Question="+Question[j]+" OpA="+OpA[j]+" OpB="+OpB[j]+" OpC="+OpC[j]+" OpD="+OpD[j]+"Correct="+Correct[j]);
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
     
      data:{Org_Id:"<%= session.getAttribute("Org_Id")%>",Name:document.getElementById("ExamName").value,Type:document.getElementById("Type").value,StartExDt:document.getElementById("StartExDt").value,StartRegDt:document.getElementById("StartRegDt").value,EndExDt:document.getElementById("EndExDt").value,EndRegDt:document.getElementById("EndRegDt").value,detail:document.getElementById("elig")
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
            
    </div>
    </body>
</html>
