

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.*;
public class MyServlet2 extends HttpServlet {
 public void doGet(HttpServletRequest request, 
    HttpServletResponse response){
    try{
        response.setContentType("text/html");
        PrintWriter pwriter = response.getWriter();
  
        //Reading cookies
        Cookie c[]=request.getCookies(); 
        //Displaying User name value from cookie
        pwriter.print("Name: "+c[1].getValue()); 
        //Displaying user password value from cookie
        pwriter.print("Password: "+c[2].getValue());
  
        pwriter.close();
     }catch(Exception exp){
        System.out.println(exp);
      }
   }
 }
