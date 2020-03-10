package com.niit.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.niit.Dao.UserDao;
import com.niit.DataBaseConnection.DataBaseConnection;
import com.niit.Model.Employee;
import com.niit.Model.Users;

public class UserDaoImpl implements UserDao{

	@Override
	public void save(Users user) {
		
		Connection con=DataBaseConnection.getConnection();
		String sql="insert into Users values (?,?,?,?)";
		try {
			PreparedStatement pt=con.prepareStatement(sql);
			pt.setInt(1, user.getUserId());
			pt.setString(2, user.getUsername());
			pt.setString(3, user.getMobileNo());
			pt.setString(4, user.getAddress());
			pt.execute();
			System.out.println("record inserted sucess");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
	}
	
	@Override
	public void printUserDetails() {
		
		Connection con=DataBaseConnection.getConnection();
		try {
			Statement st=con.createStatement();
			ResultSet rt=st.executeQuery("select * from Users");
			while(rt.next())
			{
				System.out.println(rt.getInt(1));
				System.out.println(rt.getString(2));
				System.out.println(rt.getString(3));
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Users> getDetails() {
	
		List<Users> list =new ArrayList<Users>();
		Connection con=DataBaseConnection.getConnection();
		try {
			Statement st=con.createStatement();
			ResultSet rt=st.executeQuery("select * from Users");
			while(rt.next())
			{
				 int userId=rt.getInt(1);
		         String username=rt.getString(2);
				 String mobileNo=rt.getString(3);
				 String address=rt.getString(4);
				 Users user=new Users(userId,username,mobileNo,address);
				 list.add(user);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
	}

		public void saveToEmployee(Employee employee) { //adding Employee Details
		String sql = "insert into Employee values  (?,?,?)";
        Connection con=DataBaseConnection.getConnection();
		try {
			PreparedStatement pt=con.prepareStatement(sql);
			pt.setInt(1, employee.getUserId());
			pt.setString(2, employee.getSkills());
			pt.setString(3, employee.getSalary());
			boolean b=pt.execute();
			System.out.println(b);
			System.out.println("record updated  sucess");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}		
	}

	@Override
	public List<String> getDetailsOfEmployee(String skill) {
		System.out.println("INSIDE getDetailsOfEmployee");
		List<String> list =new ArrayList<String>();
		Connection con=DataBaseConnection.getConnection();
		try {
			Statement st=con.createStatement();
			ResultSet rt=st.executeQuery("select employeeId from Employee where skills ='"+skill+"'");
			//ResultSet rt=st.executeQuery("select employeeId from Employee where skills ='Java'");
			while(rt.next())
			{
				 //int id=rt.getInt(1);
				 int id=rt.getInt("employeeId");
				 //Employee employee=new Employee(id);
		         //list=getSkillsOnID(employee.getEmployeeId());
				 //list=getSkillsOnID(id);
				 List<String> a=getSkillsOnID(id);
				 list.addAll(a);
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<String> getSkillsOnID(int id) {
		System.out.println("INSIDE getSkillsOnID");
		Connection con=DataBaseConnection.getConnection();
		List<String>list=new ArrayList<>();
		try {
			Statement st=con.createStatement();
			ResultSet rt=st.executeQuery("select * from Users where userId='"+ id+"'");
			while(rt.next())
			{
				
				//String name=rt.getString(1);
				String name=rt.getString("username");
				list.add(name);
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
	}

	public List<Employee> getEmployeeDetails(){
		List<Employee> emplist =new ArrayList<Employee>();
		Connection con=DataBaseConnection.getConnection();
		try {
		Statement st=con.createStatement();
		ResultSet rt=st.executeQuery("select * from Employee");
			while(rt.next())
		{
			 int userId=rt.getInt(1);
	         String skills=rt.getString(2);
			 String salary=rt.getString(3);
			 Employee employee=new Employee(userId,skills,salary);
			 emplist.add(employee);
		}
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return emplist;
}


	@Override
	public void Delete(int userId) {
		Connection con=DataBaseConnection.getConnection();
		String sql= "delete from Users where userId = ?";
		try {
			PreparedStatement pt=con.prepareStatement(sql);
			pt.setInt(1, userId);
			System.out.println(userId + " successfully deleted!");
			pt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void updateEmployee(Employee employee) {
		String sql = "UPDATE Employee SET skills=(?),salary=(?) WHERE employeeId=(?)";
        Connection con=DataBaseConnection.getConnection();
		try {
			PreparedStatement pt=con.prepareStatement(sql);
			
			pt.setString(1, employee.getSkills());
			pt.setString(2, employee.getSalary());
			pt.setInt(3, employee.getUserId());
			int b=pt.executeUpdate();
			System.out.println(b+" records affected in Update Employee");
			System.out.println("Employee Records UPDATED : SUCCESS");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}		
	}

	@Override
	public void updateUser(Users user) {
		Connection con=DataBaseConnection.getConnection();
		String sql="UPDATE Users SET username=(?),mobileNo=(?),address=(?) WHERE userId=(?)";
		try {
			PreparedStatement pt=con.prepareStatement(sql);
			
			pt.setString(1, user.getUsername());
			pt.setString(2, user.getMobileNo());
			pt.setString(3, user.getAddress());
			pt.setInt(4, user.getUserId());
			int b=pt.executeUpdate();
			System.out.println(b+" records affected in Update User");
			System.out.println("User Records UPDATED : SUCCESS");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		
	}
	

	

}
