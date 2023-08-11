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

.container {
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

.container .logo {
    max-width: 172px;
    padding: 0 10px;
}

.container .logo a {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}

.container .logo a img {
 max-width: 56%;
}

.container .navbar {
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

.container .navbar ul {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  list-style: none;
  margin: 0;
  padding: 0;
}

.container .navbar ul li a {
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

.container .navbar ul li a:hover {
  color: red;
}

.container .navbar ul .close {
  display: none;
  text-align: right;
  padding: 10px;
}

.container .navbar ul .close span {
  font-size: 40px;
  display: inline-block;
  border: 1px solid #cccccc;
  padding: 0 10px;
  cursor: pointer;
}

.container .navbar .icon-bar {
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

.container .navbar .icon-bar i {
    background-color: black;
  height: 2px;
}

@media only screen and (max-width: 1310px) {

    
  .container {
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
  }

  .container .logo {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
  }

  .container .navbar {
    -webkit-box-flex: 0;
    -ms-flex: 0;
    flex: 0;
  }

  .container .navbar ul {
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap;
    position: fixed;
    left: 100%;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    background: #ffffff;
    width: 100VW;
    height: 100%;
    overflow: auto;
    -webkit-transition: left .3s;
    -o-transition: left .3s;
    transition: left .3s;
  }

  .container .navbar ul li a {
    padding: 10px;
    font-size: 16px;
    height: auto;
    line-height: normal;
    color: #555555;
  }

  .container .navbar ul .close {
    display: block;
  }

  .container .navbar .icon-bar {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
  }

  .container .navbar ._Menus-show {
    left: 0;
    top: 0;
    left: 0;
    z-index: 1;
  }
}

@media only screen and (max-width: 768PX) {
.foot-main {
    display: block !important;
    padding: 20px 0px;
    text-align: center !important;
    font-weight: bold;
}
.form-box {
    position: absolute !important;
    top: 40% !important;
    right: 0 !important;
    left: 0 !important;
}
h1#first{
   font-size: 25px;
    color: #ff0000;
    position: absolute;
    right: 0%;
    top: 25%;
    left: 0%;
    text-align: center;
}
h1#second {
    font-weight: 500;
    font-size: 20px;
    color: #ff0000;
    position: absolute;
    right: 0%;
    left: 0%;
    top: 20%;
    text-align: center;
}
.footer-content img {
    width: 100vw;
    padding: 15px 0px;
}
}

</style>
</head>
<body>

<div class="container">
    <div class="logo">
        <a href="#"><img src="https://www.irctc.co.in/nget/assets/images/secondry-logo.png"
            alt="logo"></a>
    </div>
<div class="navbar">

<div class="icon-bar" onclick="Show()">
    <i></i>
    <i></i>
    <i></i>
</div>

<ul id="nav-lists">
    <li class="close"><span onclick="Hide()">×</span></li>
    <li><a href="home.jsp">Home</a></li>
    <li><a href="SignUp.jsp">Register</a></li>
    <li><a href="#" onclick='check()'>PNR Status</a></li>
    <li><a href="#">Contact us</a></li>
    <li><a id="clock"></a></li>
    <li><a href="Admin_Login.jsp">Agent Login</a></li>
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