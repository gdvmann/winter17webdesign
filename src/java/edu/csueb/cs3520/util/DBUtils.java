/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.csueb.cs3520.util;


import edu.csueb.cs3520.bean.Post;

import edu.csueb.cs3520.bean.Book;
import edu.csueb.cs3520.bean.Movie;
import edu.csueb.cs3520.bean.Music;

import edu.csueb.cs3520.bean.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.Collator;
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
                int id = rs.getInt("id");
                user = new User(name, pw, role, firstname, lastname);
                user.setId(id);
                
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
    
    public static void createUser(String username, String password, String firstName, String lastName, String role){
         try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "INSERT INTO User (username, password, firstName, lastName, role) VALUES " + 
                    "('" + username + "', '" + password + "', '" + firstName + "', '" + lastName + "', '" + role + "')";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }

    }

    public static List<Post> getPosts(){
        List<Post> posts = new ArrayList();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("Select * From Post ORDER BY id DESC");


            Post post = null;
            while(rs.next()){
                String content = rs.getString("content");
                String userId = rs.getString("userid");
                int id = rs.getInt("id");

                post = new Post(userId, content, id);
                posts.add(post);
                }
        rs.close();
        stmt.close();
        connection.close();
        
    } catch(Exception e) {
        e.printStackTrace();
}
        return posts;
    }
   

        public static List<Book> getBooks(){
        List<Book> books = new ArrayList();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);


            Statement stmt = connection.createStatement();

            ResultSet rs = stmt.executeQuery("Select * From Book");


            Book book = null;
            while(rs.next()){
                String bookname = rs.getString("bookname");
                String author = rs.getString("author");
                String description = rs.getString("description");
                String year = rs.getString("year");
              
                book = new Book(bookname, author, description, year);
                books.add(book);

        }
        rs.close();
        stmt.close();
        connection.close();
        
    } catch(Exception e) {
        e.printStackTrace();
}

       
    return books;

    }
    
    public static void createPost(String userid, String content){
         try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "INSERT INTO Post (userid, content) VALUES " + 
                    "('" + userid + "', '" + content + "')";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }

    }
    
    public static void removeBook(String bookname){
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "DELETE FROM Book Where bookname = '" + bookname + "'";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }
    }
    
    public static void createBook(String bookname, String author, String description, String year){
         try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "INSERT INTO Book (bookname, author, description, year) VALUES " + 
                    "('" + bookname + "', '" + author + "', '" + description + "', '" + year + "')";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }

    }
    
    public static void editBook(String bookname, String author, String description, String year){
         try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "UPDATE Book SET " +
                            "bookname = '" + bookname + "', " +
                            "author = '" + author + "', " +
                            "description = '" + description + "', " +
                            "year = '" + year + "' " +
                            "WHERE bookname = '" + bookname + "'";
                                
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }

    }
    
    public static List<Movie> getMovies(){
        List<Movie> movies = new ArrayList();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);


            Statement stmt = connection.createStatement();

            ResultSet rs = stmt.executeQuery("Select * From Movie");


            Movie movie = null;
            while(rs.next()){
                String moviename = rs.getString("moviename");
                String description = rs.getString("description");
                String rating = rs.getString("rating");
                String year = rs.getString("year");
              
                movie = new Movie(moviename, description, rating, year);
                movies.add(movie);

        }
        rs.close();
        stmt.close();
        connection.close();
        
    } catch(Exception e) {
        e.printStackTrace();
}

       
    return movies;

    }
    
    public static void createMovie(String moviename, String description, String rating, String year){
         try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "INSERT INTO Movie (moviename, description, rating, year) VALUES " + 
                    "('" + moviename + "', '" + description + "', '" + rating + "', '" + year + "')";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }

    }
    
    public static void editMovie(String moviename, String description, String rating, String year){
         try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "UPDATE Movie SET " +
                            "moviename = '" + moviename + "', " +
                            "description = '" + description + "', " +
                            "rating = '" + rating + "', " +
                            "year = '" + year + "' " +
                            "WHERE moviename = '" + moviename + "'";
                                
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }

    }
    
    public static void removeMovie(String moviename){
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "DELETE FROM Movie Where moviename = '" + moviename + "'";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }
    }
    
    public static List<Music> getMusic(){
        List<Music> songs = new ArrayList();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);


            Statement stmt = connection.createStatement();

            ResultSet rs = stmt.executeQuery("Select * From Music");


            Music music = null;
            while(rs.next()){
                String title = rs.getString("title");
                String artist = rs.getString("artist");
                String album = rs.getString("album");
                String year = rs.getString("year");
              
                music = new Music(title, artist, album, year);
                songs.add(music);

        }
        rs.close();
        stmt.close();
        connection.close();
        
    } catch(Exception e) {
        e.printStackTrace();
}

       
    return songs;

    }
    
    public static void createMusic(String title, String artist, String album, String year){
         try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "INSERT INTO Music (title, artist, album, year) VALUES " + 
                    "('" + title + "', '" + artist + "', '" + album + "', '" + year + "')";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }

    }
    
    public static void editMusic(String title, String artist, String album, String year){
         try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "UPDATE Music SET " +
                            "title = '" + title + "', " +
                            "artist = '" + artist + "', " +
                            "album = '" + album + "', " +
                            "year = '" + year + "' " +
                            "WHERE title = '" + title + "'";
                                
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }

    }
    
    public static void removeMusic(String title){
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "DELETE FROM Music Where title = '" + title + "'";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }
    }
    
    public static void removePost(String id){
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            String sqlString = "DELETE FROM Post Where id = '" + id + "'";
            Statement stmt = connection.createStatement();
            int rowcount = stmt.executeUpdate(sqlString);
            
            stmt.close();
            connection.close();
            }catch(Exception e){
                e.printStackTrace();
                }
    }
}
