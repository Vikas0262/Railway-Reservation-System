<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.container{
    height: 100%;
    width: 0;
    position: fixed;
    top: 0;
    left:0;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0, 0.9);
    transition: 0.5s;
    z-index: 1;
}
.container .open{
    background: none;
    border: 0;
    outline: none;
    font-size: 40px;
    cursor: pointer;
}

.content{
    position: relative;
    top: 25%;
    width: 100%;
    overflow-x: hidden;
    text-align: center;
    margin-top: 30px;
}
.close{
    background: none;
    border: 0;
    outline: none;
    font-size: 40px;
    position: absolute;
    top: 20px;
    right: 45px;
    cursor: pointer;
    color: white;
}

.content a{
    text-decoration: none;
    color: #818181;
    display: block;
    font-size: 35px;
}

.content a:hover,.content a:focus{
    color: #f1f1f1;
}


</style>
</head>
<body>
      <div id="mynav" class="container">

        <button class="open"><i class="fas fa-bars"></i></button>

        <div class="content">
            <a href="#">Home</a>
            <a href="#">Services</a>
            <a href="#">About</a>
            <a href="#">Contact</a>
        </div>

        <button class="close"><i class="fas fa-times"></i></button>
    </div>
 <script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
<script>
let openbtn = document.querySelector(".open");
let closebtn = document.querySelector(".close");

openbtn.addEventListener("click" , ()=>{
    document.getElementById("mynav").style.width = "100%";
})
closebtn.addEventListener("click" , ()=>{
    document.getElementById("mynav").style.width = "0%";
})
</script>
</body>
</html>