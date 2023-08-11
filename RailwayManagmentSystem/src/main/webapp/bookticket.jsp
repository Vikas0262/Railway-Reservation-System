<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>
<%@page import="project.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file = "navbar2.jsp"%> 
<!DOCTYPE html SYSTEM "about:legacy-compat">
<html>
<head>
<meta charset="ISO-8859-1">
<style>
span.details{
width:0px;
}
.line-frist {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
    
}
.line-frist #fname {
    border: 1px solid #1eb914b0;
    padding: 10px 35px;
    border-radius: 5px;
    margin-right: 12.5px;
   color: #8b758b;
    font-size: 15px;
    font-weight: 100;
    text-transform: capitalize;
     width: 100%;
}
.line-frist input#id\ date {
    width: 100%;
    border: 1px solid #1eb914b0;
    padding: 10px 35px;
    border-radius: 5px;
    margin-left: 12.5px;
   color: #8b758b;
    font-size: 15px;
    font-weight: 100;
}
select#sit {
    width:100%;
    border: 1px solid #1eb914b0;
    padding: 10px 35px;
    border-radius: 5px;
    margin-left: 12.5px;
    color: #8b758b;
    font-size: 15px;
    font-weight: 100;
    text-transform: capitalize;
}
select#div-sit {
   position: relative;
    width: 44%;
    border: 1px solid #1eb914b0;
    padding: 10px 35px;
    border-radius: 5px;
    color: #8b758b;
    font-size: 15px;
    text-transform: capitalize;
    font-weight: 100;
    bottom: 61px;
    left: 37px;
}
h5.headind-from {
color:darkblue;
    text-align: center;
    padding: 25px 0px;
    font-size: 30px;
}
.background {
    background-color: #fff;
    padding: 30px 20px;
    border-radius: 10px;
    position: absolute;
    top: 30%;
    right: 0;
    left: 50px;
    width: 40%;
}
.background from {
    width: 40%;
    margin: auto;
}
button.btn {
    margin-top: 41px;
    padding: 12px 35px;
    text-transform: capitalize;
    border: none;
    color: #fff;
    background-color: #ff5722c2;
    cursor: pointer;
    font-weight: 500;
    font-size: 15px;
    position: relative;
    bottom: 61px;
    left: 59px;
}


/**************************     */
.full-form img {
    width: 100%;
    height: 615px;
}
h1{
color:darkblue;
   font-size: 14px;
    padding: 10px;
    /* left: 18px; */
    margin-left: -22px;
    }
h2{
ccolor: darkblue;
    font-size: 14px;
    padding: 23px;
    
    margin-left: -28px
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
<div class="full-form"> 
<img src="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/6069398_1.jpg?v=1642264497"> 
<div class="background"> 
<h5 class="headind-from">BOOK TICKET</h5> 
<form method="post" action="seetrain.jsp"> <div class="line-frist"> 
<h1>From:</h1> <br>
<span class="details">From</span> 
<select id="fname" required name="source"> 
<%  while(rs.next()){ %> <option>From </option>
<option><%= rs.getString(2)%> 
</option> <% } %> <% } 
catch(Exception e) 
{ out.println("wrong entry"+e); } %> 
</select> 
<input type="date" id="date" data-provide="datepicker"  min="2022-03-18" max="2022-06-18" name="date"> 
</div> <% 
try{ Connection conn = ConnectionProvider.getCon(); 
Statement st = conn.createStatement() ; 
ResultSet rs =st.executeQuery("select * from city") ;
%> <div class="line-frist">
<h2>To:</h2>
<span class="details">T0</span> 
<select id="fname" required name="destination">
 <%  while(rs.next()){ %> 
 <option><%= rs.getString(2)%>
  </option> <% } %> <% 
 } catch(Exception e) 
{ out.println("wrong entry"+e); 
} %> 
</select>
 
            <select id="sit" required name="choice">
               
               
                <option value="AC First Class (1A)">AC First Class (1A)</option>
               
                <option value="AC 2 Tier (2A)">AC 2 Tier (2A)</option>
               
                <option value="AC 3 Tier (3A)">AC 3 Tier (3A)</option>
                
                <option value="Sleeper (SL)">Sleeper (SL)</option>
    
            </select>
         </div><br>
            <select id="div-sit" required name="choice2">
               
                <option value="GENERAL" >General</option>
              
            </select>
             <button class="btn" type="submit">Search</button>
        </form>
      
    </div>
    </div>
    
   
</body>

</html>