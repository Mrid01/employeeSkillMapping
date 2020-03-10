package com.niit.Model;

public class Employee extends Users{

	public Employee() {
		
	}
	/*public Employee(int userId, String username, String mobileNo, String address) {
		super(userId, username, mobileNo, address);
	
	}*/
	public Employee(int userId, String skills, String salary) {
		super();
		this.userId = userId;
		this.skills = skills;
		this.salary = salary;
		
	}
	public Employee(int employeeId) {

            this.employeeId=employeeId;
	}
	private int employeeId;
	private String salary;
	private String skills;

	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
}
