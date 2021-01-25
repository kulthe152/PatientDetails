package com.sk.patientDetails.DAO;

import java.util.List;

import com.sk.patientDetails.Model.Doctor;
import com.sk.patientDetails.Model.Patient;

public interface PatientDAO {

	boolean add(Patient patient);
	boolean update(Patient patient);
	boolean delete(Patient patient);
	List<Patient> listOfPatient();
	
	boolean addDoctor(Doctor doctor);
	List<Doctor> listOfDoctor();
}


