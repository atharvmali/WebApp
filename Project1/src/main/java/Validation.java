

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
public class Validation extends HttpServlet {
public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException {
	
PrintWriter pw=res.getWriter();
String x=req.getParameter("user");
String y=req.getParameter("pwd");
if(x.equals("admin")&&y.equals("admin"))
pw.println("<font color='green' size='5'>Welcome to this webpage</font>");
else
pw.println("<font color='red' size='5'>Invalid username or password</font>");
pw.close();

	}
}
