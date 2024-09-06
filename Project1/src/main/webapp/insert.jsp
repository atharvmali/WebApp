<%@ page import="java.io.*,java.sql.*" language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
Connection con;
PreparedStatement ps;
String nm,t;
int p;
%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","admin");
ps=con.prepareStatement("insert into product values(?,?,?)");
nm=request.getParameter("pname");
t=request.getParameter("ptype");
p=Integer.parseInt(request.getParameter("price"));

ps.setString(1, nm);
ps.setString(2, t);
ps.setInt(3, p);

ps.executeUpdate();
response.sendRedirect("display.jsp");
%>
</body>
</html>