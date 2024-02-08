<%@page import="Utility.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import='java.time.*, java.sql.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String source_airport;
String dest_airport;
LocalDate fly_date;
int id=0;
String flight_name=null;

%>
<table cellpadding='5' cellspacing='5'>
	 <thead>
	 <th>ID</th>
	 <th>SOURCE</th>
	 <th>DEST</th>
	 <th>NOS</th>
	 <th>PRICE</th>
	 <th>BOOK</th>
	 </thead>
	 
	 
	
<%
source_airport=request.getParameter("t1");
dest_airport=request.getParameter("t2");
//fly_date=LocalDate.parse(request.getParameter("t3"));
Connection con=DBUtil.getConnect();

String fetchQuery="select * from flight where source=? and destination=?";

PreparedStatement ps=con.prepareStatement(fetchQuery);
ps.setString(1, source_airport);
ps.setString(2, dest_airport);
//java.sql.Date d=java.sql.Date.valueOf(fly_date);
//ps.setDate(3, d);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	    id=rs.getInt(1);
	   String src=rs.getString(2);
	 String dest=rs.getString(3);
	int nos=rs.getInt(4);
	 //java.sql.Date fly_Daye=rs.getDate(5);
	 double price=rs.getDouble(5);
	 %>
	 <tr>
	 <td><%=id %></td>
	  <td><%=src %></td>
	   <td><%=dest %></td>
	    <td><%=nos %></td>
	   
	     <td><%=price %></td>
	     </tr>
	 <%  } %>
</table>


</body>
</html>