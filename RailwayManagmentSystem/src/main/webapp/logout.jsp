 <!DOCTYPE html>
<html>
 
<head>
    <title>Login</title>
    <script type="text/javascript">
        function disableBack() {
        	window.history.forward(); 
        	}
        setTimeout("disableBack()", 0);
        window.onunload = function () { 
        	null 
        	};
    </script>
<style>
.main-div {
    box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);
    /* height: 251px; */
    background: blue;
    width: 25%;
    margin-left: 454px;
    margin-top: 107px;
}
.main-div2{
height: 206px;
    /* box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%); */
    background: white;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    justify-content: 500px;
}
.main-div3{
font-family: monospace;
width: 100%;
    background: darkblue;
    text-align: center;
    color: white;
    }
.main-div4{
position: absolute;
    /* padding-top: 13px; */
    /* height: 0px; */
    background: darkblue;
    /* padding: 40px; */
    /* color: white; */
    margin-top: 33px;
    margin-left:-77px;
    padding: 2px;
    width: -8%;
    width: 42px;
}    
.main-div5{
padding: 2px;
    position: absolute;
   
    /* padding: 40px; */
    background: darkblue;
    /* margin-right: 41px; */
    /* right: 41px; */
    margin-top: 33px;
    margin-left: 12px;
    padding: 2px;
    width: 42px;
    }
.both{
height: 155px;
    /* position: absolute; */
    /* margin-top: 45px; */
    /* background: red; */
    display: flex;
    flex-direction: row;
    /* padding: 20px; */
    /* color: white; */
  
    /* height: 104px; */
    /* text-decoration: none; */
    text-align: center;
    }
a,#bt{
font-family: monospace;
text-decoration: none;
    /* text-align: center; */
    color: white;
}    
</style>
</head>
 
<body>
<div class="main-div">
<div class="main-div2">
 <div class="main-div3"> 
   <p>Are You sure want to logout</p>
 </div>
 
 <div class="both">
 <div class="main-div4"> 
 <span> <a href="index.jsp">Yes</a>
 <%session.invalidate();  %>
 </span>
 </div>
 <div class="main-div5"> 
 <span id="bt" onclick="history.back()">No</span>
 </div>
 
 </div>
</div>



</div>
</body>
 
</html>

