package com.employee.service;

import java.util.List;

import com.employee.model.EmployeeModel;
import com.employee.model.EmployeeProfessionalModel;

public interface EmployeeService {

	public EmployeeModel saveEmplyee(EmployeeModel employeeEntity);

	public EmployeeModel updateEmployee(EmployeeModel employeeEntity);

	public void deleteEmployee(Integer id);

	public EmployeeModel getEmployeeDetails(Integer id);

	public EmployeeProfessionalModel getProfessionalDetails(Integer id);

	public EmployeeModel getEmployeeByEmail(String email);

	public List<EmployeeModel> getAllEmployees();

	public EmployeeProfessionalModel saveEmplyee(EmployeeProfessionalModel employeeEntity);

}
