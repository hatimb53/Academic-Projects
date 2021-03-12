/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package maze;


import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import javax.imageio.ImageIO;

/**
 *
 * @author Hatim
 */
public class Maze {
   static int x,y;
  static BufferedImage image;
   
   public static boolean check(int i,int j){
       int clr=image.getRGB(j,i-3);
                int red=(clr&0x00ff0000)>>16;
               int  green=(clr&0x0000ff00)>>8;
               int   blue=clr&0x000000ff;
         if(red>=150&&blue>=150&&green>=150)
         {
             return true;
         }
         return false;
   }
   public static boolean walk(int i,int j,char ch)
    {   
        
        if(check(i-3,j)&&ch!='d'){
            walk(i-1,j,'u');
        }
        if(check(i,j-3)&&ch!='r'){
            walk(i,j-1,'l');
        }
        if(check(i+3,j)&&ch!='u'){
            walk(i+1,j,'d');
        }
        if(check(i,j+3)&&ch!='l'){
            walk(i,j+1,'d');
        }
        if(check(i-3,j-3)&&ch!='3'){
            walk(i-1,j-1,'1');
        }
        if(check(i+3,j+3)&&ch!='1'){
            walk(i+1,j+1,'3');
        }
        if(check(i-3,j+3)&&ch!='4'){
            walk(i-1,j+1,'2');
        }
        if(check(i+3,j+3)&&ch!='2'){
            walk(i+1,j+1,'4');
        }
                 
    return false;
                     }
         
         
   
    public static boolean traverse(int i,int j,char ch, BufferedImage image,int p,int q)
    {
         boolean l=false,r=false,u=false,d=false;
         
         int clr=image.getRGB(p,q);
                 int red=(clr&0x00ff0000)>>16;
                 int green=(clr&0x0000ff00)>>8;
                 int blue=clr&0x000000ff;
                  Color col=new Color(0,0,255);
                 int rgb=col.getRGB();
          // if(i>=6&&i<8&&j>=48&&j<54)
                
                System.out.println(" ["+red+" "+green+" "+blue+" |"+ch+" ]");
            System.out.println(" i="+i+" j="+j);
          
         if(red>=200&&blue>=200&&green>=200)
         {
        if(ch!='l')
        {
           
          l=traverse(i+8,j,'r',image,i+6,j);
        }
        if(l==true)
        {
              for(int o=i+3;o<i+6;o++)
            {
                image.setRGB(o, j+3, rgb);
            }
           
          
           System.out.println("l");
            return true;
        }
            if(ch!='r'&&ch!='y')
        {
          r= traverse(i-8,j,'l',image,i-1,j);
        }
            if(r==true)
        {
            for(int o=i-3;o>i-6;o--)
            {
           image.setRGB(o, j+3, rgb);
            }
           
            System.out.println("r");
            return true;
        }
        if(ch!='u')
        {
          d=traverse(i,j+8,'d',image,i,j+6);
        }
        if(d==true)
        {
           
              for(int o=j+3;o<j+6;o++)
            {
           image.setRGB(i+3, o, rgb);
            }
          // image.setRGB(i+3, j+3, rgb);
            System.out.println("d");
            return true;
        }
        if(ch!='d')
        {
           u=traverse(i,j-8,'u',image,i,j-1);
            
        }
        if(u==true)
        {
              for(int o=j-3;o>j-6;o--)
            {
           image.setRGB(i+3, o, rgb);
            }
           
            
           System.out.println("u");
           
            return true;
        }
     
         }
         else if(red>=78&&red<=93&&green>=18&&green<=27&&blue>=31&&blue<=34)
         {
           //  System.out.println("sdfdfbhsfhjygjugtkuhyikiykyhkygkifrjudjuyfrfkitugkugtkugtkugtlyli");
             return true;
             
         }
         return false;
    }
   
    public static void main(String args[])
    {
    
       File f=new File("/home/hatim/Pictures/maze.png");
     //   File f1=new File("D:\\img\\col.png");
       try
       {
       image=ImageIO.read(f);
      // int i=0,j=0; f136 0 21
     //  traverse(48,393,'y',image,48,393);
      //   int x=
 // 255 127 39 ;
       System.out.println(image.getWidth()+" "+image.getHeight());
       for(int i=0;i<image.getHeight();i++)
       {
            for(int j=0;j<image.getWidth();j++)
            {
                 int clr=image.getRGB(j,i);
                 int red=(clr&0x00ff0000)>>16;
                 int green=(clr&0x0000ff00)>>8;
                 int blue=clr&0x000000ff;
                //
               
              
             
                 System.out.print(" "+i+" "+j+" ");
                 
                  System.out.print(" ["+red+" "+green+" "+blue+"] |");
                 
              }
            System.out.println();
              // image.setRGB(i, j, rgb);
            }
            
            
       
     
      //ImageIO.write(image,"png", f1);
       }catch(Exception e)
       {
           
       }
    }
}
