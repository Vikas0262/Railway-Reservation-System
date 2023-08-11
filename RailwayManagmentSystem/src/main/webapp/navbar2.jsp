<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Responsive Navigation Bar - W3jar.Com</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@600&family=Baloo+Bhaina+2:wght@700&family=Merriweather&family=Open+Sans:wght@600&family=PT+Sans&family=Roboto:wght@400;700&family=Titillium+Web:wght@600;700&family=Ubuntu:wght@500&display=swap');
*,
*::before,
*::after {
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
 
}

body {
  
  margin: 0;
  padding: 0;
}

.container-nav {
    padding: 0 70px;
  height: 90px;
  background-color:rgb(248, 249, 250);
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  overflow: hidden;
}

.container-nav .logo {
    max-width: 172px;
    padding: 0 10px;
}

.container-nav .logo a {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}

.container-nav .logo a img {
 max-width: 56%;
}

.container-nav .navbar-nav {
justify-content: flex-end;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -webkit-box-flex: 1;
  -ms-flex: 1;
  flex: 1;
  padding: 0 10px;
}

.container-nav .navbar-nav ul {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  list-style: none;
  margin: 0;
  padding: 0;
}

.container-nav .navbar-nav ul li a {
  font-family: 'Roboto', sans-serif;
  text-decoration: none;
  color: black;
  font-size: 14px;
  text-transform: uppercase;
  display: block;
  height: 60px;
  line-height: 60px;
  font-weight: 700;
  cursor: pointer;
  padding: 0  18px;
}

.container-nav .navbar-nav ul li a:hover {
  color: red;
}

.container-nav .navbar-nav ul .close {
  display: none;
  text-align: right;
  padding: 10px;
}

.container-nav .navbar-nav ul .close span {
  font-size: 40px;
  display: inline-block;
  border: 1px solid #cccccc;
  padding: 0 10px;
  cursor: pointer;
}

.container-nav .navbar-nav .icon-bar {
  padding: 18px 8px;
  width: 50px;
  height: 60px;
  display: none;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  cursor: pointer;
}

.container-nav .navbar-nav .icon-bar i {
    background-color: black;
  height: 2px;
}

@media(max-width: 1310px) {

.dropdown .dropdown-content {
   display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 188px;
    box-shadow: 0px 8px 16px 0px rgb(0 0 0 / 20%);
    z-index: 1;
}
  .container-nav {
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
  }

  .container-nav .logo {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
  }

  .container-nav .navbar-nav {
    -webkit-box-flex: 0;
    -ms-flex: 0;
    flex: 0;
  }

  .container-nav .navbar-nav ul {
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap;
    position: fixed;
    left: 100%;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    background: #ffffff;
    width: 100%;
    height: 100%;
    overflow: auto;
    -webkit-transition: left .3s;
    -o-transition: left .3s;
    transition: left .3s;
  }

  .container-nav .navbar-nav ul li a {
    padding: 10px;
    font-size: 16px;
    height: auto;
    line-height: normal;
    color: #555555;
  }

  .container-nav .navbar-nav ul .close {
    display: block;
  }

  .container-nav .navbar-nav .icon-bar {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
  }

  .container-nav .navbar-nav ._Menus-show {
    left: 0;
  }
}
.dropbtn {
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

/* The container-nav <div> - needed to position the dropdown content */


.dropdown-content {
      top: 90px;
    /* left: 799px; */
    right: 2px;
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 188px;
    box-shadow: 0px 8px 16px 0px rgb(0 0 0 / 20%);
    z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}


.dropdown:hover .dropdown-content {
  display: block;
}
.dropdown-content a:hover {
background-color: #f1f1f1;
color:red;
}

.img2{
    position: relative;
    height: 36px;
    width: 36px;
    top: -12px;
    left: 10px;
}



</style>
</head>
<body>

<div class="container-nav">
    <div class="logo">
        <a href="#"><img src="https://www.irctc.co.in/nget/assets/images/secondry-logo.png"
            alt="logo"></a>
    </div>
<div class="navbar-nav">

<div class="icon-bar" onclick="Show()">
    <i></i>
    <i></i>
    <i></i>
</div>

<ul id="nav-lists">
    <%String name=(String)session.getAttribute("Name");%>
            <li class="close"><span onclick="Hide()">×</span></li>
            <li><a  style="color:red;font-size:13px;">Welcome <%=session.getAttribute("Name")%></a></li>
            <% session.setAttribute("usid",name);%>
            <li><a href="home.jsp" ><i class="fas fa-home"></i>Home</a></li>
            <li><a href="pnrstatus.jsp">PNR Status</a></li>
            <li><a href="show_ticket.jsp">Booking</a></li>
            <li><a href="history.jsp">History</a></li>
            <li><a id="clock"></a></li>
           <div class="dropdown">
   <li class="dropbtn"></li>
   <img class="img2" alt="Error" src="kindpng_4952535.png">
  <div class="dropdown-content">
    <a href="logout.jsp">Logout</a>
    <a href="reset.jsp">Reset Password</a>
  </div>
</div>
            
</ul>

</div>
</div>
<div class="body">
   
</div>

<script>
    function display_ct5() {

let show1 = document.getElementById("clock");
var x = new Date()
var ampm = x.getHours() >= 12 ? ' PM' : ' AM';

var clock1 = x.getDate() + "-" + x.getMonth() + 1 + "-"
    + x.getFullYear();
var clock2 = clock1 + " - " + "[" + x.getHours() + ":"
    + x.getMinutes() + ":" + x.getSeconds() + ":" + ampm + "]";
show1.innerHTML = clock2;
show();
}
function show() {
var refresh = 1000; // Refresh rate in milli seconds
mytime = setTimeout('display_ct5()', refresh)
}
show();
var navList = document.getElementById("nav-lists");
function Show() {
navList.classList.add("_Menus-show");
}
function check() {
    alert("login first");
}

function Hide(){
navList.classList.remove("_Menus-show");
}
</script>

</body>
</html>