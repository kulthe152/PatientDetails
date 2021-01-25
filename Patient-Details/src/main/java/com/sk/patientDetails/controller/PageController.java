package com.sk.patientDetails.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sk.patientDetails.DAO.PatientDAO;
import com.sk.patientDetails.Model.Doctor;
import com.sk.patientDetails.Model.Patient;
import com.sk.patientDetails.util.fileuploadutility;

import ch.qos.logback.classic.Logger;

@Controller
public class PageController {

	@Autowired
	PatientDAO patientDAO;
	
	@Autowired
    private JavaMailSender mailSender;
	
	private static final Logger logger = (Logger) LoggerFactory.getLogger(PageController.class);
	
	@RequestMapping(value= {"/","/home"})
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
		
		List<Patient> listOfPatient = patientDAO.listOfPatient();
		List<Doctor> listOfDoctor = patientDAO.listOfDoctor();
		List<Patient> selectedPatient = patientDAO.listOfPatient();
		
		for(Patient patient : listOfPatient) {
			for(Doctor doctor: listOfDoctor) {
				
				Date appointment_Date = patient.getAppointment_Date();
				Date avail_From = doctor.getAvail_From();
				Date avail_To = doctor.getAvail_To();
				
				if(appointment_Date.after(avail_From) && appointment_Date.before(avail_To)) {
					selectedPatient.add(patient);
					
					for(Patient patient2 : selectedPatient) {
						String emailTo = patient2.getpEmail();
				        SimpleMailMessage email = new SimpleMailMessage();
				        email.setTo(emailTo);
				        email.setSubject("Appointment schedule");
				        email.setText("Your appointment schedule with"+doctor.getDocName());
				        mailSender.send(email);
					}
				}
				
			}	
		}
		
		
		
		
		return mv;
	}
	
	@RequestMapping(value="/PatientForm")
	public ModelAndView PatientForm(@RequestParam(name="operation", required=false) String operation) {
		ModelAndView mv = new ModelAndView("page");
		Patient npatient = new Patient();
		mv.addObject("patient",npatient);
		
		if(operation!=null) {
			if(operation.equals("patient")) {
				mv.addObject("message","Patient Submitted Successfully!!");
			}
		}
		return mv;
		
	}
	
	@RequestMapping(value="/DoctorForm")
	public ModelAndView doctorUI() {
		ModelAndView mv = new ModelAndView("doctor");
		Doctor ndoctor = new Doctor();
		mv.addObject("doctor", ndoctor);
		return mv;
	}
	
	@RequestMapping(value="/add/patientDetails",method=RequestMethod.POST)
	public String handlePatientDetails(@ModelAttribute("patient") Patient patient, HttpServletRequest request) {
		
		logger.info(patient.toString());
		if(!patient.getFile().getOriginalFilename().equals("")) {
			fileuploadutility.uploadFile(request,patient.getFile(),patient);
		}
		patient.setPath("/assets_PatientDetails/PatientReport/"+patient.getPid()+"-"+patient.getPname());
		patientDAO.add(patient);
		return "redirect:/home";
	}
	
	@RequestMapping(value="/add/docDetails",method=RequestMethod.POST)
	public String handleDoctorDetails(@ModelAttribute("doctor") Doctor doctor) {
		logger.info(doctor.toString());
		
		patientDAO.addDoctor(doctor);
		return "redirect:/home";
	
	}
}
