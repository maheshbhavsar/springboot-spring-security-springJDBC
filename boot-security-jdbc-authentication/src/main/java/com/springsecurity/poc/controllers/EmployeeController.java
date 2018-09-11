package com.springsecurity.poc.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springsecurity.poc.model.Employee;
import com.springsecurity.poc.model.UserRegistration;
import com.springsecurity.poc.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@Autowired
	JdbcUserDetailsManager jdbcUserDetailsManager;
	
	@RequestMapping("/")
	public ModelAndView log() {
		return new ModelAndView("redirect:/welcome");
	}

	@RequestMapping("/welcome")
	public ModelAndView firstPage() {
		return new ModelAndView("welcome");
	}
	
	@RequestMapping("/accessdenied")
	public ModelAndView accessdenied() {
		return new ModelAndView("access-denied");
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		return new ModelAndView("registration", "user", new UserRegistration());
	}
		
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView processRegister(@ModelAttribute("user") UserRegistration userRegistrationObject, Model model, String errors) {
		
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority(userRegistrationObject.getRole()));
		User user = new User(userRegistrationObject.getUsername(), userRegistrationObject.getPassword(), authorities);
		jdbcUserDetailsManager.createUser(user);
		return new ModelAndView("redirect:/welcome");
	}

	@RequestMapping(value = "/addNewEmployee", method = RequestMethod.GET)
	public ModelAndView show() {
		return new ModelAndView("addEmployee", "emp", new Employee());
	}

	@RequestMapping(value = "/addNewEmployee", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("emp") Employee emp) {

		employeeService.insertEmployee(emp);
		List<Employee> employees = employeeService.getAllEmployees();
		ModelAndView model = new ModelAndView("getEmployees");
		
		return new ModelAndView("redirect:/getEmployees");
	}

	
	@RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
	public ModelAndView updateRequest(@ModelAttribute("employee") Employee emp) {

		employeeService.updateEmployee(emp);
		List<Employee> employees = employeeService.getAllEmployees();
		ModelAndView model = new ModelAndView("getEmployees");
		
		return new ModelAndView("redirect:/getEmployees");
	}
	
	@RequestMapping("/getEmployees")
	public ModelAndView getEmployees() {
		List<Employee> employees = employeeService.getAllEmployees();
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("employees", employees);
		return model;
	}
	
	@RequestMapping("/editEmployee/{id}")
	public ModelAndView editEmployees(@PathVariable("id") String id) {
		Employee employees = employeeService.getEmployeeById(id);
		ModelAndView model = new ModelAndView("editEmployee");
		model.addObject("employee", employees);
		return model;
	}
	
	@RequestMapping("/deleteEmployee/{id}")
	public ModelAndView deleteEmployees(@PathVariable("id") String id) {
		Employee employees = employeeService.getEmployeeById(id);
		employeeService.deleteEmployee(employees);
	
		return new ModelAndView("redirect:/getEmployees");
	}
	

	@RequestMapping("/login")
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("errorMsg", "Your username and password are invalid.");

		if (logout != null)
			model.addAttribute("msg", "You have been logged out successfully.");

		return "login";
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout() {
		return new ModelAndView("login");
	}

	
}
