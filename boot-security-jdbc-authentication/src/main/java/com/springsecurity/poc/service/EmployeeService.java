package com.springsecurity.poc.service;

import java.util.List;

import com.springsecurity.poc.model.Employee;

public interface EmployeeService {
	void insertEmployee(Employee emp);
	void insertEmployees(List<Employee> employees);
	List<Employee> getAllEmployees();
	Employee getEmployeeById(String empid);
	void updateEmployee(Employee emp);
	void deleteEmployee(Employee emp);

}