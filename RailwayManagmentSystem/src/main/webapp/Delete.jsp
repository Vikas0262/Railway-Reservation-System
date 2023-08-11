 <%@include file = "admin_navbar.jsp"%> 
                        <%-- Shows Train Searched By User --%>                   
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
    right: 224px;
    margin-top: -353px;
    position: absolute;
    width: 50%;
}
button {
    color: white;
    background: #ff5722c2;
    border: 2px solid #ff5722c2;
    cursor: pointer;
}

</style>
<body>

<table class="styled-table" border=0  style="border-collapse:collapse">
<tr>
<th>ID</th>
<th>Train Name</th>
<th>Train Number</th>
<th>Source</th>
<th>Destination</th>
<th>Departure</th>
<th>Arrival</th>
<th>Fare</th>
<th>Action</th>

</tr>
<%
try{
	String sql ="select * from train_info";

conn = DriverManager.getConnection(connectionUrl+database, userid, password);
ps=conn.prepareStatement(sql);
rs = ps.executeQuery();

while(rs.next()){
%>
%>
<tr>
<td><%=rs.getInt("ID") %></td>
<td><%=rs.getString("Train_Name") %></td>
<td><%=rs.getString("Train_Code") %></td>
<td><%=rs.getString("Source") %></td>
<td><%=rs.getString("Destination") %></td>
<td><%=rs.getString("Departure") %></td>
<td><%=rs.getString("Arrival") %></td>
<td><%=rs.getString("SL_FARE") %></td>
<td class="button"><a href="DeleteProcess.jsp?id=<%=rs.getString("ID")%>">Delete</a></td>
<%-- use id to get to the addpassenger page  --%>
</tr>
<%
} 
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>                       
                       