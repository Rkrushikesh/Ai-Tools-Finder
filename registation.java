
package com.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

//
@WebServlet(name = "registation", urlPatterns = {"/registation"})

public class registation extends HttpServlet {

   
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registation </title>");            
            out.println("</head>");
            out.println("<body>");
            
            // getting all the incomging detail from the request 
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            
            out.println(name);
            out.println(email);
            out.println(phone);
            out.println(password);
            
            
            // connection 
           try{
            
             Class.forName("com.mysql.jdbc.Driver");
             
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aitoolsdb","root","Root@#1234");
//             Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ruhikesh","admin");
          
  
          String q ="INSERT INTO db(name,password,email,phone) values(?,?,?,?)";
      
 
        PreparedStatement pstmt=  con.prepareStatement(q);
        pstmt.setString(1, name);
        pstmt.setString(2, password);
        pstmt.setString(3, email);
        pstmt.setString(4, phone);
        
        pstmt.executeUpdate();
        out.println("<h1> done </h1>");
        
             
             
        }catch(Exception e){
            e.printStackTrace();
            out.println("<h1>error.......</h1>");
        }
            
           // query  
           
            out.println("</body>");
            out.println("</html>");
        }
    }



}
