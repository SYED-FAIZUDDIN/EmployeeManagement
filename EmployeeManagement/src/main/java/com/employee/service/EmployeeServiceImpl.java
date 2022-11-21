package com.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.model.EmployeeModel;
import com.employee.model.EmployeeProfessionalModel;
import com.employee.repo.EmployeeProfessionalRepo;
import com.employee.repo.EmployeeRepo;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepo repo;
	
	@Autowired
	private EmployeeProfessionalRepo emprepo;
	
	@Override
	public EmployeeModel saveEmplyee(EmployeeModel employeeEntity) {
		return repo.save(employeeEntity);
	}

	@Override
	public EmployeeModel updateEmployee(EmployeeModel employeeEntity) {
		return repo.save(employeeEntity);
	}

	@Override
	public void deleteEmployee(Integer id) {
	repo.deleteById(id);
	}

	@Override
	public EmployeeProfessionalModel saveEmplyee(EmployeeProfessionalModel employeeEntity) {
		return emprepo.save(employeeEntity);
	}

	@Override
	public EmployeeModel getEmployeeByEmail(String email) {
		return repo.getByEmail(email);
	}

	@Override
	public EmployeeModel getEmployeeDetails(Integer id) {
		return repo.getById(id);
	}

	@Override
	public EmployeeProfessionalModel getProfessionalDetails(Integer id) {
		return emprepo.getById(id);
	}

	@Override
	public List<EmployeeModel> getAllEmployees() {
		return repo.findAll();
	}

}
