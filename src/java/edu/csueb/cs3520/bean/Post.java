/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.csueb.cs3520.bean;

/**
 *
 * @author Dev
 */
public class Post {
    private int userId;
    private String content;

    public Post(int UserId, String content) {
        this.userId = UserId;
        this.content = content;
    }
    public int getUserId() {
        return userId;
    }

    public void setUserId(int UserId) {
        this.userId = UserId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    
    
    
}
