<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<%@ page import="java.sql.*" %>
<%! int pid ;
String pname, address ; %>
<%
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "mysqlroot");  
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from patient");
%>
    <table border="1" width="40%">
        <tr>
            <td>Patient No</td>
            <td>Name</td>
            <td>Address</td>
            
        </tr> 
<%
    while(rs.next()) {
%> 
        <tr>
            <td><%= rs.getInt("pid") %></td>
            <td><%= rs.getString("pname") %></td>
            <td><%= rs.getString("address") %></td>
           
        </tr>
<%
    }
    con.close();
} catch(Exception e) {
    out.println(e);
}
%>
    </table>
</body>
</html>