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
String userid=(String)session.getAttribute("usid"); 
String Fare=(String)session.getAttribute("Fare"); 

String passenger1=(String)session.getAttribute("p1"); 
String age1=(String)session.getAttribute("a1"); 
String berth1=(String)session.getAttribute("b1"); 
String gender1=(String)session.getAttribute("g1"); 

String passenger2=(String)session.getAttribute("p2"); 
String age2=(String)session.getAttribute("a2"); 
String berth2=(String)session.getAttribute("b2"); 
String gender2=(String)session.getAttribute("g2"); 

String passenger3=(String)session.getAttribute("p3"); 
String age3=(String)session.getAttribute("a3"); 
String berth3=(String)session.getAttribute("b3"); 
String gender3=(String)session.getAttribute("g3"); 

String passenger4=(String)session.getAttribute("p4"); 
String age4=(String)session.getAttribute("a4"); 
String berth4=(String)session.getAttribute("b4"); 
String gender4=(String)session.getAttribute("g4"); 

String passenger5=(String)session.getAttribute("p5"); 
String age5=(String)session.getAttribute("a5"); 
String berth5=(String)session.getAttribute("b5"); 
String gender5=(String)session.getAttribute("g5"); 

String passenger6=(String)session.getAttribute("p6"); 
String age6=(String)session.getAttribute("a6"); 
String berth6=(String)session.getAttribute("b6"); 
String gender6=(String)session.getAttribute("g6");  

String cardno=request.getParameter("cardnumber");
String cardname=request.getParameter("cardname");

String coach_c=(String)session.getAttribute("coach");

System.out.println(passenger1);
String Date=(new java.util.Date()).toLocaleString();
%>

<%
try
{
	Connection conn = ConnectionProvider.getCon();
	Statement st=conn.createStatement();

st.executeUpdate("insert into TICKET_BOOKING_INFO(PNR_NO,TRAIN_CODE,SOURCE,DESTINATION,BOOKING_DATE,TRANSACTION_ID,PAID_AMOUNT,USER_ID,MOBILE_NO,CARD_NO, NAME_ON_CARD)values('"+Pnr+"','"+Train_Code+"','"+Source+"','"+Destination+"','"+Date+"','"+booking_id+"','"+Fare+"','"+userid+"','"+Mobile+"','"+cardno+"','"+cardname+"')");

if(!passenger1.equals("")){
st.executeUpdate("insert into PNR_STATUS(PNR_NO,NAME,AGE,GENDER,BERTH,COACH)values('"+Pnr+"','"+passenger1+"','"+age1+"','"+gender1+"','"+berth1+"','"+coach_c+"')");
}
if(!passenger2.equals("")){
st.executeUpdate("insert into PNR_STATUS(PNR_NO,NAME,AGE,GENDER,BERTH,COACH)values('"+Pnr+"','"+passenger2+"','"+age2+"','"+gender2+"','"+berth2+"','"+coach_c+"')");
}
if(!passenger3.equals("")){
st.executeUpdate("insert into PNR_STATUS(PNR_NO,NAME,AGE,GENDER,BERTH,COACH)values('"+Pnr+"','"+passenger3+"','"+age3+"','"+gender3+"','"+berth3+"','"+coach_c+"')");
}
if(!passenger4.equals("")){
st.executeUpdate("insert into PNR_STATUS(PNR_NO,NAME,AGE,GENDER,BERTH,COACH)values('"+Pnr+"','"+passenger4+"','"+age4+"','"+gender4+"','"+berth4+"','"+coach_c+"')");
}
if(!passenger5.equals("")){
st.executeUpdate("insert into PNR_STATUS(PNR_NO,NAME,AGE,GENDER,BERTH,COACH)values('"+Pnr+"','"+passenger5+"','"+age5+"','"+gender5+"','"+berth5+"','"+coach_c+"')");
}
if(!passenger6.equals("")){
st.executeUpdate("insert into PNR_STATUS(PNR_NO,NAME,AGE,GENDER,BERTH,COACH)values('"+Pnr+"','"+passenger6+"','"+age6+"','"+gender6+"','"+berth6+"','"+coach_c+"')");
}
response.sendRedirect("home.jsp?msg=valid");

}

catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addtrain.jsp?msg=Invalid");

}

%>