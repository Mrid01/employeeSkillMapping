package com.niit.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.Dao.UserDao;
import com.niit.DaoImpl.UserDaoImpl;

/**
 * Servlet implementation class DeleteController
 */
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public UserDao userDao=new UserDaoImpl();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside delete controller");
		
	
			int id=Integer.parseInt(request.getParameter("id"));
			userDao.Delete(id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("list");
			dispatcher.forward(request,response);
		}
		
	}



