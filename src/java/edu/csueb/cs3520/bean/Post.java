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
    private String userId;
    private String content;
    private int id;

    public Post(String UserId, String content, int id) {
        this.userId = UserId;
        this.content = content;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String getUserId() {
        return userId;
    }

    public void setUserId(String UserId) {
        this.userId = UserId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    
    
    
}
