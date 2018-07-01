/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package candidate;

import java.sql.PreparedStatement;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.util.Base64;
/**
 *
 * @author Asus
 */
@WebServlet(name = "Store_Candi", urlPatterns = {"/Store_Candi"})
public class Store_Candi extends HttpServlet {

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
          //  out.print(request.getParameter("Name"));
            /* TODO output your page here. You may use following sample code. */
     
        try
        {
             String s1=request.getParameter("Image");
         
            String imgName; 
             imgName = "database"; 
             
            
           
         
            s1 = s1.substring(s1.indexOf(",") + 1); 
    //    out.println("/n/n"+s1);
             FileOutputStream output = new FileOutputStream(new File("/D:/" 
                     + imgName + ".png")); 
           
              output.write(Base64.getDecoder().decode(s1)); 
        
            //output.write(new Base64.decodeBase64(s1.getBytes()));
            
             output.flush(); 
             output.close(); 
                 
     String url = "jdbc:mysql://localhost:3306/candidate";
        String user = "root";
        String password = "hatim";
 Class.forName("com.mysql.jdbc.Driver");
 File f=new File("D:/database.png");
  InputStream in=new FileInputStream(f);


      Connection conn = DriverManager.getConnection(url, user, password);
      
   PreparedStatement statement=null; 
 
 statement = conn.prepareStatement("insert into candidate_detail values(?,?,?,?,?,?,?,?,?,?,?,?)");
 statement.setString(1,request.getParameter("Name"));
 statement.setString(2,request.getParameter("Last_Name"));
 statement.setString(3,request.getParameter("User_Id"));
 statement.setString(4,request.getParameter("Password"));
 statement.setString(5,request.getParameter("Email_Id"));
 statement.setString(6,request.getParameter("Inst_Name"));
 statement.setString(7,request.getParameter("Address"));
 statement.setString(8,request.getParameter("city"));
 statement.setString(9,request.getParameter("Country"));
 statement.setInt(10,234);
 statement.setInt(11,23424);
 statement.setBinaryStream(12,in,(int)f.length());
 statement.executeUpdate();
 out.println("successful");
        }catch(Exception e)
        {
            out.println("failure");
        }
        
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
