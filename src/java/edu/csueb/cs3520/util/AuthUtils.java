/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.csueb.cs3520.util;

/**
 *
 * @author Dev
 */
public class AuthUtils {
    public static boolean authenticate(String username, String password){
        boolean status = false;
        if(username.equals("john.smith@gmail.com") && password.equals("1234")){
            status = true;
        }
        
        return status;
        
    }
}
