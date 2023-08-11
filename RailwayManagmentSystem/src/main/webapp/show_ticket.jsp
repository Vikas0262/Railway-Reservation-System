<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@include file = "navbar2.jsp"%> 
<% String s= (String)session.getAttribute("user");
 if(s==null){
	 response.sendRedirect("index.jsp"); 
 }%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Book - Ticket</title>
    <link href="//db.onlinewebfonts.com/c/d65b8ca5058660308e53ce689421c895?family=Plaza+Std" rel="stylesheet" type="text/css"/>
    <link href="https://www.dafontfree.net/embed/cGxhemEtc3RkLXJlZ3VsYXImZGF0YS81OS9wLzE1NzgxNi9QbGF6YVN0ZC5vdGY" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: sans-serif;
        }

      

        .laure {
           box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 19%);
    height: 473px;
    text-align: center;
    /* max-width: 25%; */
    margin: 0 auto;
    background-color: #fff;
    padding: 25px;
    border-radius: 5px;
    margin-left: 17px;
    /* margin-top: -535px; */
    /* z-index: 1; */
    position: absolute;
    top: 112px;
}
   

        .laure h2 {
       font-family: "Plaza Std";
            font-size: 4em;
            font-weight: 400;
            text-transform: uppercase;
            
            color: #250f7f;
        }

        .laure b {
            font-family: monospace;
    font-size: 20px;
    font-weight: 100;
    color: #250f7f;
        }

        input#fname {
            padding: 8px 20px 8px;
            border: 2px solid #250f7f;
            border-radius: 5px;
            width: 100%;
            color: #344ac9;
            font-size: 18px;
            font-weight: 500;
            margin: 10px 0px;
        }

        .laure span {
            font-size: 25px;
            color: #1328e3;
            font-weight: 500;
        }

        input#fname:focus-visible {
            border: 1px solid rgb(0, 119, 255) !important;
        }

        select#sit {
            padding: 8px 20px 8px;
            border: 2px solid #250f7f;
            border-radius: 5px;
            width: 100%;
            color: #344ac9;
            font-size: 18px;
            font-weight: 500;
            margin: 10px 0px;
        }

        .div-flax {
            display: flex;
            align-items: center;
            column-gap: 10px;
            width: 100%;
            margin: auto;
            justify-content: space-around;
            padding: 10px 0px;
        }

 

        button.button-train {
            padding: 10px 20px 10px;
            width: 100%;
            border: none;
            background-color: #189effc9;
            color: #fff;
            font-size: 18px;
            font-weight: 500;
            margin: 10px 0px;
            cursor: pointer;
            margin-bottom: -7px;
        }

        .fa-subway:before {
            content: "\f239";
           
            font-weight: 100;
        }
        .form-main{
        width: 100%;
    object-fit: cover;
    height: 540px;
    }

    </style>
</head>

<body>
<%
try{ 

	Connection conn = ConnectionProvider.getCon(); 
Statement st = conn.createStatement() ; 
ResultSet rs =st.executeQuery("select * from city") ; 
%> 
    <div class="container-b">
   <img class="form-main" alt="" src="wp5521998-indian-railway-wallpapers.jpg">
        <form class="laure" method="post" action="seetrain.jsp">
          <div class="fo-inside">
            <h2>Book</h2>
            <b>Your Ticket</b><br>
            <span><i class="fa fa-subway"></i></span>
             <input type="text"  list="city" id="fname" name="source" placeholder="Source"><br>
             <datalist id="city" required name="source">
<%  while(rs.next()){ %>
<option><%= rs.getString(2)%> 
</option> <% } %> <% } 
catch(Exception e) 
{ out.println("wrong entry"+e); } %> 
</datalist>
         
           <% 
try{ Connection conn = ConnectionProvider.getCon(); 
Statement st = conn.createStatement() ; 
ResultSet rs =st.executeQuery("select * from city") ;
%> 
            <span>&#x21c5;</span><br>
             <input type="text"  list="city" id="fname" name="destination" placeholder="Destination"><br>
             <datalist id="city" required name="destination">
<%  while(rs.next()){ %>
<option><%= rs.getString(2)%> 
</option> <% } %> <% } 
catch(Exception e) 
{ out.println("wrong entry"+e); } %> 
</datalist><br>
            <input type="date"  min="2022-03-18" max="2022-06-21" id="fname" name="date" placeholder="DD/MM/YYYY"><br>
            <div class="button-div">
                 <button class="button-train"  type="submit">Find trains</button>
            </div>
 </div>
    </form>
   
    </div>
</body>

</html>