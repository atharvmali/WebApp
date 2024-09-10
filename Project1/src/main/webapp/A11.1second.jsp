<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String rice = request.getParameter("rice");
int r = Integer.parseInt(rice);
String wheat = request.getParameter("wheat");
int w = Integer.parseInt(wheat);
int tr = r * 40;
int wt = w * 60;
int pt = tr + wt;
session.setAttribute("first_Total", pt);
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Shopping Mall</h1>
<form action="A11.1third.jsp" method="post">
Maggie :
<select name="maggi">
<option value="1">1</option>

<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
Good Day :
<select name="good">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
<input type="submit" value="Submit">
</form>
</body>
</html>