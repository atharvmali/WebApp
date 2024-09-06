<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

int n=Integer.parseInt(request.getParameter("num"));
int i,sum=0;

for(i=1;i<n;i++)
	{
		if(n%i==0)
		{
			sum=sum+i;
		}
	}
if(sum==n)
	{
		out.println(n+" is Perfect number");
	}
else
	{
		out.println(n+"is not Perfect number");
	}

%>