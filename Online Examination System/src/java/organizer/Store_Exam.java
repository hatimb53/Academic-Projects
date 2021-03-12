/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package organizer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Asus
 */
@WebServlet(name = "Store_Exam", urlPatterns = {"/Store_Exam"})
public class Store_Exam extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            try{
                
                out.println(request.getParameter("Name"));
          String url = "jdbc:mysql://localhost:3306/organizer";
        String user = "root";
        String password = "hatim";
 Class.forName("com.mysql.jdbc.Driver");
 


      Connection conn = DriverManager.getConnection(url, user, password);
      
        Statement stmt=conn.createStatement();
         
stmt.executeUpdate("insert into examdetail(Name,StartRegDt,StartExDt,EndExDt,EndRegDt,Type,detail) value('"+request.getParameter("Name")+"','"+request.getParameter("StartRegDt")+"','"+request.getParameter("StartExDt")+"','"+request.getParameter("EndExDt")+"','"+request.getParameter("EndRegDt")+"','"+request.getParameter("Type")+"','"+request.getParameter("detail")+"')");
  /* PreparedStatement statement=null; 
 
 statement = conn.prepareStatement("insert into examdetail values(?,?,?,?,?,?)");
 statement.setString(1,request.getParameter("Name"));
 statement.setString(2,request.getParameter("Type"));
 statement.setString(3,request.getParameter("EndRegDt"));
 statement.setString(4,request.getParameter("StartRegDt"));
 statement.setString(5,request.getParameter("StartExDt"));
 statement.setString(6,request.getParameter("EndExDt"));
 
  statement.executeUpdate();*/
 
//out.println("Success");
        }catch(Exception e)
        {
            out.println(e);
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
