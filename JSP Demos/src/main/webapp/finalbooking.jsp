<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.*,dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%! User userObj; %> 
<% userObj=(User)session.getAttribute("user-key"); %>

String fName=request.getParameter("p1");
String src=request.getParameter("p2");
String dest=request.getParameter("p3");
double price=Double.parseDouble(request.getParameter("p4"));
String s1=src.substring(0,2);
String s2=dest.substring(0,2);
String s3=fName.substring(0,2);
String pw=userObj.getPassword();
String s4=pw.substring(2,5);
String finalPassword=s1.concat(s2).concat(s3).concat(s4).toUppercase();
out.println(finalPassword1);

UserDao dao=new UserDao();
BookFlight flight=new BookFlight();
flight.setBookingPNR(finalPassword1);
flight.setBookingAirport(src);
flight.setDestAirport(dest);
flight.setFlightPrice(price);
flight.setFlightName(fName);
flight.setUserName(userObj.getUserName());

BookFlight bkFlight dao.addFlight(flight);
out.println("<h1>****************Ticket************</h1>")
out.println("<p><font color='green'>PNR:"+" "+flight.getBokings()+" "+"</font><p><br>)
out.println("<p><font color='green'>Source Airport:"+" "+flight.getSourceAirport()+" "+"</font><p><br>)
out.println("<p><font color='green'>Destination Airport:"+" "+flight.getDestAirport()+" "+"</font><p><br>)
out.println("<p><font color='green'>Passenger Name:"+" "+flight.getUserName()+" "+"</font><p><br>)
out.println("<p><font color='green'>Ticket Price:"+" "+flight.getFlightPrice()+" "+"</font><p><br>)
out.println("<p><font color='green'>Airport type:"+" "+flight.getFlightName()+" "+"</font>)

}
else
{
out.println("<h1><font color='red'>"+" "+"  not able to  Book"+" "+"</font></h1>");
dao.addFlight();

<p id ="myId">Welcome <%=userObj.getUserName() %></p>
<p id ="myId2"><a href='logout.jsp'>Logout..</a></p>


</body>
</html>