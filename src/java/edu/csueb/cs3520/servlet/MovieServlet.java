/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.csueb.cs3520.servlet;

import edu.csueb.cs3520.util.DBUtils;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dev
 */
public class MovieServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    int state;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
     String action = request.getParameter("action");
        String url = "/movies.jsp";
        
        if(null != action){
            if(action.equals("removeMovie")){
                DBUtils.removeMovie(request.getParameter("moviename"));
            }
            
            if(action.equals("create")){
                if(state == 1){
                   DBUtils.editMovie(request.getParameter("moviename"),
                    request.getParameter("description"),
                    request.getParameter("rating"),
                    request.getParameter("year")); 
                   
                                     
                   state = 0;
                }
              else{
                DBUtils.createMovie(request.getParameter("moviename"), 
                        request.getParameter("description"),
                        request.getParameter("rating"),
                        request.getParameter("year"));
                }
            }
            if(action.equals("editMovie")){
                            
            request.setAttribute("movie1", request.getParameter("moviename"));
            request.setAttribute("description1", request.getParameter("description"));
            request.setAttribute("rating1", request.getParameter("rating"));
            request.setAttribute("year1", request.getParameter("year"));
            
            state = 1;
            }
            
            if(action.equals("selectMovie")){
                DBUtils.createPost(request.getParameter("userid") ,"Hey I am watching: " + request.getParameter("moviename"));
                url = "/home.jsp";
                request.setAttribute("posts", DBUtils.getPosts());
            }
        }
        
        
        request.setAttribute("movies", DBUtils.getMovies());
        
        this.getServletContext().getRequestDispatcher(url).forward(request,response);   
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
