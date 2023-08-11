                       <%-- Shows Train Searched By User --%> 
<%@include file = "searchtrain.jsp" %>                       
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String tcode = request.getParameter("search_train");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "railway";
String userid = "root";
String password = "admin";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<style>

th{
color:darkblue;
background-color:rgb(92,199,178);
padding:15px;
font-family: 'Josefin Sans', sans-serif;
}

td{
background-color:#fff;
font-family: 'Josefin Sans', sans-serif;
padding:22px;
}

tbody{
    top: 546px;
    padding: 23px;
    right: 133px;
    margin-top: -353px;
    position: absolute;
    width: 50%;
}

</style>
<body>


<h1></h1>
<table border=0  style="border-collapse:collapse">
<tr>

<th>Train Name</th>
<th>Train Number</th>
<th>Source</th>
<th>Destination</th>
<th>Departure</th>
<th>Arrival</th>
<th>Fare</th>

</tr>
<%
try{
	String sql ="select * from train_info WHERE TRAIN_CODE=?";

conn = DriverManager.getConnection(connectionUrl+database, userid, password);
ps=conn.prepareStatement(sql);
ps.setString(1, tcode);
rs = ps.executeQuery();
if(rs.next())

{ 
String userdbTrainCode = rs.getString("TRAIN_CODE");

if(tcode.equals(userdbTrainCode)){
%> 
<tr>
<td><%=rs.getString("Train_Name") %></td>
<td><%=rs.getString("Train_Code") %></td>
<td><%=rs.getString("Source") %></td>
<td><%=rs.getString("Destination") %></td>
<td><%=rs.getString("Departure") %></td>
<td><%=rs.getString("Arrival") %></td>
<td><%=rs.getString("Fare") %></td>
</tr>
<%
} 
}
else{

	response.sendRedirect("index.jsp?msg=Invalid");
}
rs.close();

ps.close(); 

}catch(Exception e){
e.printStackTrace();
}
%>
</table>
</body>
</html>                       
                       