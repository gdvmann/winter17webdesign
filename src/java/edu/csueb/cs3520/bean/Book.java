package edu.csueb.cs3520.bean;

import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dev
 */
public class Book implements Serializable{
    private String bookname; // usernames are email addrs
    private String author;
    private String description; //"admin" or "user"
    private String year; 

    public Book(String bookname, String author, String description, String year) {
        this.bookname = bookname;
        this.author = author;
        this.description = description;
        this.year = year;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }
    
    
}
