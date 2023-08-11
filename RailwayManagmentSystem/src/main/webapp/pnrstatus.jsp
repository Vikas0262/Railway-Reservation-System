<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@include file = "navbar2.jsp"%> 
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>PNR Status</title>
        <link rel="stylesheet" href="navbar.css">
        <script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>

        <style>
            body{
            	background: url("https://cdn.shopify.com/s/files/1/0293/6448/6192/files/indian-g6f287df56_1920.jpg?v=1642264497");
    			background-position: center;
    			background-size: cover;
    			height: 100vh;
    			width: 100%;
    			min-height: 100vh;
    			align-items: center;
    			justify-content: center;
            }

.wrapper {
    background: #fff;
    opacity: 1;
    margin-top: 13vh;
    width: 46vw;
    text-align: center;
    padding: 30px;
    margin-top: 23vh;
    margin-left: 27%;
    border-radius: 5px;
}

        .user-detail {
            color:darkblue;
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
            }

            .wrapper form .details input {
                height: 35px;
                width: 40vw;
                margin-bottom: 10px;
                outline: none;
                border-radius: 5px;
                border: 1px solid #ccc;
                padding-left: 15px;
                font-size: 17px;
                transition: all 0.3s ease;
            }

            .wrapper form .details .btn {
               border: 1px solid darkblue;
    width: 10vw;
    height: 35px;
    /* padding: 10px; */
    /* border-radius: 5px; */
    background: darkblue;
    color: white;
    font-size: 0.9rem;
    cursor: pointer;
    margin-left: 10px;
              
            }

            .wrapper form .details .btn:hover {
                background: red;
            }
            .details{
            display:flex;
            }
        </style>

    </head>

    <body>
        <div class="wrapper">
            <form action="pnr_status_action.jsp" method="post">
            <span class="user-detail">PNR Number :</span>
                <div class="details">
                    <input type="text" placeholder="Enter PNR Number" name="pnr_no">
         
                    <button class="btn" type="submit">Get Status  <i class="fa fa-search"></i>  </button>
                </div>
            </form>
        </div>



        <!-- --------------------------------------------------------- -->
       
    </body>

    </html>