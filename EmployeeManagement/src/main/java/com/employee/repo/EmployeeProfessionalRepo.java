package com.employee.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.employee.model.EmployeeProfessionalModel;

public interface EmployeeProfessionalRepo extends JpaRepository<EmployeeProfessionalModel, Integer> {

}
