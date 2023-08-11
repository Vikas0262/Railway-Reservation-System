<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% String pnr=request.getParameter("pnr_no"); 
    System.out.println(pnr);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
th,td{
border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
    }
    
    .hello{
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #04AA6D;
    color: white;
    }
</style>
</head>
<body>
<table class="styled-table" border=0  style="border-collapse:collapse">
<tr class="hello">
<th>Name</th>
<th>Age</th>
<th>Gender</th>
<th>Berth</th>
<th>Action</th>
</tr>
<%
    try{
    	Connection conn = ConnectionProvider.getCon();
    	Statement st=null;
    	ResultSet rs=null;
    	 String sql="select * from pnr_status where PNR_NO=" +pnr;
    	  st = conn.createStatement() ; 
    	 rs=st.executeQuery(sql); 
    	 while(rs.next()){ 
    	 String p = rs.getString("PNR_NO");
    	 System.out.println("pnr"+p);%>
    	<%
    	if(pnr.equals(p) ){ %>
    		<tr>
    	<td><%=rs.getString(3) %></td>
    	<td><%=rs.getString(4) %></td>
    	<td><%=rs.getString(5) %></td>
    	<td><%=rs.getString(6) %></td>
    	</tr>
    	<%
}
    	%>
    	
    	<% } 
    	
    }
    catch(Exception e){
    	
    }
    
    
    %>
</table>
</body>
</html>