<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="//db.onlinewebfonts.com/c/d65b8ca5058660308e53ce689421c895?family=Plaza+Std" rel="stylesheet" type="text/css"/>
<style>
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@300&display=swap');
.S{
  font-family: 'Heebo', sans-serif;
   background-color: #9cb2cd;
    height: 11%;
    }
.f{
  background-color: #9cb2cd;
    font-family: 'Heebo', sans-serif;
    height: 11%;
}        
.id-card2 {
left: 750px;
    position: absolute;
    box-shadow: 0 8px 16px 0 rgb(0 0 0 / 20%);
    background-color: rgb(222,237,255);
    width: 22%;
    height: 440px;
    top: 117px;
}
.dot {
  padding: 4px;
    height: 15px;
    width: 14px;
    background-color: white;
    border-radius: 50%;
    display: inline-block;
    /* font-size: 16px; */
    /* padding-left: 10px; */
    /* padding-right: 10px; */
   margin: 11px 19px;
}

.details{
font-size: 20px;
    display: flex;
    background-color: rgb(222,237,255);
    height: 343px;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
}
.line{
background-color: white;
height:2px;
}
img {
   max-width: 65px;
}
h2{
font-size: 13px;
    font-weight: 500;
font-family: 'Source Sans Pro', sans-serif;
    
}
h1{
font-size: 14px;
    font-weight: bold;
font-family: 'Source Sans Pro', sans-serif;
    
}
.details1{
background-color: #c0d8f3;
    width: 81%;
    /* margin-left: 28px; */
    padding: 11px;
    }
p{
text-align: center;
    font-family: cursive;
    font-size: 15px;
    margin-top: -1px;
    }  
.cl {
    color: grey;
    font-family: monospace;
}      
</style>
<script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
</head>
<body>

<div class="id-card">
<div class="id-card2">
 <div class="f">
&nbsp;&nbsp;<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
  </div>
<div class="line"></div>
 <div class="details">
 <img alt="not_available" src="irctc.svg">
 <h5>Chennai EXPRESS</h5>
 <h6>(01062)</h2>
 <div class="details1">
 <i class="fas fa-arrow-circle-Right" ></i>
 <p class="cl">24-10-2022</p>
 <p><b>Mumbai</b></p>
 <p class="cl">Departure: 1:12 PM</p>
 <p class="cl">24-10-2022</p>
 <p><b>Chennai</b></p>
 <p class="cl">Arrival: 2:20 AM</p>
 </div>
 <h5>></h5>
 </div>
 <div class="line"></div> 
  <div class="S">
  &nbsp;&nbsp;<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
<span class="dot"></span>&nbsp;&nbsp;
  </div>
  
  </div>
 
</div>
<script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
</body>
</html>