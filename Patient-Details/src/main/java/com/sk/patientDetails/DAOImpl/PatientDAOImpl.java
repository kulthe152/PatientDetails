package com.sk.patientDetails.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sk.patientDetails.DAO.PatientDAO;
import com.sk.patientDetails.Model.Doctor;
import com.sk.patientDetails.Model.Patient;



@Repository("patientDAO")
@Transactional
public class PatientDAOImpl implements PatientDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public boolean add(Patient patient) {
		
		try {
			sessionFactory.getCurrentSession().save(patient);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public List<Patient> listOfPatient() {
		return sessionFactory
				.getCurrentSession()
					.createQuery("FROM Patient",Patient.class)
						.getResultList();				
	}

	@Override
	public boolean addDoctor(Doctor doctor) {
		try {
			sessionFactory.getCurrentSession().save(doctor);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Doctor> listOfDoctor() {
		return sessionFactory
				.getCurrentSession()
					.createQuery("FROM Doctor",Doctor.class)
						.getResultList();	
	}

	@Override
	public boolean update(Patient patient) {
		try {
			sessionFactory
				.getCurrentSession()
					.update(patient);
			return true;
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean delete(Patient patient) {
		try {
			sessionFactory
				.getCurrentSession()
					.delete(patient);//.update(patient);
			return this.update(patient);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	

}
