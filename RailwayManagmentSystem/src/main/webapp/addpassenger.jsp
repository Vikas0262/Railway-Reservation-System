<%@include file="navbar2.jsp" %>
    <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.Connection" %>
            <%@page import="java.sql.ResultSet" %>
                <%@page import="java.sql.Statement" %>
                    <%@page import="project.ConnectionProvider" %>

                        <% String id=request.getParameter("id"); session.setAttribute("id",id); System.out.println(id);
                            String driver="com.mysql.cj.jdbc.Driver" ; String
                            connectionUrl="jdbc:mysql://localhost:3306/" ; String database="railway" ; String
                            userid="root" ; String password="root" ; try { Class.forName(driver); } catch
                            (ClassNotFoundException e) { e.printStackTrace(); } Connection conn=null; Statement
                            statement=null; ResultSet rs=null; int i=0; %>

                            <% try{ conn=DriverManager.getConnection(connectionUrl+database, userid, password);
                                statement=conn.createStatement(); String sql="select * from train_info where id=" +id;
                                rs=statement.executeQuery(sql); while(rs.next()){ %>

                                <!DOCTYPE html>
                                <html lang="en">

                                <head>
                                    <meta charset="UTF-8">
                                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                    <title>Document</title>

                                    <style>
                                        .container-user h2 {
                                            text-align: center;
                                            margin: 41px 0px;
                                        }

                                        table.container-table th {
                                            padding: 10px;
                                            background-color: #00adff45;
                                        }

                                        table.container-table {
                                            border-collapse: collapse;
                                            width: 100%;
                                        }

                                        table.container-table th {
                                            border: 2px solid #bbbab0;
                                            border-collapse: collapse;
                                        }

                                        table.container-table td {
                                            border: 2px solid #bbbab0;
                                            padding: 10px 5px;
                                            font-family: sans-serif;
                                            font-size: 15px;
                                            font-weight: 500;
                                            text-transform: capitalize;
                                            text-align: center;

                                        }

                                        table.container-table th {
                                            border: 2px solid #bbbab0;
                                            border-collapse: collapse;
                                            font-family: sans-serif;
                                            font-size: 15px;
                                            font-weight: 500;
                                            text-transform: capitalize;
                                        }

                                        section.tain-detais ul {
                                            list-style: none;
                                            padding: 0px;
                                        }

                                        section.tain-detais ul {
                                            margin-top: 20px;
                                            list-style: none;
                                            padding: 0px;
                                            display: grid;
                                            grid-template-columns: 1fr 1fr 1fr;
                                            gap: 20px;
                                        }

                                        section.tain-detais li {
                                            margin-left: 24px;
                                            flex-wrap: wrap;
                                            align-items: center;
                                            justify-content: space-between;
                                            color: #000;
                                            font-size: 18px;
                                            text-transform: capitalize;
                                            font-weight: 500;
                                        }


                                        select#cars {
                                            height: 36px;
                                            width: 88.5%;
                                            border: 2px solid #2196f39e;
                                            padding: 3px 20px;
                                            font-size: 12px;
                                            border-radius: 5px;
                                        }

                                        input#fname {
                                            height: 36px;
                                            width: 88%;
                                            border: 2px solid #2196f39e;
                                            padding: 3px 20px;
                                            font-size: 12px;
                                            border-radius: 5px;
                                        }

                                        input#fname-table {
                                            height: 36px;
                                            width: 70%;
                                            border: 2px solid #2196f39e;
                                            padding: 3px 20px;
                                            font-size: 12px;
                                            border-radius: 5px;
                                        }

                                        input#fname-table-age {
                                            height: 36px;
                                            width: 38%;
                                            border: 2px solid #2196f39e;
                                            padding: 3px 20px;
                                            font-size: 12px;
                                            border-radius: 5px;
                                        }

                                        select#Gender {
                                            height: 36px;
                                            width: 53.5%;
                                            border: 2px solid #2196f39e;
                                            padding: 3px 20px;
                                            font-size: 12px;
                                            border-radius: 5px;
                                        }

                                        section.tain-detais .tain-heading {
                                            background-color: #0095ff9e;
                                            padding: 5px 20px;
                                            color: #fff;
                                            border-radius: 2px;

                                        }

                                        .container-user h2 {
                                            background-color: #0095ff9e;
                                            padding: 5px 20px;
                                            color: #fff;
                                            border-radius: 2px;
                                            margin: 30px 0px;
                                        }

                                        td:nth-child(1) {
                                            width: 100px;

                                        }

                                        /* the second */
                                        td:nth-child(2) {
                                            width: 300px;

                                        }

                                        /* the third */
                                        td:nth-child(3) {
                                            width: 200px;

                                        }

                                        td:nth-child(4) {
                                            width: 250px;

                                        }

                                        td:nth-child(5) {
                                            width: 250px;

                                        }

                                        .button {
                                            height: 44px;
                                            width: 100%;
                                            /* display: list-item; */
                                            background-color: #0095ff9e;
                                            padding: 5px 20px;
                                            color: #fff;
                                            border-radius: 2px;
                                            margin: 30px 0px;
                                            border: 2px solid;
                                            font-family: unset;
                                            font-size: 30px;
                                            cursor: pointer;
                                        }

                                        #h2 {
                                            position: absolute;
                                            color: red;
                                            font-size: 10px;
                                            top: 124px;
                                            left: 22px;
                                            font-family: monospace;
                                        }
                                    </style>
                                </head>

                                <body>
                                    <form method="post" action="confirm_details.jsp">
                                        <section class="tain-detais">
                                            <h3 class="tain-heading">Journey Details</h3>

                                           
                                            <ul>
                                                <% String a=rs.getString("Arrival"); String b=rs.getString("Departure");
                                                    session.setAttribute("Arrival",a);
                                                    session.setAttribute("Departure",b); %>
                                                    <% System.out.println("");%>
                                                        <li> Train No :<input type="text" id="fname" required
                                                                name="Train_Code" value="<%=rs.getString("Train_Code")
                                                                %>" ></li>
                                                        <li> Train Name : <input type="text" id="fname"
                                                                name="Train_Name" value="<%=rs.getString("Train_Name")
                                                                %>" ></li>
                                                        <li> Journey date : <input type="text" id="fname" name="date"
                                                                value="<%=session.getAttribute("date") %>" disabled>
                                                        </li>
                                                        <li>From station :<input type="text" id="fname" name="SOURCE"
                                                                value="<%=rs.getString("SOURCE") %>" ></li>
                                                        <li> To station : <input type="text" id="fname"
                                                                name="DESTINATION" value="<%=rs.getString("DESTINATION") %>" ></li>
                                                        <li> Class :<select id="cars" name="choice">
                                                                <option value="SL">SL</option>
                                                                <option value="IAC">IAC</option>
                                                                <option value="IIAC">IIAC</option>
                                                                <option value="IIIAC">IIIAC</option>
                                                            </select>
                                                        </li>
                                                        <% } } catch (Exception e) { e.printStackTrace(); } %>
                                                            <% try{ Connection conn2=ConnectionProvider.getCon();
                                                                Statement st=conn2.createStatement() ; ResultSet
                                                                rs2=st.executeQuery("select * from TRAIN_VIA") ;%>
                                                                <li>Boarding Startion :<select id="cars" required
                                                                        name="bstation">
                                                                        <% while(rs2.next()){ %>
                                                                            <option>
                                                                                <%= rs2.getString(3)%>
                                                                            </option>
                                                                            <option>
                                                                                <%= rs2.getString(4)%>
                                                                            <option>
                                                                                <%= rs2.getString(5)%>
                                                                            <option>
                                                                                <%= rs2.getString(6)%>
                                                                            <option>
                                                                                <%= rs2.getString(7)%>
                                                                            <option>
                                                                                <%= rs2.getString(8)%>
                                                                            <option>
                                                                                <%= rs2.getString(9)%>
                                                                            <option>
                                                                                <%= rs2.getString(10)%>
                                                                            <option>
                                                                                <%= rs2.getString(11)%>
                                                                            <option>
                                                                                <%= rs2.getString(12)%>
                                                                            </option>
                                                                            <% } %>
                                                                                <% } catch(Exception e) {
                                                                                    out.println("wrong entry"+e); } %>
                                                                    </select></li>
                                                                <% try{ Connection conn2=ConnectionProvider.getCon();
                                                                    Statement st=conn2.createStatement() ; ResultSet
                                                                    rs2=st.executeQuery("select * from TRAIN_VIA") ;%>
                                                                    <li>Reservation Upto :<select id="cars"
                                                                            name="rstation">
                                                                            <% while(rs2.next()){ %>
                                                                                <option>
                                                                                    <%= rs2.getString(3)%>
                                                                                </option>
                                                                                <option>
                                                                                    <%= rs2.getString(4)%>
                                                                                <option>
                                                                                    <%= rs2.getString(5)%>
                                                                                <option>
                                                                                    <%= rs2.getString(6)%>
                                                                                <option>
                                                                                    <%= rs2.getString(7)%>
                                                                                <option>
                                                                                    <%= rs2.getString(8)%>
                                                                                <option>
                                                                                    <%= rs2.getString(9)%>
                                                                                <option>
                                                                                    <%= rs2.getString(10)%>
                                                                                <option>
                                                                                    <%= rs2.getString(11)%>
                                                                                <option>
                                                                                    <%= rs2.getString(12)%>
                                                                                </option>
                                                                                <% } %>
                                                                                    <% } catch(Exception e) {
                                                                                        out.println("wrong entry"+e); }
                                                                                        %>
                                                                        </select></li>
                                                                    <li> Mobile : <input type="text" id="fname"
                                                                            name="mobile" value=""></li>
                                            </ul>
                                        </section>
                                        <div class="container-user">
                                            <H2>Passenger Details</H2>
                                            <table class="container-table" style="border-radius: 10px;">
                                                <tr>
                                                    <th>SR.No</th>
                                                    <th>Name</th>
                                                    <th>Age</th>
                                                    <th>Gender</th>
                                                    <th>Berth preference</th>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td><input type="text" id="fname-table" required name="P1"></td>
                                                    <td><input type="text" id="fname-table-age" name="Age1"></td>
                                                    </td>
                                                    <td><select id="Gender" name="Gender1">
                                                            <option value="Male">Male </option>
                                                            <option value="Female">Female</option>
                                                            <option value="Other">Other</option>
                                                    </td>
                                                    <td><select id="Gender" name="Berth1">
                                                            <option value="Lower">Lower </option>
                                                            <option value="Middle">Middle</option>
                                                            <option value="Upper">Upper</option>
                                                            <option value="Side Upper">Side Upper</option>
                                                            <option value="Side Lower">Side Lower</option>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td><input type="text" id="fname-table" name="P2"></td>
                                                    <td><input type="text" id="fname-table-age" name="Age2"></td>
                                                    </td>
                                                    <td><select id="Gender" name="Gender2">
                                                            <option value="Male">Male </option>
                                                            <option value="Female">Female</option>
                                                            <option value="Other">Other</option>
                                                    </td>
                                                    <td><select id="Gender" name="Berth2">
                                                            <option value="Lower">Lower </option>
                                                            <option value="Middle">Middle</option>
                                                            <option value="Upper">Upper</option>
                                                            <option value="Side Upper">Side Upper</option>
                                                            <option value="Side Lower">Side Lower</option>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td><input type="text" id="fname-table" name="P3"></td>
                                                    <td><input type="text" id="fname-table-age" name="Age3"></td>
                                                    </td>
                                                    <td><select id="Gender" name="Gender3">
                                                            <option value="Male">Male </option>
                                                            <option value="Female">Female</option>
                                                            <option value="Other">Other</option>
                                                    </td>
                                                    <td><select id="Gender" name="Berth3">
                                                            <option value="Lower">Lower </option>
                                                            <option value="Middle">Middle</option>
                                                            <option value="Upper">Upper</option>
                                                            <option value="Side Upper">Side Upper</option>
                                                            <option value="Side Lower">Side Lower</option>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td><input type="text" id="fname-table" name="P4"></td>
                                                    <td><input type="text" id="fname-table-age" name="Age4"></td>
                                                    </td>
                                                    <td><select id="Gender" name="Gender4">
                                                            <option value="Male">Male </option>
                                                            <option value="Female">Female</option>
                                                            <option value="Other">Other</option>
                                                    </td>
                                                    <td><select id="Gender" name="Berth4">
                                                            <option value="Lower">Lower </option>
                                                            <option value="Middle">Middle</option>
                                                            <option value="Upper">Upper</option>
                                                            <option value="Side Upper">Side Upper</option>
                                                            <option value="Side Lower">Side Lower</option>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td><input type="text" id="fname-table" name="P5"></td>
                                                    <td><input type="text" id="fname-table-age" name="Age5"></td>
                                                    </td>
                                                    <td><select id="Gender" name="Gender5">
                                                            <option value="Male">Male </option>
                                                            <option value="Female">Female</option>
                                                            <option value="Other">Other</option>
                                                    </td>
                                                    <td><select id="Gender" name="Berth5">
                                                            <option value="Lower">Lower </option>
                                                            <option value="Middle">Middle</option>
                                                            <option value="Upper">Upper</option>
                                                            <option value="Side Upper">Side Upper</option>
                                                            <option value="Side Lower">Side Lower</option>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td><input type="text" id="fname-table" name="P6"></td>
                                                    <td><input type="text" id="fname-table-age" name="Age6"></td>
                                                    </td>
                                                    <td><select id="Gender" name="Gender6">
                                                            <option value="Male">Male </option>
                                                            <option value="Female">Female</option>
                                                            <option value="Other">Other</option>
                                                    </td>
                                                    <td><select id="Gender" name="Berth6">
                                                            <option value="Lower">Lower </option>
                                                            <option value="Middle">Middle</option>
                                                            <option value="Upper">Upper</option>
                                                            <option value="Side Upper">Side Upper</option>
                                                            <option value="Side Lower">Side Lower</option>
                                                    </td>
                                                </tr>


                                            </table>


                                            <button class="button" type="submit">Book</button>
                                    </form>

                                    </div>
                                </body>

                                </html>