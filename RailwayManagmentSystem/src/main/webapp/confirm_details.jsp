<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="navbar2.jsp" %>
<%@include file="ticketcard.jsp" %>
<%
   
	String passenger1=request.getParameter("P1");
	String passenger2=request.getParameter("P2");
	String passenger3=request.getParameter("P3");
	String passenger4=request.getParameter("P4");
	String passenger5=request.getParameter("P5");
	String passenger6=request.getParameter("P6");
	
	String Gender1=request.getParameter("Gender1");
	String Gender2=request.getParameter("Gender2");
	String Gender3=request.getParameter("Gender3");
	String Gender4=request.getParameter("Gender4");
	String Gender5=request.getParameter("Gender5");
	String Gender6=request.getParameter("Gender6");
	
	String Age1=request.getParameter("Age1");
	String Age2=request.getParameter("Age2");
	String Age3=request.getParameter("Age3");
	String Age4=request.getParameter("Age4");
	String Age5=request.getParameter("Age5");
	String Age6=request.getParameter("Age6");
	
	String Berth1=request.getParameter("Berth1");
	String Berth2=request.getParameter("Berth2");
	String Berth3=request.getParameter("Berth3");
	String Berth4=request.getParameter("Berth4");
	String Berth5=request.getParameter("Berth5");
	String Berth6=request.getParameter("Berth6");
	
	
	String mobileNo=request.getParameter("mobile");
	String choice=request.getParameter("choice");
	String Tcode =request.getParameter("Train_Code");
	String S=request.getParameter("bstation");
	String R=request.getParameter("rstation");
	session.setAttribute("Tcode", Tcode);
	session.setAttribute("Source", S);
	session.setAttribute("Destination", R);
	session.setAttribute("MOBILE", mobileNo);
	
	session.setAttribute("coach", choice);
	
	session.setAttribute("p1", passenger1);
	session.setAttribute("p2", passenger2);
	session.setAttribute("p3", passenger3);
	session.setAttribute("p4", passenger4);
	session.setAttribute("p5", passenger5);
	session.setAttribute("p6", passenger6);
	
	session.setAttribute("g1", Gender1);
	session.setAttribute("g2", Gender2);
	session.setAttribute("g3", Gender3);
	session.setAttribute("g4", Gender4);
	session.setAttribute("g5", Gender5);
	session.setAttribute("g6", Gender6);
	
	session.setAttribute("b1", Berth1);
	session.setAttribute("b2", Berth2);
	session.setAttribute("b3", Berth3);
	session.setAttribute("b4", Berth4);
	session.setAttribute("b5", Berth5);
	session.setAttribute("b6", Berth6);
	
	session.setAttribute("a1", Age1);
	session.setAttribute("a2", Age2);
	session.setAttribute("a3", Age3);
	session.setAttribute("a4", Age4);
	session.setAttribute("a5", Age5);
	session.setAttribute("a6", Age6);

	int price=0;
	String a="";
	String b="";
	String c="";
	String d="";
	int i=0;
	if(!passenger1.equals("")){ 
		i++;
	}
	if(!passenger2.equals("")){ 
		i++;
	}
	if(!passenger3.equals("")){ 
		i++;
	}
	if(!passenger4.equals("")){ 
		i++;
	}
	if(!passenger5.equals("")){ 
		i++;
	}
	if(!passenger6.equals("")){ 
		i++;
	}
	
%> 
<% String id=(String)session.getAttribute("id");
System.out.println(id);
                                               
                        String driver="com.mysql.cj.jdbc.Driver" ; 
                        String connectionUrl="jdbc:mysql://localhost:3306/" ;
                            String database="railway" ; 
                            String userid="root" ; 
                            String password="root" ; 
                            try {
                            Class.forName(driver); 
                            } 
                            catch (ClassNotFoundException e) 
                            { e.printStackTrace(); 
                            }
                            Connection conn=null; 
                            Statement statement=null; 
                            ResultSet rs=null; 
                            %>
                 
 <% try{ conn=DriverManager.getConnection(connectionUrl+database, userid, password);
                                statement=conn.createStatement(); 
                                String sql="select * from train_info where id=" +id;
                                rs=statement.executeQuery(sql); while(rs.next()){ %>
                                <%  a = rs.getString("SL_FARE");
                                    b = rs.getString("IAC_FARE");
                                    c = rs.getString("IIAC_FARE");
                                    d = rs.getString("IIIAC_FARE");
                                %>
<% } conn.close(); } catch (Exception e) { e.printStackTrace(); } %>
<% 
System.out.println(choice);
if(choice.equals("IAC")){
	 price = Integer.parseInt(b)* i;
}
else if(choice.equals("IIAC")){
	price=0;
	 price = Integer.parseInt(c)* i;
}
else if(choice.equals("IIIAC")){
	price=0;
	 price = Integer.parseInt(d)* i;
}
else{
	price=0;
	 price = Integer.parseInt(a)* i;
}
String send = String.valueOf(price);
session.setAttribute("Fare", send);
%>                               

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
@import url('https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap');
*{
margin:0;
padding:0;
box-sizing:border-box;
}

