<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page errorPage="GlobalError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int number1=Integer.parseInt(request.getParameter("t1"));
int number2=Integer.parseInt(request.getParameter("t2"));
int div=number1/number2;
out.println("The division of two number is"+" "+div);

%>

</body>
</html>