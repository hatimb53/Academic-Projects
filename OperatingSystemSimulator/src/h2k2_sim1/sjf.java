package h2k2_sim1;

import java.util.Scanner;

/**
 *
 * @author Hatim
 */
class sjf
{int abs(int k,int n)
    {
        k--;
        if(k==-1)
        {
            return n-1;
        }
        else
            return k;
    }
    Home hm;
  sjf(Home hm)
  {
      this.hm=hm;
  }
   void run(int count1)
{
 
    int frnt=0,t=1;
    boolean rr=false;
   
   
        if(Container.nwfront<count1&&Container.nw[Container.nwfront]!=null)
    {
    while(Container.nw[Container.nwfront].sub_time==Container.time)
    {
       
        Container.ready[Container.rdrear]=Container.nw[Container.nwfront];
        Container.nw[Container.nwfront]=null;
         Container.rdrear=(Container.rdrear+1)%count1;
            Container.nwfront=(Container.nwfront+1);   
            if(Container.nwfront==count1)
            {
                break;
            }
              rr=true;
    }
  
    }
        
      
        if(Container.execute!=null)
 {
     
    
    if(Container.execute.bound[Container.execute.status]==false)
    {
       
       Container.io[++Container.iorear]=Container.execute;
       
      Container.io[Container.iorear].crio=0;
      Container.execute=null;
      Container.ex_status=false;
      t=0;
    }
  /*  if(Container.execute.bound[Container.execute.status]==true&&t==0);
     {
        
        Container.iorear--;
        t++;
    }*/
  
 } 
  
     
   

  for(int j=0;j<Container.iorear;j++)
   { 
       for(int i=0;i<Container.iorear;i++)
   {
       if(Container.io[i]!=null)
       {
       if(Container.io[i].ibnd[Container.io[i].stio]-Container.io[i].crio<
               Container.io[i+1].ibnd[Container.io[i+1].stio]-Container.io[i+1].crio)
       {
           Container.temp=Container.io[i];
           Container.io[i]=Container.io[i+1];
           Container.io[i+1]=Container.temp;
       }
     //  System.out.println("io[i]="+io[i].name+" io[i+1]="+io[i+1].name+" io[i].stio="+io[i].stio+" io[i+1].stio="+io[i+1].stio);
      
       //System.out.println("io[i].ibnd[io[i].stio]="+io[i].ibnd[io[i].stio]+" io[i].crio="+io[i].crio+" io[i+1].ibnd[io[i+1].stio]="+io[i+1].ibnd[io[i+1].stio]+" io[i+1].crio="+io[i+1].crio);
       }
       
               
   }
       
   } 
     
      if(Container.iorear>-1&&Container.io[Container.iorear]!=null)
          
      {
       while(Container.io[Container.iorear].bound[Container.io[Container.iorear].status]==true)
   {
       Container.io[Container.iorear].stio++;
       Container.ready[Container.rdrear]=Container.io[Container.iorear];
       Container.io[Container.iorear]=null;
       Container.iorear=(Container.iorear-1)%count1;
       Container.rdrear=(Container.rdrear+1)%count1;
        if(Container.iorear==-1)
       {
          
           break;
       }
      
   }
      
      
      // Container.iorear++;  
      for(int i=0;i<=Container.iorear;i++)
        {
         
       Container.io[i].crio++;
       Container.io[i].status++;
        }
      }
      
      int frnt1,frnt2;
      frnt=Container.rdfront;
      int rear1=abs(Container.rdrear,count1);
      
      while(frnt!=rear1&&rr==true)
      { 
          frnt1=Container.rdfront;frnt2=(Container.rdfront+1)%count1;
          System.out.println("cnt="+Container.time);
          
           System.out.println("rear="+rear1);
          System.out.println("frnt1="+frnt1);
             System.out.println("n="+count1);
          while(frnt1!=rear1&&Container.ready[frnt2]!=null)
          {
              if(Container.ready[frnt1].burst_time>Container.ready[frnt2].burst_time)
              {
                  Container.temp=Container.ready[frnt1];
                  Container.ready[frnt1]=Container.ready[frnt2];
                  Container.ready[frnt2]=Container.temp;
                 
                  
              }
               frnt1=(frnt1+1)%count1;
                  frnt2=(frnt2+1)%count1;
             System.out.println("frnt1="+frnt1);
              
          }
          
           frnt=(frnt+1)%count1;
      }
     
        
       if(Container.ex_status==false)
    {
         
       
        System.out.println("Container.rdfront="+Container.rdfront);
        
        if(Container.ready[Container.rdfront]!=null)
        {
            Container.execute=Container.ready[Container.rdfront];
            Container.ready[Container.rdfront]=null;
            Container.rdfront=(Container.rdfront+1)%count1;
           Container.ex_status=true;
        
        }
         if(Container.ready[Container.rdfront]==null)
        {
            Container.rdfront=0;
            Container.rdrear=0;
        }
     
    }
        
  
    System.out.println("Container.time "+Container.time);
      System.out.println("new");
    for(int k=0;k<count1;k++)
    {
        if(Container.nw[k]!=null)
        {
            
        
      System.out.print(Container.nw[k].name+" "); 
        }
        if(Container.nw[k]==null)
        {
            System.out.print("null");
        }
        
    }
    System.out.println(); 
      System.out.println("Container.ready");
      frnt=Container.rdfront;
    do
    {
        if(Container.ready[frnt]!=null)
        {
          System.out.print(Container.ready[frnt].name+" "); 
         
         frnt=(frnt+1)%count1;
        }
         if(Container.ready[frnt]==null)
        {
            System.out.println("null");
        }
        
     }while(frnt!=Container.rdrear);
        
    if(Container.execute!=null)
        
    {
   System.out.println("Container.execute "+Container.execute.name);
    }
    if(Container.execute==null)
    {
        
            System.out.println("Container.execute=null");
    }
    System.out.println("io");
   for(int k=Container.iorear;k>=0;k--)
   {
       
       if(Container.io[k]!=null)
       {
        System.out.print(Container.io[k].name+" ");
       }
        if(Container.io[k]==null)
        {
            System.out.println("null");
        }
   }
     System.out.println("terminate");
      for(int k=0;k<=Container.trrear;k++)
   {
       if(Container.terminate[k]!=null)
       {
        System.out.print(Container.terminate[k].name+" ");
       }
        if(Container.terminate[k]==null)
        {
            //System.out.print("null");
        }
   }
      if(Container.execute!=null)
   {
    Container.execute.status++;
   
    if(Container.execute.status==Container.execute.burst_time)
    { Container.trrear=(Container.trrear+1)%count1;
        Container.terminate[Container.trrear]=Container.execute;
        Container.execute=null;
       
        Container.ex_status=false;
        t=0;
       // Container.iorear--;
    }
   } 
     
    
     
 
    Container.time++;
  System.out.println("next");
  

}

}



