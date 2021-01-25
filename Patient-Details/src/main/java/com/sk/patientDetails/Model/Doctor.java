package com.sk.patientDetails.Model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Doctor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int dno;
	private String docName;
	private String Specialization;
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date Avail_From;
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date Avail_To;
	

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(
	        name = "Doctor_Patient", 
	        joinColumns = { @JoinColumn(name = "dno") }, 
	        inverseJoinColumns = { @JoinColumn(name = "pid") }
	    )
	private List<Patient> patientList = new ArrayList<Patient>();


	public int getDno() {
		return dno;
	}


	public void setDno(int dno) {
		this.dno = dno;
	}


	public String getDocName() {
		return docName;
	}


	public void setDocName(String docName) {
		this.docName = docName;
	}


	public String getSpecialization() {
		return Specialization;
	}


	public void setSpecialization(String specialization) {
		Specialization = specialization;
	}


	public Date getAvail_From() {
		return Avail_From;
	}


	public void setAvail_From(Date avail_From) {
		Avail_From = avail_From;
	}


	public Date getAvail_To() {
		return Avail_To;
	}


	public void setAvail_To(Date avail_To) {
		Avail_To = avail_To;
	}


	public List<Patient> getPatientList() {
		return patientList;
	}


	public void setPatientList(List<Patient> patientList) {
		this.patientList = patientList;
	}
	
	
	
	
	
	
	
}
