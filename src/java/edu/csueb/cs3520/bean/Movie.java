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
public class Movie {
    private String moviename;
    private String description;
    private String rating;
    private String year;
    

    public Movie() {
    }

    public Movie(String moviename, String description, String rating, String year) {
        this.moviename = moviename;
        this.description = description;
        this.year = year;
        this.rating = rating;
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename;
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

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }
    
}
