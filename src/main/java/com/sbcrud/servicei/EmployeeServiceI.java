package com.sbcrud.servicei;

import com.sbcrud.model.Employee;

public interface EmployeeServiceI {
	
	public void saveEmployee(Employee e);
	
	public Iterable<Employee> getAllEmployee();
	
	public void deleteEmployee(int eid);
	
	public Employee getEmpById(int eid);
	
	public Employee loginEmployee(String username, String password);

}
