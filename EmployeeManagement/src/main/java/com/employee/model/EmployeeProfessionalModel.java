package com.employee.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ysiemppd")
public class EmployeeProfessionalModel {
	@Id
	@Column(name = "P_ID")
	private Integer pId;
	@Column(name = "PROJECT")
	private String project;
	@Column(name = "ROLE")
	private String role;
	@Column(name = "TECHNICAL_STACK")
	private String technicalStack;
	@Column(name = "TASK")
	private String task;
	@Column(name = "MANAGER")
	private String manager;
	@Column(name = "MENTOR")
	private String mentor;

	public EmployeeProfessionalModel() {
	}

	public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getTechnicalStack() {
		return technicalStack;
	}

	public void setTechnicalStack(String technicalStack) {
		this.technicalStack = technicalStack;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getMentor() {
		return mentor;
	}

	public void setMentor(String mentor) {
		this.mentor = mentor;
	}

	@Override
	public String toString() {
		return "EmployeeProfessionalModel [pId=" + pId + ", project=" + project + ", role=" + role + ", technicalStack="
				+ technicalStack + ", task=" + task + ", manager=" + manager + ", mentor=" + mentor + "]";
	}

}
