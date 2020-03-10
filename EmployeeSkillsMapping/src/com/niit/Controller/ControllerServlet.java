package com.niit.Controller;

import java.io.IOException;
//import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.Dao.UserDao;
import com.niit.DaoImpl.UserDaoImpl;
import com.niit.Model.Employee;
import com.niit.Model.Users;


@SuppressWarnings("serial")
public class ControllerServlet extends HttpServlet {
	
public UserDao userDao=new UserDaoImpl();

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
 doPost(request, response);
}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String action = request.getServletPath();
        switch (action) {
       
        case "/insert":
            insertUser(request,response);
            System.out.println("inside INSERT case");
            break;
       
        case "/list":
        	 System.out.println("inside LIST case");
         	 listUser(request,response);
             break;
             
        case "/search":
       	 System.out.println("inside SEARCH case");
        	 searchEmployee(request,response);
            break;
          
        case "/update":
          	 System.out.println("inside UPDATE case");
          	updateEmployee(request,response);
       
        default:
        	break;
        	 
        }
	}

	private void insertUser (HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException
	{
		int userId=Integer.parseInt(request.getParameter("userId"));
		String username=request.getParameter("username");
		String mobileNo=request.getParameter("mobileNo");
		String address=request.getParameter("address");
		 Users user=new Users(userId,username,mobileNo,address);
		 System.out.println("Adding to User Table: "+userId+" "+username+" "+mobileNo+" "+address);
		 userDao.save(user);
		 String skills=request.getParameter("skills");
		 String salary=request.getParameter("salary");
		 System.out.println("Adding to Employee Table: "+userId+" "+skills+" "+salary);
		 Employee employee = new Employee(userId,skills,salary);
		 userDao.saveToEmployee(employee);	
		 RequestDispatcher dispatcher = request.getRequestDispatcher("list");
	     dispatcher.forward(request,response);
	}
	
	
	private void listUser(HttpServletRequest request, HttpServletResponse response)
            throws  IOException, ServletException {
        List<Users> listUser = userDao.getDetails();
        request.setAttribute("listUser", listUser);
        List<Employee> listEmployee = userDao.getEmployeeDetails();
        request.setAttribute("listEmployee", listEmployee);
        RequestDispatcher dispatcher = request.getRequestDispatcher("UserList.jsp");
        dispatcher.forward(request,response);
    }

	/*private void listEmployee(HttpServletRequest request, HttpServletResponse response)
            throws  IOException, ServletException {
        List<Employee> listEmployee = userDao.getEmployeeDetails();
        request.setAttribute("listEmployee", listEmployee);
        RequestDispatcher dispatcher = request.getRequestDispatcher("UserList.jsp");
        dispatcher.forward(request,response);
    }
	*/
	private void searchEmployee(HttpServletRequest request, HttpServletResponse response)
            throws  IOException, ServletException {
		
		  String skill=request.getParameter("skills");
		  List<String> searchEmployee= userDao.getDetailsOfEmployee(skill);
		  System.out.println("The Search Results are :"+searchEmployee);
		  request.setAttribute("searchEmployee",searchEmployee);
		  RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeSkill.jsp");
	        dispatcher.forward(request,response);
		  
	}
	
	
	private void updateEmployee(HttpServletRequest request, HttpServletResponse response)
	            throws IOException, ServletException {
		int userId=Integer.parseInt(request.getParameter("userId"));
		String username=request.getParameter("username");
		String mobileNo=request.getParameter("mobileNo");
		String address=request.getParameter("address");
		 Users user=new Users(userId,username,mobileNo,address);
		 System.out.println("Updating to User Table: "+userId+" "+username+" "+mobileNo+" "+address);
		 userDao.updateUser(user);
		 String skills=request.getParameter("skills");
		 String salary=request.getParameter("salary");
		 System.out.println("Updating to Employee Table: "+userId+" "+skills+" "+salary);
		 Employee employee = new Employee(userId,skills,salary);
		 userDao.updateEmployee(employee);	
		 RequestDispatcher dispatcher = request.getRequestDispatcher("list");
	     dispatcher.forward(request,response);
	 
	       /* Employee emp = new Employee(userId, username, mobileNo, address);
	        UserDao.updateEmployee();
	        response.sendRedirect("list");
	        */
	 }

}
