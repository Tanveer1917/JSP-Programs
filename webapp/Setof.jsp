<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body
{
background-image:url('flight1.jpg');
background-repeat: no-repeat;
background-size: cover;
}

</style>
</head>
<center>
<body background="<img src='flight.jpg'">

<h1><font color='green'>Welcome to our flight Service!!!!</font></h1>
<form action='viewFlight.jsp'method='get'>
<label for='source'Location'>Enter Destination </label>
<input type='text' name='t1' size='5'>
<label for='destination Location'>Enter Destination</label>
<input type='text'name='t2'size='5'><br>

<input type='submit'value='search'>
</form>

</body>
</center>

</html>