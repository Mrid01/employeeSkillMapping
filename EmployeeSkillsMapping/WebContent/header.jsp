<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="text/html; charset=ISO-8859-1" "width=device-width, initial-scale=1">

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
/*  position:fixed;
  z-index:4;
  width:100%; */
}

.navbar a {
  float: left;
  font-size: 20px;
  color: white;
  text-shadow: 2px 2px 4px #000000;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: Right;
  overflow: hidden;
  
}

.dropdown .dropbtn {
  font-size: 20px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: black;
  font-family: inherit;
  margin:auto;
  
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #333;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="navbar">
  <a href="index.jsp">Employee Skill Mapping&#128204;</a>
  <a href="EmployeeSkill.jsp">Search Employee&#128270;</a>
   <a href="#AboutUs.jsp">About Us&#128101;</a>
    <a href="#ContactUs.jsp">Contact Us&#128231;</a>
  <div class="dropdown">
    <button class="dropbtn">Manage&#128317;</a>
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="AddUser.jsp">AddUser</a>
      <a href="UserManage.jsp">UserList</a>
     
      
    </div>
   
  </div> 
</div>
</body>
</html>

