<%@page import="java.util.Set"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file = "admin_navbar.jsp" %>     
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
String id = request.getParameter("id");
session.setAttribute("userId", id);
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
Statement st = null;
ResultSet rs = null;
%>
<%
try{
conn = DriverManager.getConnection(connectionUrl+database, userid, password);
st=conn.createStatement();
String sql ="select * from train_info where ID="+id;
rs = st.executeQuery(sql);
while(rs.next()){
%>   

<!DOCTYPE html SYSTEM "about:legacy-compat">
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="addtrain.css" />
 <title>Add Train</title>
 <script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
 <link rel="icon" href="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/pngfind.com-train-vector-png-4595601.png?v=1640887051"type="image/icon type">
</head>
  <body>
  <div class="full-form">

    <div class="form-box">

      <div class="title"><i class="fas fa-subway"></i> Update Train</div>
      <div class="content">
        <form method="post" action="updateprocess.jsp">
          <div class="user-details">
            <div class="input-box">
              <span class="details">Train Name</span>
              <%=rs.getString("ID")%>
              <input type="text" placeholder="Enter Train Name" required name="TrainName" value="<%=rs.getString("Train_Name") %>">
            </div>
            <div class="input-box">
              <span class="details">Train Number</span>
              <input type="text" placeholder="Enter Train Number" required name="TrainNumber" value="<%=rs.getString("Train_Code") %>"/>
            </div>
            <div class="input-box">
              <span class="details">Class</span>
              <select id="cars" name="Coach">
                <option value="SL">SL </option>
                <option value="I">I AC</option>
                <option value="II">II AC</option>
                <option value="III">III AC</option>
              </select>
            </div>

            <div class="input-box">
              <span class="details">Distance</span>
              <input type="text" placeholder="Enter your number" required  name="Distance" />
            </div>
            <div class="input-box">
              <span class="details">Source</span>
              <input type="text" placeholder="Source" required name="Source" />
            </div>
            <div class="input-box">
              <span class="details">Destination</span>
              <input type="text" placeholder="Destination" required name="Destination" />
            </div>
            <div class="input-box">
              <span class="details">Departure Time</span>
              <input type="text" placeholder="Departure Time" required name="Departure" />
            </div>
            <div class="input-box">
              <span class="details">Arrival Time</span>
              <input type="text" placeholder="Arrival Time" required name="Arrival"/>
            </div>
            <div class="input-box">
              <span class="details">Fare</span>
              <input type="text" placeholder="Fare" required name="Fare" />
            </div>
          </div>
          <button class="button" type="submit">Add</button>
           <% String msg=request.getParameter("msg"); if("valid".equals(msg)){ %>
                <h6>Successfully Added</h6>
                <%}%>
                  <% if("invalid".equals(msg)){ %>
                    <h5>Something Went Wrong</h5>

                    <%}%>

        </form>
         <% } conn.close(); } catch (Exception e) { e.printStackTrace(); } %>
       </div>
      </div>
    </div>
  </body>
</html>
