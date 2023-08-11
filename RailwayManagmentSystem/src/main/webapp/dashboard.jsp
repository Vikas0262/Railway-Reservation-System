<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="project.ConnectionProvider"%>
<%@include file = "admin_navbar.jsp"%> 
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="dashboard.css" />
    <link rel="icon"
        href="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/pngfind.com-train-vector-png-4595601.png?v=1640887051"
        type="image/icon type" />
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
</head>

<body>
<% Connection conn = ConnectionProvider.getCon(); 
String sql ="SELECT COUNT(*) FROM train_info";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(sql);
String Countrow="";
while(rs.next()){
Countrow = rs.getString(1);
}
%>
<% Connection con = ConnectionProvider.getCon(); 
String sql_1 ="SELECT COUNT(*) FROM user_info";
Statement st_1=con.createStatement();
ResultSet rs_1 = st_1.executeQuery(sql_1);
String rg="";
while(rs_1.next()){
rg = rs_1.getString(1);
}
%>
<% Connection con_2 = ConnectionProvider.getCon(); 
String sql_2 ="SELECT COUNT(*) FROM feedback";
Statement st_2=con_2.createStatement();
ResultSet rs_2 = st_2.executeQuery(sql_2);
String feed="";
while(rs_2.next()){
feed = rs_2.getString(1);

}
%>
   <div class="d-card">
                <div class="das-card">
                
                    <div class="box" id="one">
                    <i class="fas fa-user-plus" style="font-size:80px"></i>
                    <h2><%=rg %></h2>
                     <h1>Registered User</h1>
                    </div>
                    
                    <div class="box"  id="two">
                    <i class="fas fa-subway" style="font-size:80px"></i>
                    <h2><%=Countrow%></h2>
                     <h1>Available Train</h1>
                    </div>
                    
                    <div class="box" id="three">
                    <i class="far fa-check-circle" style="font-size:80px"></i>
                    <h2>2</h2>
                       <h1>Booked Ticket</h1>

                    </div>
                    <div class="box" id="four">
                    <i class="far fa-times-circle" style="font-size:80px"></i>
                     <h2><%=Countrow%></h2>
                       <h1>Cancelled Ticket</h1>

                    </div>
                    <div class="box" id="five">
                    <i class="fas fa-users" style="font-size:80px"></i>
                      <h2><%=feed%></h2>
                       <h1>FeedBack</h1>

                    </div>
                    <div class="box"  id="six">

                    </div>


                </div>


            </div>
            </body>
            </html>