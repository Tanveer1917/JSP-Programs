<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import='model.*,dao.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%! User userObj;
Flight flight;
%>
<% userObj=(User)session.getAttribute("user-key");%>
<p id ="myId">Welcome <%=userObj.getUserName() %></p>
<p id ="myId2"><a href='logout.jsp'>Logout..</a></p>


<% int id=Integer.parseInt(request.getParameter("pname")); 
UserDao dao=new UserDao();
Flight flight=dao.getFlightById(id);
double price=flight.getfPrice()*0.12+500.00; 
%>

<h1><font color="blue">Your booking details is :</font></h1>
<h2><font color="green">You are looking for: <%= flight.getFlightName() %> flight </font></h2>
<h2><font color="green">You traveling to:<%= flight.getfDest() %>&nbsp; &nbsp; from <%= flight.getfSrc() %> </font></h2>
<h2><font color="green">You traveling to:<%= flight.getf() %>&nbsp; &nbsp; from <%= flight.getfSrc() %> </font></h2>
<a href='finalbooking.jsp&p1=<%=flight.getFlightName() %>
&p2=<%= flight.getfSrc() %>
&p3=<%= flight.getfDest() %>
&p4=<%= price %>'><input type="button" value="Confirm"> </a>

</body>
</html>