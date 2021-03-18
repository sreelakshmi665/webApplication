package com.mindtree.employeeInfo.services.serviceImpl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.employeeInfo.entity.Employee;
import com.mindtree.employeeInfo.repository.EmployeeRepository;
import com.mindtree.employeeInfo.services.EmployeeServices;



@Service
public class EmployeeServiceImpl implements EmployeeServices{
	
	@Autowired
	private EmployeeRepository emprep;

	@Override
	public List<Employee> getAllEmployees() {
		List<Employee> list=emprep.findAll();
		return list;
	}

	@Override
	public Employee addEmployee(Employee emp) {
		emp=emprep.save(emp);
		return emp;
	}

}
