<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <!DOCTYPE html SYSTEM "about:legacy-compat">
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <link rel="stylesheet" href="" />
        <title>Welcome To INDIAN RAILWAY</title>
        <link rel="icon"
            href="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/pngfind.com-train-vector-png-4595601.png?v=1640887051"
            type="image/icon type">
        <script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
        <link rel="icon"
            href="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/pngfind.com-train-vector-png-4595601.png?v=1640887051"
            type="image/icon type">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            #first {
                text-align: center;
                background-color: black;
                color: wheat;
            }

            h6 {
                color: red;
                text-align: center;
                font-family: 'Roboto', sans-serif;
                font-size: 12px;
            }

            #second {
                position: absolute;
                right: 316px;
                top: 231px;
                font-size: 3vh;
                color: white;
            }

            .background {
                background-image: url("https://cdn.shopify.com/s/files/1/0293/6448/6192/files/istockphoto-972647478-612x612.jpg?v=1642264496");

                z-index: -1;
                height: 650px;
                width: 100%;
                background-repeat: no-repeat;
                background-size: 100% 100%;

            }

            .form-box .title {
                color: white;
                margin-top: 6px;
                font-size: 25px;
                font-weight: 500;
                position: relative;
            }

            .form-box .title::before {
                content: "";
                position: absolute;
                left: 0;
                bottom: 0;
                height: 3px;
                width: 30px;
                border-radius: 5px;
                background: white;
            }

            .content form .user-details {
                display: flex;
                flex-direction: column;
                flex-wrap: wrap;
                justify-content: space-between;
                margin: 25px 0 12px 0;
            }

            form .user-details .input-box {
                margin-bottom: 15px;
                justify-content: space-between;
            }

            form .input-box span.details {
                color: white;

                font-weight: 500;
                margin-bottom: 5px;
            }

            .user-details .input-box input,
            #cars {
                height: 45px;
                width: 100%;
                outline: none;
                font-size: 16px;
                /* margin: 0 auto; */
                border-radius: 5px;
                padding-left: 15px;
                border: 1px solid #ccc;
                border-bottom-width: 2px;
                transition: all 0.3s ease;
            }

            .user-details .input-box input:focus,
            .user-details .input-box input:valid {
                border-color: #9b59b6;
            }

            form .button {
                width: 100%;
                height: 45px;
                border-radius: 5px;
                font-size: 1rem;
                color: white;
                background: green;
                border: 0;
                cursor: pointer;
            }

            form .button:hover {
                background: red;

            }

            .full-form {
                /* outline: none; */
                margin-top: -440px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                /* background: linear-gradient(-135deg,#9b59b6,#71b7e6); */
            }




            @media(max-width: 584px) {
                .container {
                    max-width: 100%;
                }

                form .user-details .input-box {
                    margin-bottom: 15px;
                    width: 100%;
                }

                form .category {
                    width: 100%;
                }

                .content form .user-details {
                    max-height: 300px;
                    overflow-y: scroll;
                }

                .user-details::-webkit-scrollbar {
                    width: 5px;
                }
            }

            @media(max-width: 459px) {
                .container .content .category {
                    flex-direction: column;
                }
            }

            /* .back input{
    height: 100%;
    width: 12%;
  border-radius: 5px;
  border: none;
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  letter-spacing: 1px;
  cursor: pointer;
  transition: all 0.3s ease;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
} */
            .delta {
                text-decoration: none;
                margin-top: 13px;
            }

            .delta a {
                color: red;
            }

            .form-box {
                max-width: 374px;
                width: 90%;
                background-color: black;
                padding: 20px 30px;
                border-radius: 5px;
                box-shadow: 0 5px 10px rgb(0 0 0 / 15%);
            }

            .input-box-1 {
                display: flex;
                justify-content: space-around;
                /* background-color: red; */
            }
        </style>
    </head>

    <body>
        <div class="background">


            <h1 id="first">ADMIN PANEL</h1>

        </div>
        <div class="full-form">
            <div class="form-box">

                <div class="title"><i class="fas fa-subway"></i> Login</div>
                <div class="content">
                    <form method="post" action="adminprocess.jsp">
                        <div class="user-details">
                            <div class="input-box">
                                <span class="details">User Email: </span>
                                <input type="text" placeholder="Enter Your Email" required name="Email" />
                            </div>
                            <div class="input-box">
                                <span class="details">Password: </span>
                                <input type="password" placeholder="Enter Your Password" required name="Password" />
                            </div>

                        </div>
                        <% String msg=request.getParameter("msg"); if("Invalid".equals(msg)){ %>
                            <h6>Email OR Password is Incorrect</h6>
                            <%}%>


                                <button class="button" type="submit">Login</button>


                    </form>
                </div>
            </div>
        </div>

    </body>

    </html>