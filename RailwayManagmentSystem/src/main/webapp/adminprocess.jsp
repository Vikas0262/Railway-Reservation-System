<%@page import="project.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%
String Email=request.getParameter("Email");
String Password=request.getParameter("Password");


String name="RAHUL";

try
{
Connection conn = ConnectionProvider.getCon();
Statement st=conn.createStatement();

if(Email.equals("admin@gmail.com") && Password.equals("rail"))

{  
session.setAttribute("Email",name);
response.sendRedirect("dashboard.jsp");

}
else{
	response.sendRedirect("Admin_Login.jsp?msg=Invalid");
}
}

catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("Admin_Login.jsp?msg=Invalid");

}

%>