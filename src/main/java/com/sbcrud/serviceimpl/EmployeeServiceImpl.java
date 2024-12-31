package com.sbcrud.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbcrud.model.Employee;
import com.sbcrud.repository.EmployeeRepository;
import com.sbcrud.servicei.EmployeeServiceI;

@Service
public class EmployeeServiceImpl implements EmployeeServiceI{
	@Autowired
	EmployeeRepository er;

	@Override
	public void saveEmployee(Employee e) {
		er.save(e);
		
	}

	@Override
	public Iterable<Employee> getAllEmployee() {
		
		return er.findAll();
	}

	@Override
	public void deleteEmployee(int eid) {
		er.deleteById(eid);
		
	}

	@Override
	public Employee getEmpById(int eid) {
		Employee emp=er.findByEid(eid);
		return emp ;
		// return er.findByEid(eid);
	}

	@Override
	public Employee loginEmployee(String username, String password) {
		
		return er.findByUsernameAndPassword(username, password);
	}
	

}
