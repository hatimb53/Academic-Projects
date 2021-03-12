/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package h2k2_sim1;

/**
 *
 * @author Hatim
 */
public class Conarr {
      static int time=0;
  
 static  String name="";
  
 static  int priority=1,sub_time=1,burst_time=1,stio=1;
 static String id="";
 static boolean bound[]=new boolean[100];

 static  boolean premp=false,not_complete=false,ex_status=false,io_status=false;

 static  int nwfront[]=new int[100];
  static  int rdfront[]=new int[100];
  static  int rdrear[]=new int[100];
  static  int trrear[]=new int[100];
  static  int iorear[]=new int[100];
  static  int iofront[]=new int[100];
   static  Process temp;
   static  Process execute[] = new Process[100];

   

  
   static  Process nw[][]=new Process[100][10];
   static   Process ready[][]=new Process[100][10];
    static   Process terminate[][]=new Process[100][10];
    static   Process io[][]=new Process[100][10];
}
