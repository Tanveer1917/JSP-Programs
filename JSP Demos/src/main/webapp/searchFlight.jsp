<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ='model.*' %>
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
#myid
{
text-align:right;
color:yellow;
}
#myid2
{
text-align:left;
color:red;
}

<%! User userObj; %> 
<% userObj=(User)session.getAttribute("user-key"); %>

</style>
</head>
<center>
<body background="flight1.jpg">

<p id="myid">Welcome<%=userObj.getUserName() %></p>
<p id="myid2"><a href='Logout.jsp'>Logout...</a></p>


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