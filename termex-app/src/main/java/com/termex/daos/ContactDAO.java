package com.termex.daos;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.termex.db.model.ContactUs;
import com.termex.exceptions.ContactException;

@Repository
public class ContactDAO extends HibernateDaoSupport {

	private final Logger logger = LoggerFactory.getLogger(ContactDAO.class);

	@Autowired
	public ContactDAO(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	public void addContactMessage(ContactUs contactUs) throws ContactException{
		try{
			logger.info("Se ha recibido un Mensaje de contacto");
			getHibernateTemplate().persist(contactUs);
		}catch(Exception e){
			ContactException contactException = new ContactException(e,
					ContactException.LAYER_DAO, ContactException.ACTION_INSERT);
			throw contactException;
		}
	}
}
