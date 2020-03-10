package com.niit.Dao;

import java.util.List;

import com.niit.Model.Employee;
import com.niit.Model.Users;

public interface UserDao {

	void save(Users user);
	void printUserDetails();
	public List<Users> getDetails();	
	public List<Employee> getEmployeeDetails();
	public void saveToEmployee(Employee employee);
	public List<String> getDetailsOfEmployee(String skill);
	public List<String> getSkillsOnID(int id);
	public void Delete(int userId);
	void updateEmployee(Employee employee);
	void updateUser(Users user);
}
