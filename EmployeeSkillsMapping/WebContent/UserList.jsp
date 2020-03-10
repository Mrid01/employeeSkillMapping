<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

.bg-image {
  
  background-image: url("https://ak1.picdn.net/shutterstock/videos/16870141/thumb/1.jpg");
  filter: blur(px);
  -webkit-filter: blur(1px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


.bg-text {
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.8); 
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 20%;
  left: 50%;
  transform: translate(-50%, -10%);
  z-index: 2;
  width: 70%;
  padding: 12px;
  text-align: center;
}
td{
background-color: white;
  color: black;
  
  }
 
</style><title>View Users</title>
</head>
<body>




<div class="bg-image"></div>

<div class="bg-text">


<center>
        <h1 style="color:white">Users Management</h1>
       
    </center>
    <div align="center">
     
	
		 
        <table border="1" cellpadding="2">
            <caption><h2 style="color:Orange">List of Users</h2></caption>
            <tr style="color:white">
                <th>UserID</th>
                <th>UserName</th>
                <th>MobileNo</th>
                <th>Address</th>
                <th>Skills</th>
                
            </tr>
            <c:forEach var="user" items="${listUser}">
            
            	
                <tr style="color:white">
                    <td><c:out value="${user.userId}" /></td>
                    <td><c:out value="${user.username}" /></td>
                    <td><c:out value="${user.mobileNo}" /></td>
                    <td><c:out value="${user.address}" /></td>
                    <td><c:out value="${employee.skills}" /></td>
                    <td>
                        <!--  <a href="EditUser.jsp?id=<c:out value='${user.userId}' />">update</a>--> 
                        <a href="EditUser.jsp?id=<c:out value='${user.userId}' />">update</a>
                        <!--<a href="UpdateController?id=<c:out value='${user.userId}' />">update</a>  -->
                        &nbsp;&nbsp;&nbsp;&nbsp;    
                        <a href="DeleteController?id=<c:out value='${user.userId}' />">Delete</a> 
                                             
                    </td>
                </tr>
              
            </c:forEach>
        </table>
       <table border="1" cellpadding="2">
       <caption><h2 style="color:Orange">Employee Skills</h2></caption>
		<tr style="color:white">
			<th>Employee ID</th>
			<th>Skills</th>
            <th>Salary</th>
            </tr>
        <c:forEach var="employee" items="${listEmployee}">
        	<tr style="color:white">
        		<td><c:out value="${employee.userId}" /></td>
        		<td><c:out value="${employee.skills}" /></td>
                <td><c:out value="${employee.salary}" /></td>
		       </tr>
		       </c:forEach>
       
       </table>
    </div>   

 
</div>





    
</body>



<%@ include file="footer.jsp" %>
</html>