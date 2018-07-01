/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package organizer;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Asus
 */
@WebServlet(name = "Store_Org", urlPatterns = {"/Store_Org"})
 @MultipartConfig
public class Store_Org extends HttpServlet {

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
         PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        try{
       
        
            out.println("fsa");
            
             Part filePart = request.getPart("file");
      InputStream in=filePart.getInputStream();
      OutputStream ot=new FileOutputStream(new File("D:/database.png"));
     int read = 0;
        final byte[] bytes = new byte[1024];

        while ((read = in.read(bytes)) != -1) {
            ot.write(bytes, 0, read);
        }

in.close();

ot.close();
       
            
           
            String url = "jdbc:mysql://localhost:3306/organizer";
        String user = "root";
        String password = "hatim";
       
           
 Class.forName("com.mysql.jdbc.Driver");
 File f=new File("D:/database.png");
 in=new FileInputStream(f);


      Connection conn = DriverManager.getConnection(url, user, password);
   PreparedStatement statement=null; 
 
 statement = conn.prepareStatement("insert into organizer_detail values(?,?,?,?,?,?,?,?,?,?)");
 statement.setString(1,request.getParameter("OrgName"));
 statement.setString(2,request.getParameter("UserId"));
 statement.setString(3,request.getParameter("Password"));
 statement.setString(4,request.getParameter("Email_Id"));
 statement.setString(5,request.getParameter("Address"));
 statement.setBinaryStream(6,in,(int)f.length());
  statement.setInt(7,Integer.parseInt(request.getParameter("Phone_No")));

 statement.setString(8,request.getParameter("City"));
 statement.setString(9,request.getParameter("Country"));
statement.setInt(10,23424);

statement.executeUpdate();

 response.sendRedirect("success.jsp");
        }catch(Exception e)
        {
        
            response.sendRedirect("success.jsp");
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
