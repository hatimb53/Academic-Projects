/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package organizer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Asus
 */
public class Retriew {
    public static void main(String args[]){
         try{
                     
            String url = "jdbc:mysql://localhost:3306/Organizer";
          
        String user = "root";
        String password = "hatim";
      
      
        Class.forName("com.mysql.jdbc.Driver");
         Statement statement=null;
         Connection conn = DriverManager.getConnection(url, user, password);
         statement = conn.createStatement();


           ResultSet rs = statement.executeQuery("SELECT Section,Qno,Question,OpA,OpB,OpC,OpD FROM question  where ExamName='hatim'");
           
          String temp="";
        
           while(rs.next()){
         //Retrieve by column name
            for(int i=1;i<8;i++){
             
                  temp=temp+rs.getString(i)+"//";
             
               
            }
            
      }System.out.println();
           //out.print(temp);
          
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
    }
}
