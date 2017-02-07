/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.csueb.cs3520.util;

import edu.csueb.cs3520.bean.User;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dev
 */
public class UserUtils {
    
    private static List<User> users = null;
    
    
    public static List<User> getUsers(){
       
        if(null == users){
            users = new ArrayList<>();
            User user = new User("john.smith@gmail.com", "1234", "user", "John", "Smith");
            users.add(user);
            user = new User("jane.doe@gmail.com", "1234", "user", "Jane", "Doe");
            users.add(user);
            user = new User("john.doe@gmail.com", "1234", "admin", "John", "Doe");
            users.add(user);
           
        }
        
        return users;
    }
    
    public static void removeUser(String userId){
        if(null != users){
            for(User u : users){
                if(u.getUsername().equals(userId)){
                    users.remove(u);
                    break;
                }
            }
        }
    }
}
