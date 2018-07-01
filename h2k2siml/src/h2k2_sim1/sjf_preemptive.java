/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package h2k2_sim1;

import java.util.Scanner;

/**
 *
 * @author Hatim
 */
class sjf_preemptive
{
    int abs(int k,int n)
    {
        k--;
        if(k==-1)
        {
            return n-1;
        }
        else
            return k;
    }
   void run()
{
 int n=1,time=0;
  
  String name="";
  
  int priority=1,sub_time=1,burst_time=1,stio=1;
String id="";
  boolean bound[]=new boolean[100];

  boolean premp=false,not_complete=false,ex_status=false,io_status=false;

  int nwfront=0,nwrear=0,rdfront=0,rdrear=0,trfront=0,trrear=-1,iorear=-1,iofront=0;
  
  Process temp,execute=null;
Scanner sc =new Scanner(System.in);
   
System.out.println("Enter no. of Process");
     
n=sc.nextInt();
  
      Process nw[]=new Process[n];
     Process ready[]=new Process[n];
      Process terminate[]=new Process[n];
      Process io[]=new Process[n];
       

      for(int i=0;i<n;i++)
      {
         
         
          System.out.println("Enter parameter for Process "+i+1);
          System.out.println("name sub_time burst_time");
          id="";
          name=sc.next();
          priority=1;
          sub_time=sc.nextInt();
          burst_time=sc.nextInt();
          premp=false;
          not_complete=false;
          System.out.println("Enter bound");
          for(int j=0;j<burst_time;j++)
          { 
              bound[j]=sc.nextBoolean();
          }
          
          
          
          
        nw[i]=new Process(id,name,priority,sub_time,burst_time,premp,not_complete,bound);
        ready[i]=null;
        terminate[i]=null;
        io[i]=null;
        
        
      }
    for(int j=0;j<n;j++)
    {
  for(int i=0;i<n-1;i++)
  { 
       
      if(nw[i+1].sub_time<nw[i].sub_time)
      {
          temp=nw[i];
          nw[i]=nw[i+1];
          nw[i+1]=temp;
      }
  }
    }
    for(int i=0;i<n;i++)
    {
         System.out.print(nw[i].name+" ");
         
    }
    int frnt=0,t=1;
    boolean rr=false;
   
while(true)
{
   
        if(nwfront<n&&nw[nwfront]!=null)
    {
    while(nw[nwfront].sub_time==time)
    {
       
        ready[rdrear]=nw[nwfront];
        nw[nwfront]=null;
         rdrear=(rdrear+1)%n;
            nwfront=(nwfront+1);   
            if(nwfront==n)
            {
                break;
            }
              rr=true;
    }
  
    }
        
      
        if(execute!=null)
 {
     
    
    if(execute.bound[execute.status]==false)
    {
       
       io[++iorear]=execute;
       
      io[iorear].crio=0;
      execute=null;
      ex_status=false;
      t=0;
    }
  /*  if(execute.bound[execute.status]==true&&t==0);
     {
        
        iorear--;
        t++;
    }*/
  
 } 
  
     
   

  for(int j=0;j<iorear;j++)
   { 
       for(int i=0;i<iorear;i++)
   {
       if(io[i]!=null)
       {
       if(io[i].ibnd[io[i].stio]-io[i].crio<
               io[i+1].ibnd[io[i+1].stio]-io[i+1].crio)
       {
           temp=io[i];
           io[i]=io[i+1];
           io[i+1]=temp;
       }
     //  System.out.println("io[i]="+io[i].name+" io[i+1]="+io[i+1].name+" io[i].stio="+io[i].stio+" io[i+1].stio="+io[i+1].stio);
      
       //System.out.println("io[i].ibnd[io[i].stio]="+io[i].ibnd[io[i].stio]+" io[i].crio="+io[i].crio+" io[i+1].ibnd[io[i+1].stio]="+io[i+1].ibnd[io[i+1].stio]+" io[i+1].crio="+io[i+1].crio);
       }
       
               
   }
       
   } 
     
      if(iorear>-1&&io[iorear]!=null)
          
      {
       while(io[iorear].bound[io[iorear].status]==true)
   {
       io[iorear].stio++;
       ready[rdrear]=io[iorear];
       io[iorear]=null;
       iorear=(iorear-1)%n;
       rdrear=(rdrear+1)%n;
        if(iorear==-1)
       {
          
           break;
       }
      
   }
      
      
      // iorear++;  
      for(int i=0;i<=iorear;i++)
        {
         
       io[i].crio++;
       io[i].status++;
        }
      }
      
      int frnt1,frnt2;
      frnt=rdfront;
      int rear1=abs(rdrear,n);
      
      while(frnt!=rear1&&rr==true)
      { 
          frnt1=rdfront;frnt2=(rdfront+1)%n;
          System.out.println("cnt="+time);
          
           System.out.println("rear="+rear1);
          System.out.println("frnt1="+frnt1);
             System.out.println("n="+n);
          while(frnt1!=rear1&&ready[frnt2]!=null)
          {
              if(ready[frnt1].burst_time>ready[frnt2].burst_time)
              {
                  temp=ready[frnt1];
                  ready[frnt1]=ready[frnt2];
                  ready[frnt2]=temp;
                 
                  
              }
               frnt1=(frnt1+1)%n;
                  frnt2=(frnt2+1)%n;
             System.out.println("frnt1="+frnt1);
              
          }
          
           frnt=(frnt+1)%n;
      }
     
        
       if(ex_status==false)
    {
         
       
        System.out.println("rdfront="+rdfront);
        
        if(ready[rdfront]!=null)
        {
            execute=ready[rdfront];
            ready[rdfront]=null;
            rdfront=(rdfront+1)%n;
           ex_status=true;
        
        }
         if(ready[rdfront]==null)
        {
            rdfront=0;
            rdrear=0;
        }
     
    }
        if(ready[rdfront]!=null&&execute!=null)
        {if(ready[rdfront].burst_time<execute.burst_time)
              {
                  temp=ready[rdfront];
                  ready[rdfront]=execute;
                  execute=temp;
                 
                  
              }
        }
    System.out.println("time "+time);
      System.out.println("new");
    for(int k=0;k<n;k++)
    {
        if(nw[k]!=null)
        {
            
        
      System.out.print(nw[k].name+" "); 
        }
        if(nw[k]==null)
        {
            System.out.print("null");
        }
        
    }
    System.out.println(); 
      System.out.println("ready");
      frnt=rdfront;
    do
    {
        if(ready[frnt]!=null)
        {
          System.out.print(ready[frnt].name+" "); 
        
         frnt=(frnt+1)%n;
        }
         if(ready[frnt]==null)
        {
            System.out.println("null");
        }
        
     }while(frnt!=rdrear);
        
    if(execute!=null)
        
    {
   System.out.println("execute "+execute.name);
    }
    if(execute==null)
    {
        
            System.out.println("execute=null");
    }
    System.out.println("io");
   for(int k=iorear;k>=0;k--)
   {
       
       if(io[k]!=null)
       {
        System.out.print(io[k].name+" ");
       }
        if(io[k]==null)
        {
            System.out.println("null");
        }
   }
     System.out.println("terminate");
      for(int k=0;k<=trrear;k++)
   {
       if(terminate[k]!=null)
       {
        System.out.print(terminate[k].name+" ");
       }
        if(terminate[k]==null)
        {
            //System.out.print("null");
        }
   }
      if(execute!=null)
   {
    execute.status++;
   
    if(execute.status==execute.burst_time)
    { trrear=(trrear+1)%n;
        terminate[trrear]=execute;
        execute=null;
       
        ex_status=false;
        t=0;
       // iorear--;
    }
   } 
     
     if(trrear==n-1)
   {
       break;
   }
     
 
    time++;
  System.out.println("next");
  int u=sc.nextInt();
  
      /*if(execute.bound[execute.status]==true)
    {
        t++;
    }
      if(t==slice)
      {
          t=0;
          transfer to the cpu from ready queue
      }*/
}
/* for(int k=0;k<=trrear;k++)
   {
       if(terminate[k]!=null)
       {
        System.out.print(terminate[k].name+" ");
       }
        if(terminate[k]==null)
        {
          //  System.out.print("null");
        }
   }*/
}
//Process pr=new Process();

}


