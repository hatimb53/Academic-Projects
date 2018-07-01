<%-- 
    Document   : paper
    Created on : Mar 30, 2016, 10:07:14 PM
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
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <script>
          var dat=new Date();
             var ts=dat.getTime();
             timer=setInterval(function(){
                 
               var d=new Date();
               tc=Number(d.getTime());
               var time=Math.floor(Number((tc-ts)/1000));
            var  x=Math.floor(time/3600);
            var  y=Math.floor(time/60);
             var z=time%60;
               document.getElementById("time").innerHTML=x+" : "+y+" : "+z;
               
             },10);
          /*   var  element=document.documentElement;
            function launchIntoFullscreen() {
             
  if(element.requestFullscreen) {
    element.requestFullscreen();
  } else if(element.mozRequestFullScreen) {
    element.mozRequestFullScreen();
    
  } else if(element.webkitRequestFullscreen) {
    element.webkitRequestFullscreen();
  } else if(element.msRequestFullscreen) {
    element.msRequestFullscreen();
  }
  

var fullscreenState=document.getElementById("fullscreenState");
document.addEventListener("fullscreenchange", function () { 
     fullscreenState.innerHTML = (document.fullscreen)? "" : "not "; 
 }, false); 
 
 
 document.addEventListener("mozfullscreenchange", function () { 

      element=document.documentElement;
      if(click==true){
    // element.mozRequestFullScreen();
 my.submit();
      }
      else{
          click=true;
      }
 },false ); 
 
 
 document.addEventListener("webkitfullscreenchange", function () { 
     fullscreenState.innerHTML = (document.webkitIsFullScreen)? "" : "not "; 
 }, false); 
 
 
 document.addEventListener("msfullscreenchange", function () { 
     fullscreenState.innerHTML = (document.msFullscreenElement)? "" : "not "; 
}, false); 

// Launch fullscreen for browsers that support it!

      
// Launch fullscreen for browsers that support it!
//launchFullScreen(); // the whole page
//launfunction 
document.onkeydown = function (e) {
	if(e.which == 27){
            alert("d");
		return false;
	}
}*/
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
#Question {
    border-radius: 25px;
    background: #73AD21;
    padding: 20px; 
    position:absolute;
    top:100px;
    left:100px;
    overflow:auto;
    width: 800px;
    height: 700px;    
}


        </style>
    </head>
    <body>
       <div style="background-image:url(reg.jpg) ;width:1380px;height:665px;background-size: 100% 100%">
        <div id="Qno" style="color: blueviolet;font-size:30px;position: absolute; top:40px;left:100px"></div>
        <div id="SecNo" style="color: darkcyan;font-size:30px;position: absolute; top:40px;left:500px"></div>
     
          
              
                    <div  id="Question" style="background-color: white; position: absolute; top: 100px; width: 700px; height: 150px">
                        
                    </div>
                       
                    <div id="opt" style="  position: absolute; top: 280px; left:100px;  width: 700px; height: 200px">
                        
                        <div  style="  color:white;border-radius: 15px;font-size:30px;position: absolute;top:30px; left:30px;  ">A:
                        
                    </div>         
                    <div id="OpA" style="  border-radius: 15px;position: absolute; background-color:white;padding:15px;top:30px; left:70px;  width: 200px; height: 50px">
                        
                    </div>
                        
                          <div  style="  color:white;border-radius: 15px;font-size:30px;position: absolute;top:30px; left:330px;  ">B:
                        
                    </div>  
                     <div id="OpB" style=" border-radius: 15px; position: absolute;background-color: white;padding:15px;top:30px; left:370px;  width: 200px; height: 50px">
                        
                    </div>
                           <div  style="  color:white;border-radius: 15px;font-size:30px;position: absolute;top:130px; left:30px;  ">C:
                        
                    </div> 
                     <div id="OpC" style=" border-radius: 15px; position: absolute;background-color: white; padding:15px;top: 130px; left:70px;  width: 200px; height: 50px">
                        
                    </div>
                       <div  style="  color:white;border-radius: 15px;font-size:30px;position: absolute;top:130px; left:330px;  ">D:
                        
                    </div> 
                     <div id="OpD" style=" border-radius: 15px; position: absolute;background-color: white;padding:15px; top: 130px; left:370px; width: 200px; height: 50px">
                        
                    </div>
                       
                    </div>
                    
                      <div style=" position:absolute; top:500px; left:100px; width: 700px; height: 100px;">
                          <div id="markp" onclick="markp()" style="position:absolute; top:100px;left:250px;width:20px;border-radius: 15px;height: 20px; background-color:orange;"></div>
                          <div id="markr"  onclick="markr()" style="position:absolute; top:100px;left:390px; width:20px;border-radius: 15px;height: 20px; background-color:yellow;"></div>
                   
                     <button  onclick="submit()" style="position:absolute; border-radius: 15px;top: 10px; width:100px;height:50px; left: 280px;background-color: cadetblue">Submit</button>
                     <div onclick="next()" style="position:absolute; background-size: 100% 100%; width:70px; height:70px; top: 10px; left: 480px; background-image:url(next.png);"></div>
              <div onclick="previous()" style="position:absolute; background-size: 100% 100%; width:70px; height:70px; top: 10px; left: 80px; background-image:url(prev.png);"></div>
                      
                      </div>   
          
       
            </div>   
               
               
    
    <div id="section" style="background-color: grey; overflow: auto; position: absolute; top: 100px; left: 850px; width: 245px; height: 500px; font-size: 17px">
        
        <center><h1><b>Questions</h1></center>
       
        </div>
        
           <div  style="background-color: #999; overflow: auto; position: absolute; top: 100px; left: 1100px; width: 245px; height: 500px; font-size: 17px">
              <center><h1 ><b>Time</h1></center>
               <div id="time" style="left:100px;top:100px">
        
               </div>
           </div>
         
            <div>
          
            <script>
                
            </script>
            <%session.setAttribute("ExamName","hatim"); %>
    </body>
     <script>
                   var click=true; 
                   var j="";
                  var Question=[[],[]];
                   
                   var OpA=[[],[]];
                   var OpB=[[],[]];
                   var OpC=[[],[]];
                   var OpD=[[],[]];
                   var SecText=[];
                   var SecNo=1,Qno=1,TQno=[];
                   var Section;
                
                   var ExamName;
                   var ans=[[],[]];
                   Section=0;
                          
            function getEventTarget(e) {
    e = e || window.event;
    return e.target || e.srcElement; 
    }