.cont-2{
margin-left: 23px;
    width: 40%;
    margin-top: 32px;
   height: 143px;
   }
.card-1{
height: 62px;
    width: 100%;
    background-color: #5E33FF;
}
.card-2{
display: flex;
    flex-direction: column;
    border-radius: 12px;
    box-shadow: 0 8px 16px 0 rgb(0 0 0 / 20%);
    padding: 10px;
    margin-top: 109px;
    width: 547px;
    height: 143px;
    background: #fafafa;
    justify-content: space-between;
    align-items: center;

}
.cont-3{
margin-left: 23px;
    width: 40%;
    margin-top: 32px;
    height: 262px;
    background-color: red;
}
.card-3{
background-color: darkblue;
height: 62px;
    width: 100%;
    background-color: darkblue;
    color:white;
}
.card-4{
   width: 100%;
    height: 200px;
    background: #fafafa;
    box-shadow: 0 8px 16px 0 rgb(0 0 0 / 20%);
}
span {
    display: flex;
     text-align: cenetr;
    justify-content: center;
    font-size: 32px;
    padding: 11px;
    font-family: 'Source Sans Pro', sans-serif;
}
#container {
padding:3px;
width: 70%;
    display: flex; 
    justify-content: space-between;
}
h4,h2{
font-size: 13px;
    font-weight: 500;
font-family: 'Source Sans Pro', sans-serif;
    
}
h1{
font-size: 14px;
    font-weight: bold;
font-family: 'Source Sans Pro', sans-serif;

}
h3 {
    font-family: 'Source Sans Pro', sans-serif;
}
button {
    border-radius: 5px;
    background: darkblue;
    color: white;
    /* width: 4%; */
    padding: 10px;
    border: 0;
    outline: none;
}
.button{
text-align: center;
}
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@300&display=swap');
.S{
  font-family: 'Heebo', sans-serif;
   background-color: #9cb2cd;
    height: 11%;
    }
.f{
  background-color: #9cb2cd;
    font-family: 'Heebo', sans-serif;
    height: 11%;
}        
.id-card2 {
left: 750px;
    position: absolute;
    box-shadow: 0 8px 16px 0 rgb(0 0 0 / 20%);
    background-color: rgb(222,237,255);
    width: 22%;
    height: 440px;
    top: 117px;
}
.dot {
  padding: 4px;
    height: 15px;
    width: 14px;
    background-color: white;
    border-radius: 50%;
    display: inline-block;
    /* font-size: 16px; */
    /* padding-left: 10px; */
    /* padding-right: 10px; */
   margin: 11px 19px;
}

.details{
font-size: 20px;
    display: flex;
    background-color: rgb(222,237,255);
    height: 343px;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
}
.line{
background-color: white;
height:2px;
}
img {
   max-width: 65px;
}
h2{
font-size: 13px;
    font-weight: 500;
font-family: 'Source Sans Pro', sans-serif;
    
}
h1{
font-size: 14px;
    font-weight: bold;
font-family: 'Source Sans Pro', sans-serif;
    
}
.details1{
background-color: #c0d8f3;
    width: 81%;
    /* margin-left: 28px; */
    padding: 11px;
    }
p{
text-align: center;
    font-family: cursive;
    font-size: 15px;
    margin-top: -1px;
    }  
