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
ResultSet rs;
String nm,t;
int p;
%>
<table border="2">
<tr><th>Product Name</th><th>Product Type</th><th>Product Price</th></tr>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","admin");
ps=con.prepareStatement("select * from product");

rs=ps.executeQuery();

while(rs.next())
{
nm=rs.getString("pname");
t=rs.getString("ptype");
p=rs.getInt("price");

%>
<tr><td><%=nm%></td><td><%=t%></td><td><%=p%></td></tr>
<%
}
%>
</table>
</body>
</html>