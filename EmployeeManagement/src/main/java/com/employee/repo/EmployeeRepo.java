package com.employee.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.employee.model.EmployeeModel;

public interface EmployeeRepo extends JpaRepository<EmployeeModel, Integer> {
	@Query("select emp FROM EmployeeModel emp WHERE email =:n")
	public EmployeeModel getByEmail(@Param("n") String email);
}