var opcheck=true;
                document.getElementById('opt').onclick=function(event){
              // alert(getEventTarget(event).id.substring(0)); 
                    document.getElementById("OpA").style.backgroundColor="white";
     document.getElementById("OpB").style.backgroundColor="white";
   
     document.getElementById("OpC").style.backgroundColor="white";
 
     document.getElementById("OpD").style.backgroundColor="white";
     document.getElementById(SecNo+"/"+Qno).style.backgroundColor="white";
     document.getElementById(getEventTarget(event).id).style.backgroundColor="green";
      ans[SecNo][Qno]=getEventTarget(event).id;
        document.getElementById(SecNo+"/"+Qno).style.backgroundColor="green";
    
 };
                 
    
    document.getElementById('section').onclick = function(event) {
        
        SecNo=Number(getEventTarget(event).id.substring(0,getEventTarget(event).id.indexOf("/")));
        Qno=Number(getEventTarget(event).id.substring(getEventTarget(event).id.indexOf("/")+1));
       // alert(Qno+" "+SecNo);
        if(Qno!=0&&SecNo!=0&&Qno.toString()!="NaN"&&SecNo.toString()!="NaN"){
        valueerase();
        valueput();
        }
 };
 function valueput(){
    
   document.getElementById("Qno").innerHTML="Question: "+Qno;
   document.getElementById("SecNo").innerHTML="Section: "+SecText[SecNo];
   document.getElementById("Question").innerHTML=Question[SecNo][Qno] ;
   document.getElementById("OpA").innerHTML=OpA[SecNo][Qno];
   document.getElementById("OpB").innerHTML=OpB[SecNo][Qno];
   document.getElementById("OpC").innerHTML= OpC[SecNo][Qno];
   document.getElementById("OpD").innerHTML=OpD[SecNo][Qno];
   document.getElementById(ans[SecNo][Qno]).style.backgroundColor="green";
  // document.getElementById(ans[SecNo][Qno]).style="  border-radius: 15px;position: absolute; background-color:green;padding:15px;top:30px; left:70px;  width: 200px; height: 50px";
   
  
 }
 function valueerase(){
         
   document.getElementById("OpA").style.backgroundColor="white";

     document.getElementById("OpB").style.backgroundColor="white";
   
     document.getElementById("OpC").style.backgroundColor="white";
     document.getElementById("OpD").style.backgroundColor="white";
   
 }
 
    function loadData(result){
                          var tmp="";
                              var x=1;
                             Section=0;
                              for(var i=0;i<result.toString().length;i++){
                   
                               if(result.toString().charAt(i)=='/'&&result.toString().charAt(i+1)=='/'){
               // alert(i+""+tmp);                
                i=i+2;
               // alert("x="+x);
                                   switch(x){
                                       case 1:
                                          
                                           if(SecText[Section]!=tmp){
                                            if(Section!=0){
                                               TQno[Section]=Qno;
                                               
                                              // alert(TQno[Section]+" "+Section);
                                            
                                           }
                 //                          alert("Sec"+Section);
                                               Section++;
                                               Question[Section]=[];
                                               OpA[Section]=[];
                                               OpB[Section]=[];
                                               OpC[Section]=[];
                                               OpD[Section]=[];
                                               ans[Section]=[];
                                               SecText[Section]=tmp;
           //                                    alert("SecText="+ SecText[Section]);
                                            }
               //                             alert("Section"+Section);
                                           break;
                    
                                     case 2:
                                       Qno=Number(tmp);
                                      break;
                                       case 3:
                                         Question[Section][Qno]=tmp;
                                        // alert(Section+" "+Qno+" "+Question[Section][Qno]);
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
                                       
                                   }
                   
                             x++;
                             if(x==8){
                                 x=1;
                             }
                                   tmp="";
                                
                               }
         if(i<result.length){
           
         
                               tmp=tmp+result.charAt(i);
                         //  alert(i+""+tmp)     
                          }
                           
         }
                   }
                var response = (function() {
                  click=true; 
                  
                      $.ajax({
                          url:'RetriewQuestion',
                          type:'post',
                          data:{ExamName:ExamName},
                          success:function(result){
                          loadData(result);
            //             alert("Secop"+Section);
                          TQno[Section]=Qno;
                     //     alert(TQno[Section]+" "+Section);
                          Qno=1;
                          SecNo=1;
                          Section++;
         //             alert("Section"+Section);
                      for(var i=1;i<Section;i++){
                            //alert("Sectin"+i);
                                 
               var tm;
                 if(i>1){
            tm=Math.ceil(TQno[i-1]/5)*10+10;
           // alert(tm);
        }
        else{
            tm=10;
        }
        
            li=document.createElement("div");
                                   li.innerHTML=SecText[i];
                                   li.setAttribute("id","Section"+i);
                                   li.setAttribute("style","color: white;font-size: 20px;top:"+tm+"px;");
                                   document.getElementById("section").appendChild(li);
                     
              
                
            
                
          //      alert("T"+TQno[i]);
                for(var j=0;j<=TQno[i]/5;j++)
   { 
        var li,y;
                          
                          if(j%2==0)
                          {
                              y=0;
                          }
                          else
                          {
                              y=1;
                          }
                
              
           
                
                li=document.createElement("div");
                                   li.setAttribute("class","row");
                                   li.setAttribute("id","rq"+j+i);
                                   li.setAttribute("style","font-size: 20px;padding:20px");
                                  
                                   document.getElementById("Section"+i).appendChild(li);
                                   
           var t;
            var tmp=TQno[i]/5;
            var tmp2=Math.floor(tmp);
            
            if(i<tmp2)
            {
                t=5;
            }
            else{
                
                t=TQno[i]%5;
            }
            for(var k=0;k<t;k++)
                                   {
                                    li=document.createElement("div");
                                    li.setAttribute("class","col-sm-4");
                                    
                                   
                       //            alert("k="+k);
                                   
                                      li.setAttribute("style","padding:6px;background-color:white;color:black; border-radius: 10px;font-size: 15px;width:25px;height:25px;");
                                    
                                    li.innerHTML=k+j*5+1;
                                    var q=k+j*5+1;
                                    li.setAttribute("id",i+"/"+q);
                                  //  alert("id="+i+"/"+q);
                                    document.getElementById("rq"+j+i).appendChild(li); 
                                   }
                               }
                           }
                       }
                      });
                      
   
                
        valueput();
              
                  })();
                   
          
          
        function next() {  
     ///    alert("cl");
           valueerase();
            if(TQno[SecNo]==Qno){
                if(SecNo<Section-1){
                SecNo++;
                Qno=1;
            }
            }
            else{
            Qno++;
        }
            document.getElementById("Qno").innerHTML=""+Qno;
             valueput();
        }
       
           
       function previous()
        {
            valueerase();
            if(Qno>1){
           Qno--;
       }
           else if(Qno==1)
           {
              
               if(SecNo>1){
                    SecNo--;
               Qno=TQno[SecNo];
           }
           }
            
            valueput();
            
    }
     
  
 
 
 function submit(){
     alert("gf");
     var json = JSON.stringify(ans);
      $.ajax({
      url: 'MarkScored',
      type:'post',
      dataType:'json',
      data:{json},
      success: function(result){
          alert(result);
          document.getElementById("total").value=result;
      }
  });
 }
  
  function markp(){
      if(ans[SecNo][Qno]==""){
      alert("Select answer first");
      }
      else if(document.getElementById(SecNo+"/"+Qno).style.backgroundColor=="orange"){
          document.getElementById(SecNo+"/"+Qno).style.backgroundColor="green";
      }
      else{
      document.getElementById(SecNo+"/"+Qno).style.backgroundColor="orange";
      }
  }
       
     function markr(){
         
      if(document.getElementById(SecNo+"/"+Qno).style.backgroundColor=="yellow"){
          document.getElementById(SecNo+"/"+Qno).style.backgroundColor="green";
      }
      else{
      document.getElementById(SecNo+"/"+Qno).style.backgroundColor="yellow";
      }
      document.getElementById(ans[SecNo][Qno]).style.backgroundColor="white";
      ans[SecNo][Qno]="";
  }
  
     </script>
                <input type="hidden" value id="total">
</div>
                 
</html>
