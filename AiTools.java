
package Ai.com.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class AiTools extends HttpServlet {
    
   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
   throws ServletException , IOException {
       
      System.out.println("this is get method...............");
      response.setContentType("text/html");
      
      PrintWriter out = response.getWriter();
      out.print("<h1> this is get method of my servlet / Second servlet   ");  
       
   }
    
    
}

