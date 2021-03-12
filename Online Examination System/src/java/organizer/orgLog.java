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
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
@WebServlet(name = "orgLog", urlPatterns = {"/orgLog"})
public class orgLog extends HttpServlet {

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
         
            boolean result=false;
            /* TODO output your page here. You may use following sample code. */
            try{
            String url = "jdbc:mysql://localhost:3306/organizer";
            
        String user = "root";
        String password = "hatim";
        String usr=request.getParameter("User_Id");
        String pwd=request.getParameter("Password");
        
         Class.forName("com.mysql.jdbc.Driver");
         Statement statement=null;
         Connection conn = DriverManager.getConnection(url, user, password);
         statement = conn.createStatement();

         
           ResultSet rs = statement.executeQuery("SELECT UserId,Password FROM organizer_detail");
           while(rs.next()){
         //Retrieve by column name
         String ur=rs.getString("UserId");
         String pw=rs.getString("Password");
        
if(ur.equals(usr)&&pw.equals(pwd))
   {
     
    result=true;
      break;
}
         //Display values
         
      }
           if(result==true){
              out.println("successful");
           response.sendRedirect("index.jsp");
           
           }
           else{
               out.println("fail");
           }
//out.println(result);
           
            }
            catch(Exception e)
            {
                
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
