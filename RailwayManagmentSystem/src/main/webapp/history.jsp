<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDateTime"%>

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
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
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
<th>Transcation ID</th>
<th>PNR_NO</th>
<th>Train Number</th>
<th>Train Name</th>
<th>Source</th>
<th>Destination</th>
<th>Paid Amount</th>
<th>Mobile No</th>
<th>Booked By</th>
</tr>
<%
try{
connection = DriverManager.getConnection(conectionUrl+database, userid, password);
statement=connection.createStatement();
String sql_fb ="select * from ticket_booking_info";
resultSet = statement.executeQuery(sql_fb);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("TRANSACTION_ID") %></td>
<td><%=resultSet.getString("PNR_NO") %></td>
<td><%=resultSet.getString("TRAIN_CODE") %></td>
<td><%=resultSet.getString("SOURCE") %></td>
<td><%=resultSet.getString("DESTINATION") %></td>
<td><%=resultSet.getString("PAID_AMOUNT") %></td>
<td><%=resultSet.getString("MOBILE_NO") %></td>
<td><%=resultSet.getString("USER_ID") %></td>
</tr>
<%

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</form>
</table>

</body>
</html>                       
                       