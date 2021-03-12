/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package h2k2_sim1;

/**
 *
 * @author Hatim
 */
public class Process
{ 
public int priority,sub_time,burst_time=3;
String id;
 public boolean bound[]=new boolean[10];
public boolean premp,not_complete;
public int status=0,stio=0,crio=0;
public int ibnd[]=new int[10-2];
public String name;
public int wt=0;


  public  Process(String id,String name,int priority,int sub_time,int burst_time,boolean premp,boolean not_complete,boolean bound[])
    {
      
        this.id=id;
        this.name=name;
        this.priority=priority;
        this.sub_time=sub_time;
        this. burst_time=burst_time;
        this.premp=premp;
        this.not_complete=not_complete;
        int t=0,x=0;
        for(int i=0;i<burst_time;i++)
        {
            this.bound[i]=bound[i];
            if(bound[i]==false)
            {
                this.ibnd[x]=++t;
               
            }
            else
            {
                if(i!=0)
                {
                 //System.out.println("ibnnd["+x+"]="+this.ibnd[x]);
                x++;
                t=0;
                }
            }
           // System.out.println("bound["+i+"]="+this.bound[i]);
        }
        //System.out.println("name="+this.name+" sub_time="+this.sub_time+"burst_time"+this.burst_time);
       
      }
    
    
    
}