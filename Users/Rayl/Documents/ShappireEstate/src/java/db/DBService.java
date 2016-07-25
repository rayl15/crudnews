
package db;

import java.sql.*;
public class DBService {
    public static int updateData(String dmlQuery){
        try{
        Class.forName("com.mysql.jdbc.Driver"); 
        String url="jdbc:mysql://127.001:3306/property";
        Connection con;
        con=DriverManager.getConnection(url,"root","007");
        Statement st=con.createStatement();
        int ur=st.executeUpdate(dmlQuery);
        return ur;
    }catch(Exception e){
            System.out.println("SELECT QUERY ERRROR :"+e.getMessage());
            return -1;
    }
    }
    public static ResultSet selectData(String projQuery){
        try{
        Class.forName("com.mysql.jdbc.Driver"); 
        String url="jdbc:mysql://127.001:3306/property";
        Connection con;
        con=DriverManager.getConnection(url,"root","007");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(projQuery);
        return rs;
    }catch(Exception e){
            System.out.println("SELECT QUERY ERRROR :"+e.getMessage());
            return null;
    }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
