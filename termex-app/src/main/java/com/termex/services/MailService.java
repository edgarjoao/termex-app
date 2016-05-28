package com.termex.services;

import java.util.LinkedHashMap;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.velocity.app.VelocityEngine;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

import com.termex.common.exception.TermexException;
import com.termex.db.model.ContactUs;
import com.termex.exceptions.MailException;

@Service
public class MailService {
	
	private final Logger logger = LoggerFactory.getLogger(MailService.class);
	
	@Autowired
	private VelocityEngine velocityEngine;
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private SimpleMailMessage simpleMailMessage;
	@Autowired
	private SimpleMailMessage simpleMailMessageMime;

	public void sendEmail(ContactUs contactUs) throws MailException {
		
		try{

			logger.info("Lets send an email from contact form {}", contactUs.toString());
	
			final LinkedHashMap<Object, Object> parametersMap = new LinkedHashMap<Object, Object>();
			parametersMap.put("email", contactUs.getContEmail());
			parametersMap.put("name", contactUs.getContTitle());
			parametersMap.put("description", contactUs.getContContent());
			parametersMap.put("clientId", contactUs.getClientId());
			
			mailSender.send(new MimeMessagePreparator() {
	    		public void prepare(MimeMessage mimeMessage) throws MessagingException {
	    			MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
	    			String body = VelocityEngineUtils.mergeTemplateIntoString(
	    					velocityEngine, "contact_us.vm", "utf-8", parametersMap);
	    			helper.setFrom(simpleMailMessageMime.getFrom());
	    			helper.setTo(simpleMailMessage.getTo());
	    			helper.setSubject(simpleMailMessage.getSubject());
	    			helper.setText(body, true);    			
	    		}
	    	});

		}catch(Exception e){
			MailException mailException = new MailException(e, 
					TermexException.LAYER_SERVICE, TermexException.ACTION_INSERT);
			throw mailException;
		}
	}

}
