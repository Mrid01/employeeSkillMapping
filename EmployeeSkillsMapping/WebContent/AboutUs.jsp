<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ include file="header.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  
  background-image: url("https://blog.bonus.ly/hubfs/employee-experience-featured-image.png");
  filter: blur(px);
  -webkit-filter: blur(7px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


.bg-text {
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.4); 
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -10%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
</style>
</head>




<body>

<div class="bg-image"></div>

<div class="bg-text">




  <h1>ABOUT US</h1>
  <h2 style="font-size:50px">Employee Skill Mapping</h2>
  <p>Project</p>
</div>

</body>

<%@ include file="footer.jsp" %>
</html>
