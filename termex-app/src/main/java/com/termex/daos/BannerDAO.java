package com.termex.daos;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.termex.db.model.BannerDetail;
import com.termex.exceptions.BannerException;
import com.termex.exceptions.LanguageException;
import com.termex.exceptions.ProductException;

@Repository
public class BannerDAO extends HibernateDaoSupport {

	private final Logger logger = LoggerFactory.getLogger(BannerDAO.class);

	@Autowired
	public BannerDAO(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	@SuppressWarnings("unchecked")
	public List<BannerDetail> getBannerDetailList(int languageId) throws BannerException{
		try{
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT b FROM BannerDetail b ")
			.append(" WHERE b.language.idLang = :languageId");

			Query query = getSession().createQuery(sql.toString()).setMaxResults(4)
					.setParameter("languageId", languageId);

			return query.list();
		}catch(Exception e){
			logger.error("Hubo un error al tratar de obtener la lista de Banners");
			BannerException languageException = new BannerException(e,
					LanguageException.LAYER_DAO, BannerException.ACTION_SELECT);
			throw languageException;
		}
	}

	public byte[] getBannerImage(int bannerId) throws BannerException {
		try{
			Query query = getSession().createQuery("SELECT b.banImg FROM Banner b WHERE b.idBan = :bannerId")
					.setParameter("bannerId", bannerId);

			return (byte[]) query.uniqueResult();
		}catch(Exception e){
			logger.error("Banner DAO Error ",e);
			BannerException bannerException = new BannerException(e,
					ProductException.LAYER_DAO, BannerException.ACTION_SELECT);
			throw bannerException;
		}
	}
}
