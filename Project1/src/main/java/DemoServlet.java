

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class DemoServlet
 */
public class DemoServlet extends HttpServlet 
{
	  public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
	   res.setContentType("text/html");
	   PrintWriter pw=res.getWriter();
	   pw.println("<html><body>");
	   pw.println("Welcome to Servlet");
	   pw.println("Welcome to page");
	   pw.println("<center><b>TYBCA Demo</b></center>");
	   pw.println("</body></html>");
	   pw.close();
	}
	}