/*
 * To change this Container.template, choose Tools | Container.templates
 * and open the Container.template in the editor.
 */
/*
 * To change this Container.template, choose Tools | Container.templates
 * and open the Container.template in the editor.
 */
package h2k2_sim1;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Hatim
 */
public class priority_preemptive
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
    Home hm;
    public priority_preemptive(Home hm)
    {
        this.hm=hm;
    }
  public void run(int count1)
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
              if(Container.ready[frnt1].priority<Container.ready[frnt2].priority)
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
        if(Container.ready[Container.rdfront]!=null&&Container.execute!=null)
        {if(Container.ready[Container.rdfront].priority>Container.execute.priority)
              {
                  Container.temp=Container.ready[Container.rdfront];
                  Container.ready[Container.rdfront]=Container.execute;
                  Container.execute=Container.temp;
                 
                  
              }
        }
    System.out.println("Container.time "+Container.time);
      System.out.println("new");
      int tp=0;
    for(int k=0;k<count1;k++)
    {
        if(Container.nw[k]!=null)
        {
           tp++; 
       hm.jTable3.setValueAt(tp+"",tp-1,0);
        hm.jTable3.setValueAt(Container.nw[k].id,tp-1,1);
        hm.jTable3.setValueAt(Container.nw[k].sub_time,tp-1,2);
        hm.jTable3.setValueAt(Container.nw[k].burst_time,tp-1,3);
        
        
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
    tp=0;
      do
    {
        if(Container.ready[frnt]!=null)
        {
            Container.ready[frnt].wt++;
          System.out.print(Container.ready[frnt].name+" "); 
          int rd=Integer.parseInt(Container.ready[frnt].id.substring(1,Container.ready[frnt].id.length()));
          rd--;
         hm.jfir[tp].setIcon(hm.img[rd]);
        //  jfir[tp].setText(Container.ready[frnt].id+"");
          rd=Container.ready[frnt].status;
         hm.jfdr[tp].setText(rd+" / "+Container.ready[frnt].burst_time);
         tp++;
         frnt=(frnt+1)%count1;
        }
         if(Container.ready[frnt]==null)
        {
            System.out.println("null");
        }
        
     }while(frnt!=Container.rdrear);
        
    if(Container.execute!=null)
        
    {  int rd=Integer.parseInt(Container.execute.id.substring(1,Container.execute.id.length()));
     rd--;  
    hm.jex.setIcon(hm.img[rd]);
    rd=Container.execute.status+1;
    //jex.setText(Container.execute.id);
      hm.jexd.setText(rd+" / "+Container.execute.burst_time);
   System.out.println("Container.execute "+Container.execute.name);
    }
    if(Container.execute==null)
    {
        
            System.out.println("Container.execute=null");
    }
    System.out.println("io");
    tp=0;
   for(int k=Container.iorear;k>=0;k--)
   {
       
       if(Container.io[k]!=null)
       {
           int rd=Integer.parseInt(Container.io[k].id.substring(1,Container.io[k].id.length()));
      rd--;
           hm.jioi[tp].setIcon(hm.img[rd]);
      
      //     jioi[tp].setText(io[k].id);
            rd=Container.io[k].status;
    hm. jiod[tp].setText(rd+" / "+Container.io[k].burst_time);
        System.out.print(Container.io[k].name+" ");
        tp++;
       }
        if(Container.io[k]==null)
        {
            System.out.println("null");
        }
   }
     System.out.println("Container.terminate");
     tp=0;
     DefaultTableModel dtm=(DefaultTableModel) hm.jTable5.getModel();
     String colm[]={"","","",""};
      for(int k=0;k<=Container.trrear;k++)
   {
       if(Container.terminate[k]!=null)
       {
              tp=k+1;
           dtm.addRow(colm);
        hm.jTable5.setValueAt(tp+"",k,0);
        hm.jTable5.setValueAt(Container.terminate[k].id,k,1);
        hm.jTable5.setValueAt(Container.terminate[k].sub_time,k,2);
       hm. jTable5.setValueAt(Container.terminate[k].burst_time,k,3);
        
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

  
      /*if(Container.execute.bound[Container.execute.status]==true)
    {
        t++;
    }
      if(t==slice)
      {
          t=0;
          transfer to the cpu from Container.ready queue
      }*/
}
/* for(int k=0;k<=Container.trrear;k++)
   {
       if(Container.terminate[k]!=null)
       {
        System.out.print(Container.terminate[k].name+" ");
       }
        if(Container.terminate[k]==null)
        {
          //  System.out.print("null");
        }
   }*/
}
//Process pr=new Process();




