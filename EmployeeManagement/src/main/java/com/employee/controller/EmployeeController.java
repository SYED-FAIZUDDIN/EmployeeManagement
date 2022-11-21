package com.employee.controller;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Date;
import java.util.List;
import java.util.NoSuchElementException;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.exception.ConstraintViolationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.employee.model.EmployeeModel;
import com.employee.model.EmployeeProfessionalModel;
import com.employee.service.EmployeeService;

@Controller
public class EmployeeController {

	private static Logger logger = LoggerFactory.getLogger(EmployeeController.class);

	@Autowired
	private EmployeeService service;

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("adminPage")
	public String adminPage() {
		return "adminLogin";
	}

	@RequestMapping("employeePage")
	public String employeePage() {
		return "employeeLogin";
	}

	@RequestMapping(path = "loginAuthentication", method = RequestMethod.POST)
	public String register(@RequestParam String email, @RequestParam String password, Model model) {
		if (email.equals("admin@ysi") && password.equals("admin")) {
			return "adminPage";
		} else {
			model.addAttribute("err", "Enter Valid Details");
			return "adminLogin";
		}
	}

	@RequestMapping("register")
	public String register() {
		return "registration";
	}

	@RequestMapping(path = "userRegister", method = RequestMethod.POST, consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public String userRegister(@RequestPart("photo") MultipartFile photo, @RequestParam String firstname,
			@RequestParam String lastname, @RequestParam String email, @RequestParam String password,
			@RequestParam String phoneno, @RequestParam String designation, @RequestParam String gender,
			@RequestParam String address, @RequestParam Date dateofbirth, @RequestParam String employeetype,
			@RequestParam String alternatephno, @RequestParam Date dateofjoining, @RequestParam int totalexperience,
			Model model) {
		EmployeeModel employeeModel = new EmployeeModel();
		employeeModel.setFirstname(firstname);
		employeeModel.setLastname(lastname);
		employeeModel.setEmail(email);
		employeeModel.setPassword(password);
		employeeModel.setPhoneno(phoneno);
		employeeModel.setDesignation(designation);
		employeeModel.setGender(gender);
		employeeModel.setDateofbirth(dateofbirth);
		employeeModel.setEmployeetype(employeetype);
		employeeModel.setAlternatephno(alternatephno);
		employeeModel.setDateofjoining(dateofjoining);
		employeeModel.setTotalexperience(totalexperience);
		employeeModel.setAddress(address);
		if (photo.isEmpty()) {
			return "registration";
		}
		Path path = Paths.get("uploads/");
		try {
			InputStream inputStream = photo.getInputStream();
			Files.copy(inputStream, path.resolve(photo.getOriginalFilename()), StandardCopyOption.REPLACE_EXISTING);
			employeeModel.setPhoto(photo.getOriginalFilename().toLowerCase());
			System.out.println(employeeModel.getPhoto());
		} catch (Exception e) {
			e.printStackTrace();
		}
		service.saveEmplyee(employeeModel);
		model.addAttribute("emp", employeeModel);
		return "userDashboard";
	}

	@RequestMapping("getAll")
	public String getAll(Model m) {
		List<EmployeeModel> emp = service.getAllEmployees();
		System.out.println(emp);
		m.addAttribute("keys", emp);
		return "listofusers";
	}

	@RequestMapping("delete/{id}")
	public RedirectView deleteRecord(@PathVariable Integer id, HttpServletRequest request) {
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/getAll");
		service.deleteEmployee(id);
		return redirectView;
	}

	@RequestMapping("update/{id}")
	public String updateRecord(@PathVariable Integer id, Model m) {
		EmployeeModel e = service.getEmployeeDetails(id);
		EmployeeProfessionalModel emp = service.getProfessionalDetails(id);
		m.addAttribute("emp", e);
		m.addAttribute("emps", emp);
		return "update";
	}

	@RequestMapping("updateRecord")
	public String updated(@ModelAttribute EmployeeModel employeeModel,
			@ModelAttribute EmployeeProfessionalModel employeeProfessionalModel, Model model) {

		EmployeeModel emp = service.getEmployeeDetails(employeeModel.getEmployeeId());
		EmployeeProfessionalModel empModel = service.getProfessionalDetails(employeeModel.getEmployeeId());
		emp.setEmployeeid(employeeModel.getEmployeeId());
		emp.setEmail(employeeModel.getEmail());
		emp.setFirstname(employeeModel.getFirstname());
		emp.setLastname(employeeModel.getLastname());
		emp.setPhoneno(employeeModel.getPhoneno());
		emp.setGender(employeeModel.getGender());
		emp.setAddress(employeeModel.getAddress());
		emp.setPassword(employeeModel.getPassword());
		emp.setDateofbirth(employeeModel.getDateofbirth());
		emp.setDateofjoining(employeeModel.getDateofjoining());
		emp.setDesignation(employeeModel.getDesignation());
		emp.setAlternatephno(employeeModel.getAlternatephno());
		emp.setTotalexperience(employeeModel.getTotalexperience());
		emp.setEmployeetype(employeeModel.getEmployeetype());

		empModel.setpId(emp.getEmployeeId());
		empModel.setProject(employeeProfessionalModel.getProject());
		empModel.setManager(employeeProfessionalModel.getManager());
		empModel.setMentor(employeeProfessionalModel.getMentor());
		empModel.setRole(employeeProfessionalModel.getRole());
		empModel.setTask(employeeProfessionalModel.getTask());
		empModel.setTechnicalStack(employeeProfessionalModel.getTechnicalStack());
		service.saveEmplyee(emp);
		service.saveEmplyee(empModel);
		model.addAttribute("emp", emp);
		model.addAttribute("emps", empModel);
		return "employeeDetails";
	}

	@RequestMapping("employeeLogin")
	public String loginValidation(@RequestParam String email, @RequestParam String password, Model model) {
		EmployeeModel employeeEntity = service.getEmployeeByEmail(email);
		EmployeeProfessionalModel employeeProfessionalModel = service
				.getProfessionalDetails(employeeEntity.getEmployeeId());
		if (password.equals(employeeEntity.getPassword())) {
			model.addAttribute("emp", employeeEntity);
			model.addAttribute("emps", employeeProfessionalModel);
			return "employeeDetails";
		} else {
			model.addAttribute("err", "Enter Valid Details");
			return "employeeLogin";
		}
	}

	@RequestMapping("ExtraDetails/{email}")
	public String ExtraDetails(@PathVariable String email, Model model) {
		model.addAttribute("email", email);
		return "userProfile";
	}

	@RequestMapping("userDetails")
	public String updated(@ModelAttribute EmployeeProfessionalModel employeeEntity, HttpServletRequest request,
			Model model) {
		model.addAttribute("emp", employeeEntity);
		service.saveEmplyee(employeeEntity);
		return "userDetailsDashboard";
	}

	@ExceptionHandler(value = ConstraintViolationException.class)
	public String handlerCVE(ConstraintViolationException e, Model m) {
		m.addAttribute("err", "Email Already Exist");
		logger.error("ERROR : [EmployeeController][handlerE]" + e);
		logger.debug("DEBUG : [EmployeeController][handlerE]", e);
		logger.warn("WARN :[EmployeeController][handlerE]" + e);
		return "registration";
	}

	@ExceptionHandler(value = NumberFormatException.class)
	public String handlerNFE(NumberFormatException e, Model m) {
		m.addAttribute("err", "The Id Field must be a Number");
		logger.error("ERROR : [EmployeeController][handlerE]" + e);
		logger.debug("DEBUG : [EmployeeController][handlerE]", e);
		logger.warn("WARN :[EmployeeController][handlerE]" + e);
		return "exception";
	}

	@ExceptionHandler(value = NoSuchElementException.class)
	public String handlerNSR(Model m, Exception e) {
		m.addAttribute("err", "No Such Record Found");
		logger.error("ERROR : [EmployeeController][handlerE]" + e);
		logger.debug("DEBUG : [EmployeeController][handlerE]", e);
		logger.warn("WARN :[EmployeeController][handlerE]" + e);
		return "exception";
	}

	@ExceptionHandler(value = NullPointerException.class)
	public String handlerNPE(Model m, Exception e) {
		m.addAttribute("err", "Record Found Empty");
		logger.error("ERROR : [EmployeeController][handlerE]" + e);
		logger.debug("DEBUG : [EmployeeController][handlerE]", e);
		logger.warn("WARN :[EmployeeController][handlerE]" + e);
		return "exception";
	}

//	@ExceptionHandler(value = Exception.class)
//	public String handlerE(Model m, Exception e) {
//		m.addAttribute("err", "Exception");
//		logger.error("ERROR : [EmployeeController][handlerE]" + e);
//		logger.debug("DEBUG : [EmployeeController][handlerE]", e);
//		logger.warn("WARN :[EmployeeController][handlerE]" + e);
//		return "exception";
//	}
}
