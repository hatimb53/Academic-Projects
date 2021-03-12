package h2k2_sim1;

import java.util.Scanner;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Hatim
 */
public class fcfs_non
{
    Home hm;
   public fcfs_non(Home hm)
    {
        this.hm=hm;
    }
 public  void run(int count1)
{
 
    int frnt=0;
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
      //ex_status=false;
     
    }
  /*  if(execute.bound[execute.status]==true&&t==0);
     {
        
        iorear--;
        t++;
    }*/
  
 } 
  
     
   

  
   
     
      if(Container.iorear>-1&&Container.io[Container.iorear]!=null)
          
      {
       if(Container.io[Container.iorear].bound[Container.io[Container.iorear].status]==true)
   {
       Container.io[Container.iorear].stio++;
       Container.execute=Container.io[Container.iorear];
       Container.io[Container.iorear]=null;
        Container.iorear=( Container.iorear-1)%count1;
      
      
        
   }
      
      
      // iorear++;  
      for(int i=0;i<= Container.iorear;i++)
        {
         
        Container.io[i].crio++;
        Container.io[i].status++;
        }
      }
      
      
       if( Container.ex_status==false)
    {
         
     //  ex_status=true;
        System.out.println("rdfront="+ Container.rdfront);
        
        if( Container.ready[ Container.rdfront]!=null)
        {
             Container.execute=Container.ready[Container.rdfront];
             Container.ready[ Container.rdfront]=null;
             Container.rdfront=( Container.rdfront+1)%count1;
           Container.ex_status=true;
        
        }
         if(Container.ready[Container.rdfront]==null)
        {
            Container.rdfront=0;
            Container.rdrear=0;
        }
     
    }
        
  
    System.out.println("time "+Container.time);
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
      System.out.println("ready");
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
        //  jfir[tp].setText(ready[frnt].id+"");
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
    //jex.setText(execute.id);
      hm.jexd.setText(rd+" / "+Container.execute.burst_time);
   System.out.println("execute "+Container.execute.name);
    }
    if(Container.execute==null)
    {
        
            System.out.println("execute=null");
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
     System.out.println("terminate");
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
       
       // iorear--;
    }
   } 
     
    
     
 
    Container.time++;
  System.out.println("next");
 
  
}

}




