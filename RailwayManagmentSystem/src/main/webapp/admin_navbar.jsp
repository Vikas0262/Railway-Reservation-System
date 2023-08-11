<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="project.ConnectionProvider"%>
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

    <div class="wrapper">
        <div class="sidebar">
            <h3>
                <%=session.getAttribute("Email")%>
            </h3>
            <ul style=line-height:"59px">
                <li>
                    <a href="dashboard.jsp"><i class="fas fa-home"></i>Dashboard</a>
                </li>

                <div class="dropdown">
                    <li class="dropbtn">
                        <a href="#"><i class="fas fa-user"></i>Trains</a>
                    </li>
                    <div class="dropdown-content">
                        <a href="addtrain.jsp">Add Train</a>
                        <a href="view_update_train.jsp">Update Train</a>
                        <a href="Delete.jsp">Delete Train</a>
                        <a href="searchtrain.jsp">Search Train</a>
                    </div>
                </div>
                <li>
                    <a href="feedback.jsp"><i class="fas fa-subway"></i>Booked Ticket</a>
                </li>
                <li>
                    <a href="feedback.jsp"><i class="fas fa-subway"></i>Cancel Ticket</a>
                </li>
                <li>
                    <a href="feedback.jsp"><i class="fas fa-address-book"></i>Feedback</a>
                </li>
                <li>
                    <a href="index.jsp"><i class="fas fa-map-pin"></i>Logout</a>
                </li>
            </ul>
        </div>
        <div class="main_content">
            <div class="header">ADMINISTRATION</div>
            <img src="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/railway16.jpg?v=1642264497"
                alt="Italian Trulli" />
        </div>
    </div>
</body>

</html>s