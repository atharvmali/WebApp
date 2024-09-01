<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	

	<% int n = Integer.parseInt(request.getParameter("num"));
	
		if(n % 2 == 0) {
			out.println(n + " is even number");
		}
		else {
			out.println(n + " is odd number");
		}
	
	%>

</body>
</html>