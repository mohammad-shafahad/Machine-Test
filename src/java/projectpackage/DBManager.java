/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projectpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;



public class DBManager 
{
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;

    public DBManager()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver found");
        }
        catch(ClassNotFoundException ex)
        {
            ex.printStackTrace(); 
            System.out.println("driver not found");
        }
    }   
    
    public Connection getCon()
    {
        try
        {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdata","root","");
        }
        catch(SQLException ex)
        {
            con=null;
        }
        return con;
    }
    public boolean executeNonQuery(String query)                //This executeNonQuery is used for insert,update,delete operation
    {
        con=getCon();
        try
        {
        ps=con.prepareStatement(query);
        ps.executeUpdate();                         //This executeUpdate is used to insert update or delete operation
        return true;
        }
        catch(SQLException ex)
        {
            return false;
        }
    }
    public ResultSet selectQuery(String query)                  //This selectQuery is used for select the data from database
    {
    con=getCon();
    try
    {
    ps=con.prepareStatement(query);
    rs=ps.executeQuery();                                   //This executeQuery()method is used to select the data from database and display on the browser
    return rs;
    }
    catch(SQLException ex)
    {
    return rs;
    }
    }
   
    public static void main(String[] args) {
        DBManager db=new DBManager();
        if(db.getCon()==null){
            System.out.println("Wrong");
        }
        else{
            System.out.println("Correct");
        }
      
       
    }
}

