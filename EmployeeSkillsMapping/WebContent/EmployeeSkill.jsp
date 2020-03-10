<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header.jsp" %>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


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
  
  background-image: url("https://c1.sfdcstatic.com/content/dam/blogs/ca/Infographics/find-employees-on-linkedIn-header.jpg");
  filter: blur(1px);
  -webkit-filter: blur(1px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


.bg-text {
  Text-color:white;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.8); 
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -10%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}

.a{
color:Orange;

}

td{
background-color:white;
color:black;}
th{
color:white;}
</style>
</head>
<body>


<div class="bg-image"></div>

<div class="bg-text">


<form action="search" method="post" >
 <span style ="color:Yellow" >Search By Skill:</span> <input type="text" name="skills" size="45">
 <input type ="submit" value="Search">
  
  <!-- <div>
  <table> 
  <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.username}" /></td>
                    </tr>
            </c:forEach>
        </table>
    </div> -->
   
    </form>   
    <div align="center">
        <table border="2" cellpadding="7" color="white">
            <caption><h2 class="a">List of Employees</h2></caption>
            <tr>
                <th>Employee Name</th>
            	<th>EmployeeId </th>
                <th>skills</th>
                <th>salary</th> 
               </tr>
             <c:forEach var="employee" items="${searchEmployee}">
                <tr>
                	<td><c:out value="${employee}" /></td>
                 </tr>
            </c:forEach>
        </table>
    </div>   
</div>




</body>



<%@ include file="footer.jsp" %>
</html>