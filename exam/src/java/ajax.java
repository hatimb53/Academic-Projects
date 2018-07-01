/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//import face.DetectFaceDemo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
@WebServlet(urlPatterns = {"/ajax"})
public class ajax extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String s1=request.getParameter("fname");
          //  out.print(s1);
            /*TODO output your page here. You may use following sample code. */
            String imgName; 
             imgName = "op"; 
             
            
           
         
            s1 = s1.substring(s1.indexOf(",") + 1); 
    //    out.println("/n/n"+s1);
             FileOutputStream output = new FileOutputStream(new File("/D:/" 
                     + imgName + ".png")); 
           
              output.write(Base64.getDecoder().decode(s1)); 
        
            //output.write(new Base64.decodeBase64(s1.getBytes()));
            
             output.flush(); 
             output.close(); 
             
             // new DetectFaceDemo().run();
           String sendData;
           
            
             
             File f=new File("/D:/img/ac2.png");
           FileInputStream fin=new FileInputStream(f);
            
            byte data[]=new byte[(int)f.length()];
             
             fin.read(data);
          sendData=  Base64.getMimeEncoder().encodeToString(data);
          // out.println(sendData);
       sendData="data:image/png;base64,"+sendData;
           
          out.print(sendData);
      
        //  out.println("value="+sendData);
           
           
          /* for(int i=0;i<=l1;i++)
           {
               
           if(i==0)
           {
               sendD[i]="data:image/png;base64,";
           }
             
           else if(i==l1)
            {
                sendD[i]=sendData.substring(i*1000,(i)*1000+rem);
                
            }
            else
            {
                 sendD[i]=sendData.substring(i*1000,(i+1)*1000);
            }
           }*/
          
         
 //out.println("  <input type=/"hidden" value id=/"htm" name=/"jlk">");
            } catch (Exception e) { 
             out.println(e); 
         }
            
          
         
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
