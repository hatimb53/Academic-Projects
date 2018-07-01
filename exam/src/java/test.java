
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Asus
 */
public class test {
    
    public static void main(String args[]){
                     try{
                     
            String url = "jdbc:mysql://localhost:3306/Organizer";
          
        String user = "root";
        String password = "hatim";
      
      
        Class.forName("com.mysql.jdbc.Driver");
         Statement statement=null;
         Connection conn = DriverManager.getConnection(url, user, password);
         statement = conn.createStatement();
         
        String Exname="slv";
         
           ResultSet rs = statement.executeQuery("SELECT * FROM question  where ExamName='"+Exname+"'");
           
          String temp="";
           while(rs.next()){
         //Retrieve by column name
            for(int i=1;i<=9;i++){
             if(i==1){
                temp=rs.getString(i)+"/";
             }
             else
             {
                  temp=temp+rs.getString(i)+"/";
             }
              
            }
          
          
         System.out.println(temp);
   
         //Display values
         
      }
          
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
           }
        
        
    }
