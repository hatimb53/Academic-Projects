/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package candidate;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Asus
 */
public class jdbc {
    public static void main(String args[])
    {
         String url = "jdbc:mysql://localhost:3306/candidate";
        String user = "root";
        String password = "hatim";
        
        try
        {
            /* String s1=request.getParameter("Image");
         
            String imgName; 
             imgName = "database"; 
             
            
           
         
            s1 = s1.substring(s1.indexOf(",") + 1); 
    //    out.println("/n/n"+s1);
             FileOutputStream output = new FileOutputStream(new File("/D:/" 
                     + imgName + ".png")); 
           
              output.write(Base64.getDecoder().decode(s1)); 
        
            //output.write(new Base64.decodeBase64(s1.getBytes()));
            
             output.flush(); 
             output.close(); */
            
 Class.forName("com.mysql.jdbc.Driver");
 File f=new File("D:/share/htm.png");
  InputStream in=new FileInputStream(f);
 
 
        Connection conn = DriverManager.getConnection(url, user, password);
   Statement stmt = conn.createStatement();
        PreparedStatement statement=null; 
 
   
 statement = conn.prepareStatement("insert into candidate_detail values(?,?,?,?,?,?,?,?,?,?,?,?)");
 statement.setString(1,"ad");
 statement.setString(2,"ad");
 statement.setString(3,"ad");
 statement.setString(4,"ad");
 statement.setString(5,"ad");
 statement.setString(6,"ad");
 statement.setString(7,"ad");
 statement.setString(8,"ad");
 statement.setString(9,"ad");
 statement.setInt(10,2341);
 statement.setInt(11,23424);
  statement.setBinaryStream(12,in,(int)f.length());
  statement.executeUpdate();
ResultSet rs = stmt.executeQuery("select Image from candidate_detail");

			int i = 0;

			while (rs.next()) {

				 in = rs.getBinaryStream(1);

				OutputStream out = new FileOutputStream(new File("D:/share/htm1.png"));

				i++;

				int c = 0;

				while ((c = in.read()) > -1) {

					out.write(c);

				}

				out.close();

				in.close();

			}
		   System.out.println("Successfully inserted the file into the database!");
  
 
        }catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
}
