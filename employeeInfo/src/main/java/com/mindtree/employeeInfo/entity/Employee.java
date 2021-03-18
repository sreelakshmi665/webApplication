package com.mindtree.employeeInfo.entity;



import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;


@Entity
@Table(name="employee")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int eId;
	@Column(unique = true)
	private String empName;
	private String designation;
	private double salary;
	private String gender;
	@ElementCollection
	@CollectionTable(name = "employee_hobbies",joinColumns = @JoinColumn(name="e_id"))
	@Column(name="hobby")
	private List<String> hobbies;

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee(int eId, String empName, String designation, double salary) {
		super();
		this.eId = eId;
		this.empName = empName;
		this.designation = designation;
		this.salary = salary;
	}

	public Employee(String empName, String designation, double salary, String gender,List<String> hobbies) {
		super();
		this.empName = empName;
		this.designation = designation;
		this.salary = salary;
		this.gender = gender;
		this.hobbies=hobbies;
	}

	public int geteId() {
		return eId;
	}

	public void seteId(int eId) {
		this.eId = eId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<String> getHobbies() {
		return hobbies;
	}

	public void setHobbies(List<String> hobbies) {
		this.hobbies = hobbies;
	}
	

}
