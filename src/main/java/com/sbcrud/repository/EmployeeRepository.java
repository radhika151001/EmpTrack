package com.sbcrud.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sbcrud.model.Employee;

@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Integer> {
	
	public Employee findByEid(int eid);
	
	public Employee findByUsernameAndPassword(String username, String password);
	
	

}
