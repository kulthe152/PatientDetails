package com.sk.patientDetails.util;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import com.sk.patientDetails.Model.Patient;

import ch.qos.logback.classic.Logger;

public class fileuploadutility {

	private static String real_path = "";
	private static final String ABS_PATH = "C:\\Users\\Shubham\\Developer-Zone\\PatientDetails\\Patient-Details\\src\\main\\webapp\\assets_PatientDetails\\PatientReport\\";
	private static final Logger logger = (Logger) LoggerFactory.getLogger(fileuploadutility.class);
	
	
	public static void uploadFile(HttpServletRequest request, MultipartFile file, Patient patient) {
		
		real_path = request.getSession().getServletContext().getRealPath("/assets_PatientDetails/PatientReport/");
		logger.info(real_path);
		
		if(!new File(ABS_PATH).exists()) {
			//create the directories
			new File(ABS_PATH).mkdirs();
		}
		//does not exist then create directory
		if(!new File(real_path).exists()) {
			new File(real_path).mkdirs();
		}
	
		try 
		{
			file.transferTo(new File(real_path + patient.getPid() + "-"+ patient.getPname() + ".pdf"));
			file.transferTo(new File(ABS_PATH + patient.getPid() + "-"+ patient.getPname() + ".pdf"));
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	
	}

	
	
}
