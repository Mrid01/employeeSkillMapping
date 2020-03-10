<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<html>

<head>




<%@ include file="header.jsp" %>
<meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=1 ,text/html; charset=ISO-8859-1">

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
  
  background-image: url("https://ak5.picdn.net/shutterstock/videos/8599435/thumb/3.jpg");
  filter: blur(px);
  -webkit-filter: blur(px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


.bg-text {
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.7); 
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
</style>


</head>
<body>




<div class="bg-image"></div>

<div class="bg-text">

  <h1 STYLE="COLOR:orange">User Management</h1>
        
  
    <div align="center">
       
        
            <form action="insert" method="post" >
     
        <table border="1" cellpadding="2">
          
                <tr>
                <th STYLE="COLOR:white">Title: </th>
                <td>
           
                    <input type="text" name="userId" size="45" placeholder="Enter ID" />
                 
                </td>
            </tr>
                     
            <tr>
                <th STYLE="COLOR:white">Name: </th>
                <td>
                    <input type="text" name="username" size="45" placeholder="Enter Employee's  Full Name"/>
                         
                </td>
            </tr>
            <tr>
                <th STYLE="COLOR:white">mobileNo: </th>
                <td>
                    <input type="text" name="mobileNo" size="45"
                             placeholder="Enter Contact No"/>
                    
                </td>
            </tr>
            <tr>
                <th STYLE="COLOR:white">Address: </th>
                <td>
                    <input type="text" name="address" size="45"
                          placeholder="Enter Address"/>
                    
                </td>
            </tr>
            <tr>
                <th STYLE="COLOR:white">Skills: </th>
                <td>
                    <input type="text" name="skills" size="45"
                          placeholder="Enter Employee's Skill"/>
                    
                </td>
            </tr>
            <tr>
                <th STYLE="COLOR:white">Salary: </th>
                <td>
                    <input type="text" name="salary" size="45"
                          placeholder="Enter Salary"/>
                    
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
    </div>   
</div>




 
</body>
<%@ include file="footer.jsp" %>
</html>