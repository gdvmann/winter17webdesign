/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.csueb.cs3520.util;

import edu.csueb.cs3520.bean.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dev
 */
public class DBUtils {
    private static String DB_URL = "jdbc:mysql://localhost:3306/cs3560";
    private static String DB_USERNAME = "root";
    private static String DB_PASSWORD = "gmanngm";
    
    public static void removeUser(String username){
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "DELETE FROM User Where username = '" + username + "'";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }
    }
    
    public static User getUSer(String uname, String pword){
        User user = null;
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);


            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("Select * From User Where username = '"+
                    uname + "' AND password = '" + pword + "'");
            
            while(rs.next()){
                String name = rs.getString("username");
                String pw = rs.getString("password");
                String firstname = rs.getString("firstName");
                String lastname = rs.getString("lastName");
                String role = rs.getString("role");
                user = new User(name, pw, role, firstname, lastname);
                
            }
            rs.close();
            stmt.close();
            connection.close();
      
    }catch(Exception e){
        e.printStackTrace();
         }
        return user;
    }
            
    public static List<User> getUsers(){
        List<User> users = new ArrayList();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);


            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("Select * From User");


            User user = null;
            while(rs.next()){
                String uname = rs.getString("username");
                String pword = rs.getString("password");
                String firstname = rs.getString("firstName");
                String lastname = rs.getString("lastName");
                String role = rs.getString("role");
                user = new User(uname, pword, role, firstname, lastname);
                users.add(user);
        }
        rs.close();
        stmt.close();
        connection.close();
        
    } catch(Exception e) {
        e.printStackTrace();
}

        return users;
    }
    
}
