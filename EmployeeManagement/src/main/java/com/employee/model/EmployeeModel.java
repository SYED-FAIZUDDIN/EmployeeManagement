package com.employee.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ysiemp")
public class EmployeeModel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int employeeId;
	private String firstname;
	private String lastname;
	@Column(unique = true, length = 95)
	private String email;
	private String password;
	private String gender;
	private String phoneno;
	@Column(nullable = true)
	private Date dateofbirth;
	private String alternatephno;
	private String address;
	@Column(nullable = true)
	private Date dateofjoining;
	private String designation;
	private String employeetype;
	private int totalexperience;
	private String photo;

	@ManyToMany(targetEntity = EmployeeProfessionalModel.class, cascade = CascadeType.ALL)
	@JoinTable(name = "employeeProfessionalDetails", joinColumns = {
			@JoinColumn(name = "employee_Id") }, inverseJoinColumns = { @JoinColumn(name = "p_Id") })
	private List<EmployeeProfessionalModel> employeeProfessionalDetails;

	public EmployeeModel() {
		super();
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeid(int employeeid) {
		this.employeeId = employeeid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getAlternatephno() {
		return alternatephno;
	}

	public void setAlternatephno(String alternatephno) {
		this.alternatephno = alternatephno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDateofjoining() {
		return dateofjoining;
	}

	public void setDateofjoining(Date dateofjoining) {
		this.dateofjoining = dateofjoining;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getEmployeetype() {
		return employeetype;
	}

	public void setEmployeetype(String employeetype) {
		this.employeetype = employeetype;
	}

	public int getTotalexperience() {
		return totalexperience;
	}

	public void setTotalexperience(int totalexperience) {
		this.totalexperience = totalexperience;
	}

	public List<EmployeeProfessionalModel> getEmployeeProfessionalDetails() {
		return employeeProfessionalDetails;
	}

	public void setEmployeeProfessionalDetails(List<EmployeeProfessionalModel> employeeProfessionalDetails) {
		this.employeeProfessionalDetails = employeeProfessionalDetails;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "EmployeeModel [employeeId=" + employeeId + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", gender=" + gender + ", dateofbirth=" + dateofbirth + ", email=" + email + ", password=" + password
				+ ", phoneno=" + phoneno + ", alternatephno=" + alternatephno + ", address=" + address
				+ ", dateofjoining=" + dateofjoining + ", designation=" + designation + ", employeetype=" + employeetype
				+ ", totalexperience=" + totalexperience + ", employeeProfessionalDetails="
				+ employeeProfessionalDetails + "]";
	}
}