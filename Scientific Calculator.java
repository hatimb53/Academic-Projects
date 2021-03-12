/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package equation;

import java.util.Scanner;

/**
 *
 * @author Hatim
 */
public class Equation {

    /**
     * @param args the command line arguments
     */
    public Equation(String user)
    {
        this.user=user;
    }
  static  String user="";
   static public String expression(int p,int q,double X,double Y, double Z,boolean deg)
    {
        String exp[]=new String[100];
        int x=-1;
        boolean res=false,br=false,br1=false;
        for(int i=p;i<q;i++)
        {
           char ch=user.charAt(i);
         //  System.out.println("ch="+ch+" i="+i);
           
            if(ch=='+'||ch=='-'||ch=='*'||ch=='/'||ch=='^'||ch=='('||ch==')')
            {
                if(ch=='-'||ch=='+')
                {
                   
                    if(x!=-1&&!exp[x].equals("("))
                    {
                         if(exp[x].equals("*")||exp[x].equals("/")||exp[x].equals("^"))
                      {
                        exp[++x]="(";
                        br=true;
                      }
                         else
                         {
                          exp[++x]="+";
                         }
                    }
                    exp[++x]="0";
                    
                  
                }
                res=false;
                x++;
                exp[x]=ch+"";
               // System.out.println("+exp["+x+"]="+exp[x]);
         
            }
           else if(ch=='s'||ch=='c'||ch=='t'||ch=='a'||ch=='l'||ch=='e')
            {
                res=false;
               int t=i+1;
               
               int tmp=i+1;
               
               while(ch!='(')
               {
                   ch=user.charAt(t);
                   t++;
               }
               String s=user.substring(i, t);
               i=t;
              // System.out.println("ii="+i);
               t=1;
              int temp=i;
                 while(t!=0)
                             {
                                 ch=user.charAt(i);
                                 if(ch=='(')
                                 {
                                     t++;
                                 }
                                 if(ch==')')
                                 {
                                     t--;
                                 }
                                 i++;
                         }
                 // System.out.println("ii="+i);
                 ch=user.charAt(tmp);
                 if(s.equals("log("))
                 {
                     ch='l';
                 }
                         
                             
                      x++;        
                           
                switch(ch)
                {
                    case 'i':
                        if(s.equals("sin("))
                           {
                              // System.out.println("temp="+temp+" i="+i);
                               if(deg==false)
                               {
                               exp[x]=Math.sin(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))+"";
                               }
                               else
                               {
                                   exp[x]=Math.sin(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg))*3.14/180)+"";
                               }
                              i--;
                           }
                      break;
                        
                    case 'o':
                        if(s.equals("cos("))
                           {
                               if(deg==false)
                               {
                               exp[x]=Math.cos(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))+"";
                               }
                               else
                               {
                                   exp[x]=Math.cos(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg))*3.14/180)+"";
                               }
                              i--;
                           }
                      break;
                        
                    case 'a':
                        if(s.equals("tan("))
                           {
                                if(deg==false)
                               {
                               exp[x]=Math.tan(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))+"";
                               }
                               else
                               {
                                   exp[x]=Math.tan(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg))*3.14/180)+"";
                               }
                              i--;
                           }
                      break;     
                        
                     case 's':
                        if(s.equals("asin("))
                           {
                               if(deg==false)
                               {
                               exp[x]=Math.asin(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))+"";
                               }
                               else
                               {
                                    exp[x]=Math.asin(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))*180/3.14+"";
                               }
                               
                              
                               i--;
                           }
                      break;
                         
                     case 'c':
                        if(s.equals("acos("))
                           {
                               if(deg==false)
                               {
                               exp[x]=Math.acos(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))+"";
                               }
                               else
                               {
                                    exp[x]=Math.acos(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))*180/3.14+"";
                               }
                               
                              i--;
                           }
                      break;
                        
                     case 't':
                        if(s.equals("atan("))
                           {
                               if(deg==false)
                               {
                               exp[x]=Math.atan(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))+"";
                               }
                               else
                               {
                                    exp[x]=Math.atan(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))*180/3.14+"";
                               }
                               
                              i--;
                           }
                      break;
                         
                     case 'n':
                        if(s.equals("ln("))
                           {
                               exp[x]=Math.log(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))+"";
                              i--;
                           }
                      break;
                      
                      case 'l':
                        if(s.equals("log("))
                           {
                               exp[x]=Math.log10(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))+"";
                               i--;
                           }
                      break;
                          
                      case 'x':
                        if(s.equals("exp("))
                           {
                               exp[x]=Math.exp(Double.parseDouble(expression(temp,i-1,X,Y,Z,deg)))+"";
                              i--;
                           }
                      break;
                             
                        
                }
                if(exp[x].equals("NaN"))
                {
                    return "DOMAIN ERROR";
                }
            }
            else
            {
                if(res==true)
                {
                    
                    exp[x]=exp[x]+ch;
                    
                   // System.out.println("exp["+x+"]="+exp[x]);
                }
              if(res==false)
               {
                  
                   x++;
                   exp[x]=ch+"";
                   //System.out.println("exp["+x+"]="+exp[x]);
                   res=true;
               }
               
              if(br==true)
              {
                  br1=true;
                  br=false;
              }
              
              
            }
            if(br1==true)
           {
               br1=false;
               exp[++x]=")";
           }
        }
       /* System.out.println("expression");
        for(int i=0;i<x+1;i++)
        {
            System.out.print(exp[i]+" ");
        }*/
        
      
        return converse(exp,++x,X,Y,Z)+""; 
    }
    
  static  public double converse(String exp[],int l,double X,double Y,double Z)
    {
       
        String equat[]=new String [50];
        if(l==1)
        {
            return Double.parseDouble(exp[0]);
        }
        int top=-1,x=0;
        String stack[]=new String[50];
        for(int i=0;i<l;i++)
        {
          if(exp[i].equals("+")||exp[i].equals("-")||exp[i].equals("*")||exp[i].equals("/")||exp[i].equals("(")||exp[i].equals(")")||exp[i].equals("^"))
          {
            if(!exp[i].equals(")"))
            {
                //System.out.print("stack["+top+"]="+stack[top]);
               // System.out.print("exp["+i+"]="+exp[i]);
                if(top>=0&&((exp[i].equals("+")&&stack[top].equals("-"))||(exp[i].equals("+")&&stack[top].equals("*"))||(exp[i].equals("-")&&stack[top].equals("*"))||(exp[i].equals("+")&&stack[top].equals("/"))||(exp[i].equals("-")&&stack[top].equals("/"))||(exp[i].equals("*")&&stack[top].equals("^"))||(exp[i].equals("/")&&stack[top].equals("^"))||(exp[i].equals("+")&&stack[top].equals("^"))||(exp[i].equals("-")&&stack[top].equals("^"))))
                {
                   // System.out.println("top="+top);
                    equat[x++]=stack[top];
                    stack[top]=exp[i];
                }
                else
                {
                    
                   stack[++top]=exp[i];
                }
            }
            if(exp[i].equals(")"))
            {
                while(!stack[top].equals("("))
                {
                    equat[x++]=stack[top--];
                }
                top--;
                
            }
          /*  for(int k=0;k<=top;k++)
            System.out.println(stack[k]);*/
        }
        else
          {
              if(exp[i].equals("x"))
              {
                  equat[x++]=X+"";
              }
             else if(exp[i].equals("-x"))
              {
                  equat[x++]="-"+X;
              }
             else if(exp[i].equals("+x"))
              {
                  equat[x++]="+"+X;
              }
              else if(exp[i].equals("y"))
              {
                  equat[x++]=Y+"";
              }
              else if(exp[i].equals("-y"))
              {
                  equat[x++]="-"+Y;
              }
               else if(exp[i].equals("+y"))
              {
                  equat[x++]="+"+Y;
              }
              else if(exp[i].equals("z"))
              {
                  equat[x++]=Z+"";
              }
              else if(exp[i].equals("-z"))
              {
                  equat[x++]="-"+Z;
              }
               else if(exp[i].equals("+z"))
              {
                  equat[x++]="+"+Z;
              }
              else
              {
                equat[x++]=exp[i];
              }
          }
        }
        while(top>=0)
        {
            equat[x++]=stack[top--];
        }
      /*  System.out.println("dfsg");
        for(int k=0;k<x;k++)
        {
            System.out.print(equat[k]+" ");
        }
        // System.out.println("dfsg");*/
        return calc(equat,x);
    }
   
  static  public double calc(String equat[],int x)
    {
        double stack[]=new double[50];
        int top=-1;
        for(int i=0;i<x;i++)
        {
            if(equat[i].equals("+")||equat[i].equals("-")||equat[i].equals("*")||equat[i].equals("/")||equat[i].equals("^"))
            {
                if(equat[i].equals("+"))
                {
                    stack[top-1]=stack[top-1]+stack[top];
                    top--;
                }
                if(equat[i].equals("-"))
                {
                    stack[top-1]=stack[top-1]-stack[top];
                    top--;
                }
                if(equat[i].equals("*"))
                {
                    stack[top-1]=stack[top-1]*stack[top];
                    top--;
                }
                if(equat[i].equals("/"))
                {
                    stack[top-1]=stack[top-1]/stack[top];
                    top--;
                }
                if(equat[i].equals("^"))
                {
                    stack[top-1]=Math.pow(stack[top-1],stack[top]);
                    top--;
                }
            }
            else
            {
                stack[++top]=Double.parseDouble(equat[i]);
            }
          /*  System.out.println("\nstack");
            for(int k=0;k<=top;k++)
            {
                System.out.print(stack[k]+" ");
            }
            System.out.println("\n");*/
        }
      // System.out.println(stack[0]);
        return stack[0];
    }
    
    public static void main(String[] args) {
         Scanner sc=new Scanner(System.in);
       //  System.out.println("Enter d for degree and r for radian calculation");
       // String s=sc.nextLine();
        System.out.println("Enter eq");
       
        user=sc.nextLine();
       
        boolean deg=false;
      //  if(s.equals("d"))
         {
                    deg=true;
                    System.out.println(deg);
         }
    
      
       try
       {
        System.out.println("ans: "+expression(0,user.length(),2,3,4,deg));
       }
       catch(Exception e)
       {
           System.out.println("Syntax Error");
       }
       
        // TODO code application logic here
    }
}
