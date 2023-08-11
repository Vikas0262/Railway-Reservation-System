<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@include file = "admin_navbar.jsp" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Search Train</title>
        <style>
            .wrap {
                position: absolute;
    /* border: 2px solid red; */
    margin-top:-103vh;
    width: 55%;
    /* padding-left: 19px; */
    background: #fff;
    padding-right: 30px;
    right: 188px;
    padding: 30px;
            }

            .wrap .ud {
                color:darkblue;
            	font-weight: bold;
            	font-size: 1.7rem;
                display: block;
                margin-bottom: 10px;
            }

            .wrap input {
                border: 2px solid darkblue;
                width: 100%;
                height: 30px;
                padding-left: 5px;
                font-size: 0.9rem;
                margin-bottom: 8px;
                border-radius: 5px;
                height: 35px;
            }
            .wrap .det .btn{
            	border: 2px solid darkblue;
                width: 6vw;
                height: 33px;
                padding: 3px;
                border-radius: 5px;
                background: darkblue;
                cursor:pointer;
                color: white;
                font-size: 0.9rem;
                font-family: sans-serif;
                margin-bottom: 10px;
            }
            .wrap .det .btn:hover{
                background: red;
            }
        </style>

    </head>

    <body>

        <div class="wrap">
        <form  method="post" action="showstrain.jsp">
       <span class="ud">Search Train</span>
            <input type="text" placeholder="Enter train name" name="search_train">
            <div class="det">
               <button class="btn" type="submit">Search</button>
            </div>
            </form>
        </div>


        
    </body>

    </html>