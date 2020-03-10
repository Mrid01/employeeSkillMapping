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
  
  background-image: url("https://thumbs.dreamstime.com/b/update-concept-hand-pressing-social-icons-blue-world-map-background-43410664.jpg");
  filter: blur(px);
  -webkit-filter: blur(px);
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


.bg-text {
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.6); 
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
td{
background-color: white;
  color: black;
  
  }
 
</style>
</head>


  
<body>
<%int id=Integer.parseInt(request.getParameter("id"));%>

<div class="bg-image"></div>

<div class="bg-text">

 <h1 style= "color:orange">Edit User</h1>
        
  
    <div align="center">
       
        
            <form action="update" method="post" >
     
        <table border="1" cellpadding="2">
          
                <tr>
                <th style= "color:white">UserID: </th>
                <td>
           
                    <input type="text" name="userId" value="<%out.println(id);%>" />
                 
                </td>
            </tr>
                     
            <tr>
                <th style= "color:white">Name: </th>
                <td>
                    <input type="text" name="username" size="45"/>
                         
                </td>
            </tr>
            <tr>
                <th style= "color:white">mobileNo: </th>
                <td>
                    <input type="text" name="mobileNo" size="45"
                             />
                    
                </td>
            </tr>
            <tr>
                <th style= "color:white">Address: </th>
                <td>
                    <input type="text" name="address" size="45"
                          />
                    
                </td>
            </tr>
            <tr>
                <th style= "color:white">Skills: </th>
                <td>
                    <input type="text" name="skills" size="45"
                          />
                    
                </td>
            </tr>
            <tr>
                <th style= "color:white">Salary: </th>
                <td>
                    <input type="text" name="salary" size="45"
                          />
                    
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Update" />
                </td>
            </tr>
        </table>
        </form>
    </div>   


  
</div>





</body>
<%@ include file="footer.jsp" %>

</body>
</html>







