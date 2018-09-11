package com.springsecurity.poc.dao;

import java.util.List;

import com.springsecurity.poc.model.Employee;

public interface EmployeeDao {
	void insertEmployee(Employee cus);
	void insertEmployees(List<Employee> employees);
	List<Employee> getAllEmployees();
	Employee getEmployeeById(String empId);
	void updateEmployee(Employee updateEmp);
	void deleteEmployee(Employee updateEmp);
	
}