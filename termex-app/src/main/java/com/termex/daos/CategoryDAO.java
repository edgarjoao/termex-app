package com.termex.daos;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.termex.common.exception.TermexException;
import com.termex.db.model.Category;
import com.termex.db.model.CategoryDetail;
import com.termex.exceptions.CategoryException;

@Repository
public class CategoryDAO extends HibernateDaoSupport {

	private final Logger logger = LoggerFactory.getLogger(CategoryDAO.class);

	@Autowired
	public CategoryDAO(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	public void addCategory(Category category) throws CategoryException {
		try{
			logger.info("Categoria a guardar {}", category.toString());
			getHibernateTemplate().save(category);
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_INSERT);
			throw categoryException;
		}
	}

	public Category getCategoryById(int categoryId) throws CategoryException {
		try{
			return getHibernateTemplate().get(Category.class, categoryId);
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_SELECT);
			throw categoryException;
		}
	}

	public CategoryDetail getCategoryByIdAndLanguage(int categoryId, int languageId) throws CategoryException {
		try{

			StringBuilder sql = new StringBuilder();
			sql.append("SELECT c FROM CategoryDetail c ")
				.append(" WHERE id.idCat = :categoryId ")
				.append("AND language.idLang = :languageId");

			CategoryDetail categoryDetail = (CategoryDetail) getSession().createQuery(sql.toString())
					.setParameter("categoryId", categoryId).setParameter("languageId", languageId).uniqueResult();

			return categoryDetail;
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_SELECT);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<CategoryDetail> getListOfCategoryDetails(int categoryId) throws CategoryException {
		try{
			return getSession().createSQLQuery("SELECT * FROM CATEGORY_DETAIL WHERE ID_CAT = :catId")
					.addEntity(CategoryDetail.class)
					.setParameter("catId", categoryId).list();
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_SELECT);
			throw categoryException;
		}
	}

	public void addCategoryDetail(CategoryDetail categoryDetail) throws CategoryException {
		try{
			logger.info("Detalle Categoria a guardar {}", categoryDetail);
			getHibernateTemplate().save(categoryDetail);
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_INSERT);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<CategoryDetail> categoryDetails(int categoryId) throws CategoryException {
		try{
			logger.info("Obtener la lista de Detalle Categoria {}", categoryId);
			StringBuilder sql = new StringBuilder(0);
			sql.append("SELECT c FROM Category c WHERE c.ID_CAT = :catId");

			Query query = getSession().createSQLQuery(sql.toString()).addEntity(CategoryDetail.class)
					.setParameter("catId", categoryId);

			return query.list();
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_INSERT);
			throw categoryException;
		}
	}

	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=CategoryException.class)
	public void deleteCategory(int categoryId) throws CategoryException {
		try{
			Transaction transaction = getSession().beginTransaction();

			logger.info("Categoria a borrar {}", categoryId);

			getSession().createSQLQuery("DELETE FROM CATEGORY_DETAIL WHERE ID_CAT = :catId")
				.setParameter("catId", categoryId).executeUpdate();

			getSession().createQuery("DELETE FROM Category c WHERE c.idCat = :catId")
				.setParameter("catId", categoryId).executeUpdate();

			transaction.commit();

		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_DELETE);
			throw categoryException;
		}
	}

	public void editCategory(Category category) throws CategoryException {
		try{
			getHibernateTemplate().update(category);
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_UPDATE);
			throw categoryException;
		}
	}

	public void editCategoryDetail(CategoryDetail categoryDetail) throws CategoryException {
		try{
			getHibernateTemplate().update(categoryDetail);
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_UPDATE);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Category> getListOfCategories() throws CategoryException {
		try{
			return getSession().createSQLQuery("SELECT * FROM CATEGORY").addEntity(Category.class).list();
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_SELECT);
			throw categoryException;
		}
	}


	@SuppressWarnings("unchecked")
	public List<Category> getListOfCategoriesByLang(int languageId) throws CategoryException {
		try{

			StringBuilder sql = new StringBuilder();
			sql.append("SELECT * FROM CATEGORY c ")
				.append("INNER JOIN CATEGORY_DETAIL cd ")
				.append("on c.ID_CAT = cd.ID_CAT ")
				.append("WHERE cd.ID_LANG = :langId");

			Query query = getSession().createSQLQuery(sql.toString()).addEntity(
					Category.class).setParameter("langId", languageId);

			return query.list();
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_SELECT);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<CategoryDetail> getListOfCatDetailsByLang(int languageId) throws CategoryException{
		try{
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT * FROM CATEGORY_DETAIL cd ")
				.append("INNER JOIN CATEGORY c ")
				.append("WHERE cd.ID_LANG = :langId");

			Query query = getSession().createSQLQuery(sql.toString()).addEntity(
					Category.class).setParameter("langId", languageId);

			return query.list();
		}catch(Exception e){
			CategoryException categoryException = new CategoryException(e,
					TermexException.LAYER_DAO, TermexException.ACTION_SELECT);
			throw categoryException;
		}
	}

}
