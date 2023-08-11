<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDateTime"%>
<%@include file = "show_ticket.jsp"%>
                        <%-- Shows Train Searched By User --%>                   
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String Source = request.getParameter("source");
String Destination = request.getParameter("destination");
String Date = request.getParameter("date");
String Choice = request.getParameter("choice");
String driver = "com.mysql.cj.jdbc.Driver";
String conectionUrl = "jdbc:mysql://localhost:3306/";
String database = "railway";
String userid = "root";
String password = "root";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection con = null;
PreparedStatement pst = null;
ResultSet rst = null;
%>
<%session.setAttribute("date",Date);%>

<!DOCTYPE html>
<html>
<style>

th{
color:darkblue;
background-color:rgb(92,199,178);
padding:10px;
font-family: 'Josefin Sans', sans-serif;
}

td{
background-color:#fff;
font-family: 'Josefin Sans', sans-serif;
padding:18px;
}

tbody{
    top: 546px;
    padding: 23px;
    right: 294px;
    margin-top: -353px;
    position: absolute;
    width: 50%;
}
button {
    color: white;
    background: #ff5722c2;
    border: 2px solid #ff5722c2;
    curstor: pointer;
}
.styled-table{
border:0;
box-shadow:rgba(0,0,0.8);
}
a#hello{
background-color: darkblue;
    color: white;
    text-decoration: none;
    padding: 8px;
    }
a:hover{
     color: black;
    }
</style>
<body>

<form  method="post" action="addpassenger.jsp">
<table class="styled-table" border=0  style="border-collapse:collapse">
<tr>
<th>ID</th>
<th>Train Name</th>
<th>Train Number</th>
<th>Source</th>
<th>Destination</th>
<th>Departure</th>
<th>Arrival</th>
<th>SL Fare</th>
<th>I AC</th>
<th>II AC</th>
<th>III AC</th>
<th>Action</th>
</tr>
<%
if(Source=="" && Destination==""){
	response.sendRedirect("show_ticket.jsp?msg=Invalid");
}

try{
	String sql ="select * from train_info WHERE SOURCE=? and DESTINATION=?";

con = DriverManager.getConnection(conectionUrl+database, userid, password);
pst=con.prepareStatement(sql);
pst.setString(1, Source);
pst.setString(2, Destination);
rst = pst.executeQuery();

while(rst.next()){
String userdbTrainSource = rst.getString("SOURCE");
String userdbTrainDestination = rst.getString("DESTINATION");
if(!Source.equals(userdbTrainSource) || !Destination.equals(userdbTrainDestination)){
	System.out.print("mc");
	response.sendRedirect("show_ticket.jsp?msg=Invalid");
}
if(Source.equals(userdbTrainSource) && Destination.equals(userdbTrainDestination)){
%> 
<tr>
<td><%=rst.getInt("ID") %></td>
<td><%=rst.getString("Train_Name") %></td>
<td><%=rst.getString("Train_Code") %></td>
<td><%=rst.getString("Source") %></td>
<td><%=rst.getString("Destination") %></td>
<td><%=rst.getString("Departure") %></td>
<td><%=rst.getString("Arrival") %></td>
<td><%=rst.getString("SL_FARE") %></td>
<td><%=rst.getString("IAC_FARE") %></td>
<td><%=rst.getString("IIAC_FARE") %></td>
<td><%=rst.getString("IIIAC_FARE") %></td>
<td class="button"><a id="hello" href="addpassenger.jsp?id=<%=rst.getString("ID")%>">Book</a></td>
<%-- use id to get to the addpassenger page  --%>
</tr>
<%
}

else{

	response.sendRedirect("show_ticket.jsp?msg=Invalid");
}
} 


rst.close();

pst.close(); 

}catch(Exception e){
e.printStackTrace();
}
%>
</form>
</table>

</body>
</html>                       
                       