package h2k2_sim1;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Hatim
 */
public class sprocess
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
   sprocess(Home hm)
    {
        this.hm=hm;
    }
   void run()
{


  
    int frnt=0;
    boolean rr=false;
   
   
        if(Container.nwfront<1&&Container.nw[Container.nwfront]!=null)
    {
    if(Container.nw[Container.nwfront].sub_time==Container.time)
    {
        DefaultTableModel dtm=(DefaultTableModel)hm.jTable3.getModel();
         dtm.removeRow(hm.cnt-1);
        Container.ready[Container.rdrear]=Container.nw[Container.nwfront];
        Container.nw[Container.nwfront]=null;
         Container.rdrear=(Container.rdrear+1)%1;
            Container.nwfront=(Container.nwfront+1);   
            hm.cnt--;
           
    }
  
    }
        
      
        if(Container.execute!=null)
 {
     
    
    if(Container.execute.bound[Container.execute.status]==false)
    {
       
       Container.io[0]=Container.execute;
       
      Container.io[0].crio=0;
      Container.execute=null;
      Container.ex_status=false;
     
    }
  /*  if(Container.execute.bound[Container.execute.status]==true&&t==0);
     {
        
        iorear--;
        t++;
    }*/
  
 } 
  
     
   

  
   
     
      if(Container.io[0]!=null)
          
      {
       if(Container.io[0].bound[Container.io[0].status]==true)
   {
       Container.io[0].stio++;
       Container.execute=Container.io[0];
       Container.io[0]=null;
              
   }
      
      if(Container.io[0]!=null)
      {Container.io[0].crio++;
       Container.io[0].status++;
      }  
      
      
      }   
     //  Container.ex_status=true;
        System.out.println("Container.rdfront="+Container.rdfront);
        
        if(Container.ready[Container.rdfront]!=null)
        {
            Container.execute=Container.ready[Container.rdfront];
            Container.ready[Container.rdfront]=null;
            Container.rdfront=(Container.rdfront+1)%1;
           Container.ex_status=true;
        
        }
         if(Container.ready[Container.rdfront]==null)
        {
            Container.rdfront=0;
            Container.rdrear=0;
        }
     
    
        
  
    System.out.println("time "+Container.time);
      System.out.println("new");
     int tp=0;
    for(int k=0;k<1;k++)
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
         frnt=(frnt+1)%1;
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
   
       if(Container.io[0]!=null)
       {
           int rd=Integer.parseInt(Container.io[0].id.substring(1,Container.io[0].id.length()));
      rd--;
           hm.jioi[tp].setIcon(hm.img[rd]);
      
      //     jioi[tp].setText(io[k].id);
            rd=Container.io[0].status;
    hm. jiod[tp].setText(rd+" / "+Container.io[0].burst_time);
        System.out.print(Container.io[0].name+" ");
        tp++;
       }
        if(Container.io[0]==null)
        {
            System.out.println("null");
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
    { Container.trrear=(Container.trrear+1)%1;
        Container.terminate[Container.trrear]=Container.execute;
        Container.execute=null;
       
        Container.ex_status=false;
       
       // iorear--;
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




