package pkg2d;


import java.applet.Applet;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.util.Scanner;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Compaq
 */
public class applet extends Applet  implements MouseListener, MouseMotionListener{
    boolean cl=false;
   /* @Override
  /*  public void init() {
     
     
  /*    BufferedImage bim = new BufferedImage(1,1,BufferedImage.TYPE_4BYTE_ABGR);
setCursor(getToolkit().createCustomCursor(bim,(new Point(0,0)),"name"));
   }*/
    @Override
    public void mouseEntered( MouseEvent e ) {
      // called when the pointer enters the applet's rectangular area
   }
    @Override
   public void mouseExited( MouseEvent e ) {
      // called when the pointer leaves the applet's rectangular area
   }
    @Override
   public void mouseClicked( MouseEvent e ) {
     cl=true;  
        //setBackground(Color.black);
        repaint();
      // called after a press and release of a mouse button
      // with no motion in between
      // (If the user presses, drags, and then releases, there will be
      // no click event generated.)
   e.consume();
    }
   static int m=1;
   public void mousePressed( MouseEvent e ) {  // called after a button is pressed down
    
   }
   public void mouseReleased( MouseEvent e ) {  // called after a button is released
   
   }int xpos,ypos;
   public void mouseMoved( MouseEvent e ) {  // called during motion when no buttons are down
    xpos=e.getX();
    ypos=e.getY();
    
    th=((xpos-960)*180)/(960);
    th1=((ypos-540)*180)/540;
      showStatus( "Mouse at (" + xpos + "," + ypos + ")" );
     repaint();
      e.consume();
   }
   static int mx,my;
   int temp=0;
  static double th=0,th1=0;
   public void mouseDragged( MouseEvent e )   // called during motion with buttons down
   {  
      showStatus( "Mouse at (" + mx + "," + my + ")" );
     // repaint();
      e.consume();
      
   }
    public void init()
    {
         addMouseListener( this );
      addMouseMotionListener( this );
        setBackground(Color.black);
        setForeground(Color.black);
     //   System.out.println("Enter eq");
        Scanner sc=new Scanner(System.in);
     //  user=sc.nextLine();
    }
    String user="";
    public void point(int x,int y,Color col,Graphics g)
    {//th1=0;
  //  System.out.println("th1="+th1);
        int h=680+10*x;
        int k=350-10*y;
       
        g.setColor(col);
        g.fillOval(h,k,1,1);
    }
    public double f(double x,double y,double z)
    {
        return x*x+y-100;
    }
   double abs(double  x)
   {
       if(x<0)
       {
           x=-x;
       }
       return x;
   }
            
    public double d(char ch,double x,double y,double z)
    {
        double h=0.00001;
        if(ch=='x')
        {
            return (f(x+h,y,z)-f(x,y,z))/h;
        }
        if(ch=='y')
        {
            return (f(x,y+h,z)-f(x,y,z))/h;
        }
         if(ch=='z')
        {
            return (f(x,y,z+h)-f(x,y,z))/h;
        }
         return 0;
        
    }

    public void paint(Graphics g)
    {
        int xx=(int)(200*Math.cos(3.14*30.0/180.0));
        int yy=(int)(200*Math.sin(3.14*30.0/180.0));
       setForeground(Color.blue);
        g.drawLine(960,540,960*2,540);  
        g.drawLine(960,540,960,540*2);  
        g.drawLine(960,540,0,540);
         g.drawLine(960,540,960,0);
        //g.fillOval(767,548,1,1);
        setForeground(Color.blue);
        
        for(int x=-100;x<=100;x++)
        {
            for(int y=-100;y<=100;y++)
            {
               /* if(x==0||y==0)
                {
                   point(x,y,Color.blue,g); 
                }*/
                if(y==10*Math.sin(x*10))
                {
                    point(x,y,Color.red,g);
                }
            }
        }
    }
    }
