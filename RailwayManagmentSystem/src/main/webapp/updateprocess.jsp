<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/railway";
String database = "railway";
String userid = "root";
String password = "admin"; 
%>
<%
String id = session.getAttribute("userId").toString();; 
System.out.println(id);
String TrainName=request.getParameter("TrainName");
String TrainCode=request.getParameter("TrainNumber");
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
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID  = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(connectionUrl,userid,password);
String sql="Update train_info set ID=?,TRAIN_NAME=?,TRAIN_CODE=?,CHOICE=?,Distance=?,Source=?,Destination=?,Departure=?,Arrival=?,SL_Fare=?,IAC_Fare=?,IIAC_Fare=?,IIIAC_Fare=? where ID="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, TrainName);
ps.setString(3, TrainCode);
ps.setString(4, Coach);
ps.setString(5, Distance);
ps.setString(6, Source);
ps.setString(7, Destination);
ps.setString(8, Departure);
ps.setString(8, Arrival);
ps.setString(9, Departure);
ps.setString(10, Fare);
ps.setString(11, IACFare);
ps.setString(12, IIACFare);
ps.setString(13, IIIACFare);
int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("redirectpage.jsp");
	
}
else
{
	System.out.println("Errorr in Update");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
System.out.println("Hello");
System.out.println(sql);
}
}
%>