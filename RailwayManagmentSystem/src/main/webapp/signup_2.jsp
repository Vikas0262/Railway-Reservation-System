<%@page import="project.ConnectionProvider"%>
<%@include file = "navbar.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%
String Name=request.getParameter("Name");
String Email=request.getParameter("Email");
String Security=request.getParameter("Security");
String Answer=request.getParameter("Answer");
String Password=request.getParameter("Password");




try
{
Connection conn = ConnectionProvider.getCon();
Statement st=conn.createStatement();

st.executeUpdate("insert into USER_INFO(Name,Email,Security,Answer,Password)values('"+Name+"','"+Email+"','"+Security+"','"+Answer+"','"+Password+"')");
response.sendRedirect("SignUp.jsp?msg=valid");

}

catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("SignUp.jsp?msg=Invalid");

}

%>