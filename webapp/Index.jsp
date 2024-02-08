<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo Date</title>
</head>
<body>
<h3><font color='Black'>Todays Date is :<%=new Date()%></font></h3>

<form action="UserReg.jsp" method="post">
<label for='Name'>User Name</label>
<input type="text" name="t1"><br>
<label for='Name'>User Password</label>
<input type="text" name="t2" pattern='[0-9A-Za-z#$@]{3,6}'required><br>
<label for='phone'>User phone</label>
<input type="text" name="t3">
<input type='submit'value='SignUp'>



</form>

</body>
</html>