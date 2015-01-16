package com.termex.daos;

import java.util.List;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.termex.db.model.Language;
import com.termex.exceptions.LanguageException;

@Repository
public class LanguageDAO extends HibernateDaoSupport {

	private final Logger logger = LoggerFactory.getLogger(LanguageDAO.class);
	
	@Autowired
	public LanguageDAO(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}
	
	public Language getLanguageById(int languageId) throws LanguageException{
		try{			
			return getHibernateTemplate().get(Language.class, languageId);
		}catch(Exception e){
			LanguageException languageException = new LanguageException(e, 
					LanguageException.LAYER_DAO, LanguageException.ACTION_SELECT);
			throw languageException;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Language> getLanguages() throws LanguageException{
		try{			
			return getHibernateTemplate().findByNamedQuery("Language.findAll");
		}catch(Exception e){
			logger.error("Hubo un error al tratar de obtener la lista de lenguages");
			LanguageException languageException = new LanguageException(e, 
					LanguageException.LAYER_DAO, LanguageException.ACTION_SELECT);
			throw languageException;
		}
	}
}
