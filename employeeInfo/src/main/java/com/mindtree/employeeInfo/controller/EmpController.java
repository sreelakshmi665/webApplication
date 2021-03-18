package com.mindtree.employeeInfo.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mindtree.employeeInfo.entity.Employee;
import com.mindtree.employeeInfo.repository.EmployeeRepository;
import com.mindtree.employeeInfo.services.EmployeeServices;



@Controller
@RequestMapping("/emp")
public class EmpController {
	
	@Autowired
	private EmployeeServices empSer;
	
	@Autowired
	private EmployeeRepository emprep;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/get")
	public String displayEmployes(Model model) {
		List<Employee> list=new ArrayList<Employee>();
		list=empSer.getAllEmployees();
		model.addAttribute("employees",list);
		return "displayEmployees";
	}
	

	
	
	@GetMapping("/add")
	public String addEmployee() {
		return "addEmployee";
		
	}
	
	@PostMapping("/addemp")
	public String postEmployee(@ModelAttribute("employee") Employee employee,BindingResult result,Model model) {
		Employee emp=emprep.save(employee);
//		model.addAttribute("eId",emp.geteId());
//		model.addAttribute("empName",emp.getEmpName());
//		model.addAttribute("designation",emp.getDesignation());
//		model.addAttribute("salary",emp.getSalary());
		return "displayMsg";
		
	}
	
	

}

