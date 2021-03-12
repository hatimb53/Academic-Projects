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
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.jms.Session;
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
@WebServlet(name = "MarkScored", urlPatterns = {"/MarkScored"})
public class MarkScored extends HttpServlet {

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
                     
            String url = "jdbc:mysql://localhost:3306/Organizer";
          
        String user = "root";
        String password = "hatim";
      
      
        Class.forName("com.mysql.jdbc.Driver");
         Statement statement=null;
         Connection conn = DriverManager.getConnection(url, user, password);
         statement = conn.createStatement();
ResultSet rs;
  
          HttpSession session=request.getSession();
         rs = statement.executeQuery("SELECT Correct,Marks,NegMarks, FROM question  where ExamName='"+session.getAttribute("ExamName")+"'");
         // String Correct[]=request.getParameterValues("Correct");
         String tmp="vzx";
          /*for(int i=0;i<Correct.length;i++){
            tmp=tmp+Correct[i];
          }*/
          out.println(tmp);
        /*  int total=0;
          int i=0;
           while(rs.next()){
         //Retrieve by column name
               if(Correct[i].equals(rs.getString(1))){
                   total=total+Integer.parseInt(rs.getString(2));
               }
               else{
                   total=total-Integer.parseInt(rs.getString(3));
               }
           i++;
           }
            out.println(total);
           url = "jdbc:mysql://localhost:3306/Candidate";
          conn = DriverManager.getConnection(url, user, password);
         statement = conn.createStatement();
         Date date = new Date();
 SimpleDateFormat ft = 
      new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");


    
           statement.executeUpdate("update scored set Marks='"+total+"',ExDt='"+ft.format(date)+"',Certificate='' where ExamName='"+session.getAttribute("ExamName")+"'&&UserId='"+session.getAttribute("User_Id")+"'");
         //Display values
         
      out.println(total);
          */
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
