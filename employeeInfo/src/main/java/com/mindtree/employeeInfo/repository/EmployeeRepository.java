package com.mindtree.employeeInfo.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.mindtree.employeeInfo.entity.Employee;




public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

}