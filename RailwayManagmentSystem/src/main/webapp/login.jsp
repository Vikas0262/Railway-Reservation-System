<%@page import="project.ConnectionProvider"%>
<%@include file = "navbar.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%


PreparedStatement ps = null;

ResultSet rs = null;
String userdbEmail;
String userdbPsw;

String sql="select * from User_Info where Email=? and Password=? ";

String Email=request.getParameter("Email");
String Password=request.getParameter("Password");


if((!(Email.equals(null) || Email.equals("")) && !(Password.equals(null) || 
Password.equals(""))))
{

try
{
Connection conn = ConnectionProvider.getCon();

ps = conn.prepareStatement(sql);

ps.setString(1, Email);

ps.setString(2, Password);


rs = ps.executeQuery();
if(rs.next())
	
{ 

userdbEmail = rs.getString("Email");

userdbPsw = rs.getString("Password");

String name = rs.getString("Name");


if(Email.equals(userdbEmail) && Password.equals(userdbPsw))

{  
	
		session.setAttribute("Name",name);
		String Sess="in";
		session.setAttribute("user",Sess);
		response.sendRedirect("home.jsp");
} 
}
else

	response.sendRedirect("index.jsp?msg=Invalid");

rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

System.out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Error In Login</p></center>

<% 

getServletContext().getRequestDispatcher("/home.jsp").include(request, 
response);

}

%>

</body>

</html>

