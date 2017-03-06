<%@page import="java.util.Iterator"%>
<%@page import="hello.Info"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Query"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center" border="2">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>E-mail</th>
<th>Phone</th>
<th>location</th>
<th>Action</th>
</tr>
<tr>
	<%
SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session session1 = sf.openSession();
Transaction tx = session1.beginTransaction();

String q="from Info";
Query qry=session1.createQuery(q);
Iterator it=qry.iterate();

String email;
String firstname;
String contact;
String lastname;
String location;

while(it.hasNext())
{
	Info i=(Info)it.next();
	firstname=i.getFirstName();
	lastname=i.getLastName();
	email=i.getEmail();
	contact=i.getPhone();
	location=i.getLocation();
	



%>

<td><%=firstname %></td>
<td><%=lastname %></td>
<td><%= email%></td>
<td><%=contact %></td>
<td><%=location %></td>
<td><a href="edit.jsp?First_Name=<%=firstname%>">Edit</a>&nbsp;&nbsp;<a href="delete.jsp?First_Name=<%=firstname%>">Delete</a></td>
</tr>
<%} %>
</table>
</body>
</html>