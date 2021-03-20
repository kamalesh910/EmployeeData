package com.employee.model;

public class Employee {
	private int empId;
	private String empName;
	private String empAddress;
	private  String empEmailId;
	private Long empNumber;
	
	public Employee(int empId, String empName, String empAddress, String empEmailId, Long empNumber) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empAddress = empAddress;
		this.empEmailId = empEmailId;
		this.empNumber = empNumber;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpAddress() {
		return empAddress;
	}
	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}
	public String getEmpEmailId() {
		return empEmailId;
	}
	public void setEmpEmailId(String empEmailId) {
		this.empEmailId = empEmailId;
	}
	public Long getEmpNumber() {
		return empNumber;
	}
	public void setEmpNumber(Long empNumber) {
		this.empNumber = empNumber;
	} 
}
