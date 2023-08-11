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
.id-card{
left: 500px;
    position: relative;
    top: 90px;
    }
.S{
  font-family: 'Heebo', sans-serif;
background-color: #FAFAFA;
   height: 57%;
    }
.f{
  font-family: 'Heebo', sans-serif;
height: 43%;
}        
.id-card2 {
box-shadow: 0 8px 16px 0 rgb(0 0 0 / 20%);
    background-color: #F0F0F0;
    width: 27%;
    height: 187px;
}
</style>
</head>
<body>
 <!-- Redirection Counter -->
 <script type="text/javascript">
  var count = 5; // Timer
  var redirect = "/"; // Target URL
function countDown() {
    var timer = document.getElementById("timer"); // Timer ID
    if (count > 0) {
      count--;
      timer.innerHTML = "This page will redirect in " + count + " seconds."; // Timer Message
      setTimeout("countDown()", 1000);
    } else {
      window.location.href = "dashboard.jsp";
    }
  }
</script>

<div class="id-card">
<div class="id-card2">
  <div class="f">
  <p> Your Data is Updated !!!  </p>
  </div>
 
  <div class="S">
  <div id="timer">
  <script type="text/javascript">
          countDown();
        </script>
  </div>
  
  </div>
  
  </div>
</div>

</body>
</html>