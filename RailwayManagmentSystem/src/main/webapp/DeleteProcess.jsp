<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/railway", "root", "admin");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM train_info WHERE id="+id);
System.out.println("Data Deleted Successfully!");
response.sendRedirect("redirectpage.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>