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
  
  background-image: url("http://makeup4stars.info/wp-content/uploads/2017/10/consulting-firms-Australia-1170x550.jpg");
  filter: blur(1px);
  -webkit-filter: blur(1px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


.bg-text {
  color:white;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.8); 
  font-weight: bold;
  border: 6px solid #f1f1f1;
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -10%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
h2{
text-shadow: 2px 2px 4px #000000
}
h1{
color:orange;
text-shadow: 2px 2px 2px #000000
}
.para{
font-size:20px;
color:black>
}
</style>
</head>




<body>

<div class="bg-image"></div>

<div class="bg-text">




  <h2 style="color:white">Employee Skills Mapping</h2>
  <h1 style="font-size:40px">Professionet Consultancy Services(PCS)</h1>
  <p class ="para" >A leading buisness consultancy service provider Since November 25,1992</p>
</div>

</body>

<%@ include file="footer.jsp" %>
</html>
