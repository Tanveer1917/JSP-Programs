<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>You can view  All Flights HEre
<jsp:include page="DisplayFlight"></jsp:include></h1>
<jsp:param value="100" name="t1"/>
<jsp:param value="0" name="t2"/>

</body>
</html>