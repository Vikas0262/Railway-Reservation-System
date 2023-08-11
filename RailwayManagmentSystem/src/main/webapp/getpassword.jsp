<%@page import="java.sql.SQLOutput"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="project.ConnectionProvider"%>
<% 
String Email = request.getParameter("email");
String Question = request.getParameter("coach");
String Answer = request.getParameter("answer");
PreparedStatement ps = null;
String query="Select *from USER_INFO WHERE EMAIL=? and ANSWER=?";
ResultSet rs = null;

try{
	Connection conn = ConnectionProvider.getCon();
	ps = conn.prepareStatement(query);

	ps.setString(1, Email);
	ps.setString(2, Answer);
	
	rs = ps.executeQuery();
	if(rs.next())

	{ 
	String userdbEmail = rs.getString("Email");
	String userdbAnswer = rs.getString("Answer");
	
	
	if(Email.equals(userdbEmail) && Answer.equals(userdbAnswer))

	{      String userdbName = rs.getString("NAME");
	       String userdbPsw = rs.getString("Password");
			session.setAttribute("Name",userdbName);
			session.setAttribute("Password",userdbPsw);
			response.sendRedirect("forget2.jsp");
	} 
	}
	else{

		response.sendRedirect("index.jsp?msg=Invalid");
	}
	rs.close();

	ps.close(); 
	
	
	
	
	
	
}catch(Exception e){
	System.out.print(e)
;	
	
}





%>