.cl {
    color: grey;
    font-family: monospace;
}      
</style>
</head>
<body>
<div class="cont-1">
<form action="payment.jsp">
	<div class="cont-2">
		<div class="card-2">
		  
		<h1><%=request.getParameter("Train_Name")%> | <%=request.getParameter("Train_Code")%> | <%= i %> Traveller</h1>
		
		<div id="container">
		<h2>From Station</h2>
		<h2>To Station</h2>
		</div>
		
		<div id="container">
		<h3><%=request.getParameter("bstation")%></h3>
		<h3><%=request.getParameter("rstation")%></h3>
		</div>
		
		<div id="container">
		<h4>Departure 2020-10-25 | 1:00 AM</h4>
		<h4>Arrival 2020-10-25 | 1:00 AM</h4>
		</div>
		
		
		
		</div>
	</div>
	<div class="cont-3">
		<div class="card-3">
		<span>Journey Details</span>
		
		
		
		</div>
		<div class="card-4">
		 <%if(!passenger1.equals("")){ 
		 %>
		 <div id="container">
		<h3><%=request.getParameter("P1")%></h3>
		<h3><%=request.getParameter("Age1")%></h3>
		<h3><%=request.getParameter("Gender1")%></h3>
		<h3><%=request.getParameter("Berth1")%></h3>
		
		</div>
		
		<%} %>
		
		<%if(!passenger2.equals("")){
			%>
		 <div id="container">
		<h3><%=request.getParameter("P2")%></h3>
		<h3><%=request.getParameter("Age2")%></h3>
		<h3><%=request.getParameter("Gender2")%></h3>
		<h3><%=request.getParameter("Berth2")%></h3>
		
		</div>
		<%} %>
		
		<%if(!passenger3.equals("")){ 
		 i++;%>
		 <div id="container">
		<h3><%=request.getParameter("P3")%></h3>
		<h3><%=request.getParameter("Age3")%></h3>
		<h3><%=request.getParameter("Gender3")%></h3>
		<h3><%=request.getParameter("Berth3")%></h3>
		
		</div>
		<%} %>
		
		<%if(!passenger4.equals("")){ 
		 %>
		 <div id="container">
		<h3><%=request.getParameter("P4")%></h3>
		<h3><%=request.getParameter("Age4")%></h3>
		<h3><%=request.getParameter("Gender4")%></h3>
		<h3><%=request.getParameter("Berth4")%></h3>
		
		</div>
		<%} %>
		
		<%if(!passenger5.equals("")){ 
		%>
		 <div id="container">
		<h3><%=request.getParameter("P5")%></h3>
		<h3><%=request.getParameter("Age5")%></h3>
		<h3><%=request.getParameter("Gender5")%></h3>
		<h3><%=request.getParameter("Berth5")%></h3>
		
		</div>
		<%} %>
		
		<%if(!passenger6.equals("")){ 
		 %>
		<div id="container">
		<h3><%=request.getParameter("P6")%></h3>
		<h3><%=request.getParameter("Age6")%></h3>
		<h3><%=request.getParameter("Gender6")%></h3>
		<h3><%=request.getParameter("Berth6")%></h3>
		
		</div>
		<%} 
		System.out.println(i);
		%>
		
		
		</div>
	</div>

<div class="button">
<button type="Submit">Continue</button>
</form>
</div>
</div>

<div class="id-card">
<div class="id-card2">
 <div class="f">
&nbsp;&nbsp;<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
  </div>
<div class="line"></div>
 <div class="details">
 <img alt="not_available" src="irctc.svg">
 <h5>Chennai EXPRESS</h5>
 <h6>(01062)</h2>
 <div class="details1">
 <i class="fas fa-arrow-circle-Right" ></i>
 <p class="cl"><%=session.getAttribute("date")%></p>
 <p><b><%=request.getParameter("bstation")%></b></p>
 <p class="cl">Departure:  <%=session.getAttribute("Departure") %></p>
 <p class="cl">24-10-2022</p>
 <p><b><%=request.getParameter("rstation")%></b></p>
 <p class="cl">Arrival: <%=session.getAttribute("Arrival") %></p>
 
 </div>
 <h5>Total Fare <%=price%></h5>
 </div>
 <div class="line"></div> 
  <div class="S">
  &nbsp;&nbsp;<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
  </div>
  
  </div>
 
</div>
<script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
</body>
</html>