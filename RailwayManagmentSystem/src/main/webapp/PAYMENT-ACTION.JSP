<%@page import="java.sql.Statement"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLOutput"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%
Random rand = new Random();
int n = rand.nextInt(789) + 10000;

Random rand1 = new Random();
int m = rand1.nextInt(879854621) + 10000;

String Pnr = String.valueOf(n);
String booking_id = String.valueOf(m);
String Train_Code=(String)session.getAttribute("Tcode"); 
String Source=(String)session.getAttribute("Source"); 
String Destination=(String)session.getAttribute("Destination"); 
String Mobile=(String)session.getAttribute("MOBILE"); 
String userid=(String)session.getAttribute("userid"); 
String Fare=(String)session.getAttribute("Fare"); 
String Date=(new java.util.Date()).toLocaleString();
%>

<%
try
{
Connection conn = ConnectionProvider.getCon();
Statement st=conn.createStatement();

st.executeUpdate("insert into TICKET_BOOKING_INFO(PNR_NO,TRAIN_CODE,SOURCE,DESTINATION,BOOKING_DATE,TRANSACTION_ID,PAID_AMOUNT,USER_ID,MOBILE_NO)values('"+Pnr+"','"+Train_Code+"','"+Source+"','"+Destination+"','"+Date+"','"+booking_id+"','"+Fare+"','"+userid+"','"+Mobile+"'')");
response.sendRedirect("payment.jsp?msg=valid");


}

catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addtrain.jsp?msg=Invalid");

}

%>