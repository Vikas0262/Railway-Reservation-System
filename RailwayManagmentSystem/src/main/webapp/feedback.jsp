<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file = "admin_navbar.jsp" %>
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
color:darkblue;
background-color:#B8B8B8;
padding:15px;
font-family: 'Josefin Sans', sans-serif;
}
td{
background-color:#fff;
font-family: 'Josefin Sans', sans-serif;
padding:22px;
}
tbody{
    right: 100px;
    margin-top: -468px;
    position: absolute;
}



</style>
<body>


<h1></h1>
<table border=1  style="border-collapse:collapse">
<tr>

<th> Name</th>
<th> Email</th>
<th> Phone No</th>
<th> Message</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql_fb ="select * from FEEDBACK ";
resultSet = statement.executeQuery(sql_fb);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("NAME") %></td>
<td><%=resultSet.getString("EMAIL") %></td>
<td><%=resultSet.getString("CONTACT") %></td>
<td><%=resultSet.getString("MESSAGE") %></td>
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