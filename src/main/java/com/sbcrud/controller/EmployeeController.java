package com.sbcrud.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.sbcrud.model.Employee;
import com.sbcrud.servicei.EmployeeServiceI;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeServiceI ei;
	
	
	@RequestMapping("/")
	public String homePage() {
		return"login";
	}
	
	@RequestMapping("/register")
	public String regPage() {
		return"register";
	}
	
//	@RequestMapping("/loginsuccess")
//	public String loginSuccess(@ModelAttribute Employee loginUser,Model m) {
//		
//		
//		Iterable<Employee> allEmployees=ei.getAllEmployee();
//		m.addAttribute("empList",allEmployees);
//		allEmployees.forEach(emp->System.out.println(emp.getEname()));
//		return"loginsuccess";
//	}
	
	
//	@RequestMapping("/loginsuccess")
//	public String loginSuccess(@RequestParam("username") String username,
//	                           @RequestParam("password") String password,
//	                           Model m) {
//	    if ("admin".equals(username) && "123".equals(password)) {
//	        m.addAttribute("empList", ei.getAllEmployee());
//	        return "loginsuccess";
//	    } else {
//	        return "login";
//	    }
//	}
	
	@RequestMapping("/loginsuccess")
	public String loginSuccess(@RequestParam("username") String un,
	                           @RequestParam("password") String ps,
	                           Model m) {
		Employee singleEmployee=ei.loginEmployee(un, ps);
		if(singleEmployee==null && un.equals("admin") && ps.equals("123")) {
			Iterable<Employee> allEmployees=ei.getAllEmployee();
			m.addAttribute("empList",allEmployees);
	
			return"loginsuccess";
		}
		else if(singleEmployee!=null) {
			List<Employee> singleEmployeeList=new ArrayList<Employee>();
			singleEmployeeList.add(singleEmployee);
			m.addAttribute("empList",singleEmployeeList);
			return "loginsuccess" ;
		} 
		else {
			return "login";
		}
	       }
	
	
	
	@RequestMapping("/save")
	public String saveEmployee(@ModelAttribute Employee e) {
		System.out.println(e.getEid());
		ei.saveEmployee(e);
		return"login";
	}
	
	@RequestMapping("/delete")
	public String deleteEmployee(@RequestParam("eid") int eid,Model m) {
		
		ei.deleteEmployee(eid);
		Iterable<Employee> allEmployees=ei.getAllEmployee();
		m.addAttribute("empList",allEmployees);
		return"loginsuccess";
	}
	
	@RequestMapping("/edit")
	public String editEmployee(@RequestParam("eid") int eid,Model m) {
		Employee emp=ei.getEmpById(eid);
		m.addAttribute("employee",emp);
		return"edit";
	}
	
	@RequestMapping("/update")
	public String updateEmployee(@ModelAttribute Employee em,Model m) {
		ei.saveEmployee(em);
		Iterable<Employee> allEmployees=ei.getAllEmployee();
		m.addAttribute("empList",allEmployees);
		
		return "loginsuccess";
	}
	
}
