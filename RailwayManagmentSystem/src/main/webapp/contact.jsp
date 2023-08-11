<%@page import="project.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%
String Name = request.getParameter("Yname");
String Email = request.getParameter("Yemail");
String PhNo = request.getParameter("Yphone");
String Message = request.getParameter("Ymessage");

try{
	Connection conn = ConnectionProvider.getCon();
	Statement st=conn.createStatement();
	st.executeUpdate("insert into FEEDBACK(NAME,EMAIL,CONTACT,MESSAGE)values('"+Name+"','"+Email+"','"+PhNo+"','"+Message+"')");
	response.sendRedirect("home.jsp");
	return;
}
catch(Exception e){
	response.sendRedirect("failure.jsp");
}
%>