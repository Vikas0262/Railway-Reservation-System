<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "railway";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<style>
th{
background-color:green;
padding:5px;
font-family: 'Josefin Sans', sans-serif;
}
td{
font-family: 'Josefin Sans', sans-serif;
padding:5px;
}



</style>
<body>


<h1></h1>
<table border=1  style="border-collapse:collapse">
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
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from train_info ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("Train_Name") %></td>
<td><%=resultSet.getString("Train_Code") %></td>
<td><%=resultSet.getString("Source") %></td>
<td><%=resultSet.getString("Destination") %></td>
<td><%=resultSet.getString("Departure") %></td>
<td><%=resultSet.getString("Arrival") %></td>
<td><%=resultSet.getString("Fare") %></td>
</tr>
<%

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>