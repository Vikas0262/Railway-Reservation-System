<%@page import="project.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<%
	String passenger1=request.getParameter("P1");
	String passenger2=request.getParameter("P2");
	String passenger3=request.getParameter("P3");
	String passenger4=request.getParameter("P4");
	String passenger5=request.getParameter("P5");
	String passenger6=request.getParameter("P6");
	String mobileNo=request.getParameter("mobile");
	System.out.print(passenger1);
 %>
 <%if(!passenger1.equals("")){ %>
		<p>Rahul<p>  <p>19</p> <p>M</p> <p>LB</p>
		<%} %>
		
		<%if(!passenger2.equals("")){ %>
		<p>Rahul<p>  <p>19</p> <p>M</p> <p>LB</p>
		<%} %>
		
		<%if(!passenger3.equals("")){ %>
		<p>Rahul<p>  <p>19</p> <p>M</p> <p>LB</p>
		<%} %>
		
		<%if(!passenger4.equals("")){ %>
		<p>Rahul<p>  <p>19</p> <p>M</p> <p>LB</p>
		<%} %>
		
		<%if(!passenger5.equals("")){ %>
		<p>Rahul<p>  <p>19</p> <p>M</p> <p>LB</p>
		<%} %>
		
		<%if(!passenger6.equals("")){ %>
		<p>Rahul<p>  <p>19</p> <p>M</p> <p>LB</p>
		<%} %>
  <!DOCTYPE html>
                                <html lang="en">

                                <head>
                                    <meta charset="UTF-8">
                                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                    <title>Document</title>
 <style>
 
 ul{width:56%;
 display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 13px;
 
 }
 input#fname {
   height: 25px;
    width: 85%;
    border: 2px solid cornflowerblue;
}
li{
list-style:none;
font-size:20px;

}
 </style>
                                  
                                       
                                </head>
 
 <body>
 <div class="fbord">
       <div class="container-user">
       
                                        <div class="first-div">
                                        <p>Journey Details</p>
                                         </div>
                                       
                                           <div class="second-div">
                                            <ul>


                                                <li> Train No :<input type="text" id="fname" name="tc"
                                                        value="" disabled></li>
                                                <li> Train Name : <input type="text" id="fname" name="tn"
                                                        value="" disabled></li>
                                                <li> Journey date : <input type="text" id="fname" name="jd"
                                                        value="" disabled> </li>
                                                <li>From station :<input type="text" id="fname" name="fs"
                                                        value="" disabled></li>
                                                <li> To station : <input type="text" id="fname" name="ts"
                                                        value="" disabled></li>
                                                 <li> Boarding : <input type="text" id="fname" name="bs"
                                                        value="" disabled></li>
                                                 <li> Reservation : <input type="text" id="fname" name="rs"
                                                        value="" disabled></li>
                                                <li> Mobile : <input type="text" id="fname" disabled name="mobile" value=""></li>
                                            </ul>
                                            </div>
       
       <div class="pd">
          <p>Passenger Details</p>
           <table class="container-table" style="border-radius: 10px;">
             <tr>
                  <th>SR.No</th>
                  <th>Name</th>
                  <th>Age</th>
                  <th>Gender</th>
                  <th>Berth preference</th>
  
           </tr>
           <tr>
           <%if(!passenger1.equals("")){ %>
        	   <td>1</td>
               <td><input type="text" id="fname-table" required name="P1" disabled value="<%=request.getParameter("P1")%>"></td>
               <td><input type="text" id="fname-table" name="Age1" value="<%=request.getParameter("Age1")%>"></td>
                <td><input type="text" id="fname-table" name="Gender1" value="<%=request.getParameter("Gender1")%>"></td>
                 <td><input type="text" id="fname-table" name="Berth1" value="<%=request.getParameter("Berth1")%>"></td>
              
			
			<%} %>
			</tr>
			<tr>
			<%if(!passenger2.equals("")){ %>
        	   <td>2</td>
               <td><input type="text" id="fname-table" required name="P1" value="<%=request.getParameter("P2")%>"></td>
               <td><input type="text" id="fname-table" name="Age1" value="<%=request.getParameter("Age2")%>"></td>
                <td><input type="text" id="fname-table" name="Gender1" value="<%=request.getParameter("Gender2")%>"></td>
                 <td><input type="text" id="fname-table" name="Berth1" value="<%=request.getParameter("Berth2")%>"></td>
              
			
			<%} %>
			</tr>
			<%if(!passenger3.equals("")){ %>
        	   <td>3</td>
               <td><input type="text" id="fname-table" required name="P1" value="<%=request.getParameter("P3")%>"></td>
               <td><input type="text" id="fname-table" name="Age1" value="<%=request.getParameter("Age3")%>"></td>
                <td><input type="text" id="fname-table" name="Gender1" value="<%=request.getParameter("Gender3")%>"></td>
                 <td><input type="text" id="fname-table" name="Berth1" value="<%=request.getParameter("Berth3")%>"></td>
              
			
			<%} %>
			<%if(!passenger4.equals("")){ %>
        	   <td>4</td>
               <td><input type="text" id="fname-table" required name="P1" value="<%=request.getParameter("P4")%>"></td>
               <td><input type="text" id="fname-table" name="Age1" value="<%=request.getParameter("Age4")%>"></td>
                <td><input type="text" id="fname-table" name="Gender1" value="<%=request.getParameter("Gender4")%>"></td>
                 <td><input type="text" id="fname-table" name="Berth1" value="<%=request.getParameter("Berth4")%>"></td>
              
			
			<%} %>
			<%if(!passenger5.equals("")){ %>
        	   <td>5</td>
               <td><input type="text" id="fname-table" required name="P1" value="<%=request.getParameter("P5")%>"></td>
               <td><input type="text" id="fname-table" name="Age1" value="<%=request.getParameter("Age5")%>"></td>
                <td><input type="text" id="fname-table" name="Gender1" value="<%=request.getParameter("Gender5")%>"></td>
                 <td><input type="text" id="fname-table" name="Berth1" value="<%=request.getParameter("Berth5")%>"></td>
              
			
			<%} %>
			<%if(!passenger6.equals("")){ %>
        	   <td>6</td>
               <td><input type="text" id="fname-table" required name="P1" value="<%=request.getParameter("P6")%>"></td>
               <td><input type="text" id="fname-table" name="Age1" value="<%=request.getParameter("Age6")%>"></td>
                <td><input type="text" id="fname-table" name="Gender1" value="<%=request.getParameter("Gender6")%>"></td>
                 <td><input type="text" id="fname-table" name="Berth1" value="<%=request.getParameter("Berth6")%>"></td>
              
			
			<%} %>
			
           </table>
           </div>
       </div>
      </div>                                    
 </body>