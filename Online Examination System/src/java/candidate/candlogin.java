/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package candidate;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
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
@WebServlet(name = "candlogin", urlPatterns = {"/candlogin"})
public class candlogin extends HttpServlet {

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
            HttpSession session=request.getSession();
            /* TODO output your page here. You may use following sample code. */
           boolean result=false;
       //session.setMaxInactiveInterval(6);
   
           try{
            String url = "jdbc:mysql://localhost:3306/candidate";
          
        String user = "root";
        String password = "hatim";
        String usr=request.getParameter("User_Id");
        String pwd=request.getParameter("Password");
      
       // out.println(usr+" "+pwd);
         //out.println(usr+" "+pwd);
        Class.forName("com.mysql.jdbc.Driver");
         Statement statement=null;
         Connection conn = DriverManager.getConnection(url, user, password);
         statement = conn.createStatement();

         
           ResultSet rs = statement.executeQuery("SELECT * FROM candidate_detail");
           while(rs.next()){
         //Retrieve by column name
         String ur=rs.getString("User_Id");
         String pw=rs.getString("Password");
        ResultSetMetaData metaData=null;
if(ur.equals(usr)&&pw.equals(pwd)){
    metaData = rs.getMetaData();
    int count = metaData.getColumnCount(); 
  // out.println(count);

 for (int i = 1; i <= 9; i++){
        session.setAttribute(metaData.getColumnLabel(i),rs.getString(metaData.getColumnLabel(i))); 
        //out.println(session.getAttribute(metaData.getColumnLabel(i)));
 }
   session.setAttribute(metaData.getColumnLabel(10),rs.getInt(metaData.getColumnLabel(10))); 
   session.setAttribute(metaData.getColumnLabel(11),rs.getInt(metaData.getColumnLabel(11)));
    session.setAttribute(metaData.getColumnLabel(12),rs.getBinaryStream(metaData.getColumnLabel(12)));
  
  
    result=true;
    response.sendRedirect("login.jsp");
      break;
}
     

 /**/
//Display values
         
      }
if(result==false)
{
    session=null;
    out.print("false");
}
else{
    out.print("true");
}
    //  out.println("esf"+session.getAttribute("User_Id"));
           
        
      
 
            }
            catch(Exception e)
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
