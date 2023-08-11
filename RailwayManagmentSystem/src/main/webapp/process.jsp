
<%@page import="project.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%
String TrainName=request.getParameter("TrainName");
String TrainNumber=request.getParameter("TrainNumber");
String Coach=request.getParameter("Coach");
String Distance=request.getParameter("Distance");
String Source=request.getParameter("Source");
String Destination=request.getParameter("Destination");
String Departure=request.getParameter("Departure");
String Arrival=request.getParameter("Arrival");
String Fare=request.getParameter("Fare");
String a ="3015";
int value = Integer.parseInt(a)+Integer.parseInt(Fare);
String IACFare = String. valueOf(value) ;

String b ="2015";
int value1 = Integer.parseInt(b)+Integer.parseInt(Fare);
String IIACFare = String. valueOf(value1) ;

String c ="1015";
int value2 = Integer.parseInt(c)+Integer.parseInt(Fare);
String IIIACFare = String. valueOf(value2) ;



try
{
	Connection conn = ConnectionProvider.getCon();
	Statement st=conn.createStatement();

st.executeUpdate("insert into TRAIN_INFO(TRAIN_NAME,TRAIN_CODE,CHOICE,DISTANCE,SOURCE,DESTINATION ,DEPARTURE ,ARRIVAL,SL_FARE,IAC_FARE,IIAC_FARE,IIIAC_FARE)values('"+TrainName+"','"+TrainNumber+"','"+Coach+"','"+Distance+"','"+Source+"','"+Destination+"','"+Departure+"','"+Arrival+"','"+Fare+"','"+IACFare+"','"+IIACFare+"','"+IIIACFare+"')");
response.sendRedirect("addtrain.jsp?msg=valid");

}

catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addtrain.jsp?msg=Invalid");

}

%>