<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String m = request.getParameter("maggi");
String g = request.getParameter("good");
int mp = Integer.parseInt(m);
int gp = Integer.parseInt(g);
int mpt = mp * 10;
int gpt = gp * 10;
int secont_total = mpt + gpt;
int first_Total = (Integer)request.getSession().getAttribute("first_Total");
int grand_Total = first_Total + secont_total;
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Shopping Mall</h1>
<h1>First Page Total <%=first_Total%></h1>

<h1>Second Page Total <%=secont_total%></h1>

<h1>Total Bill<%=grand_Total%></h1>

</body>
</html>