package com.mindtree.employeeInfo.services;




import java.util.List;

import com.mindtree.employeeInfo.entity.Employee;




public interface EmployeeServices {

	public List<Employee> getAllEmployees();
	
	public Employee addEmployee(Employee emp);
}
