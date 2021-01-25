package com.sk.patientDetails.Model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	private String pname;
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date pDOB;
	private String pBloodGroup;
	private String pAddress;
	private String pMobile;
	private String pEmail;
	private String path;
	@Transient
	private MultipartFile file;
	

	@ManyToMany(mappedBy="patientList")
	private List<Doctor> doctortList = new ArrayList<Doctor>();
	
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date Appointment_Date;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Date getpDOB() {
		return pDOB;
	}

	public void setpDOB(Date pDOB) {
		this.pDOB = pDOB;
	}

	public String getpBloodGroup() {
		return pBloodGroup;
	}

	public void setpBloodGroup(String pBloodGroup) {
		this.pBloodGroup = pBloodGroup;
	}

	public String getpAddress() {
		return pAddress;
	}

	public void setpAddress(String pAddress) {
		this.pAddress = pAddress;
	}

	public String getpMobile() {
		return pMobile;
	}

	public void setpMobile(String pMobile) {
		this.pMobile = pMobile;
	}

	public String getpEmail() {
		return pEmail;
	}

	public void setpEmail(String pEmail) {
		this.pEmail = pEmail;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public List<Doctor> getDoctortList() {
		return doctortList;
	}

	public void setDoctortList(List<Doctor> doctortList) {
		this.doctortList = doctortList;
	}

	public Date getAppointment_Date() {
		return Appointment_Date;
	}

	public void setAppointment_Date(Date appointment_Date) {
		Appointment_Date = appointment_Date;
	}
	
	
	
}
