package com.termex.daos;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.termex.db.model.Product;
import com.termex.db.model.ProductDetail;
import com.termex.exceptions.ProductException;

@Repository
public class ProductDAO extends HibernateDaoSupport {

	private final Logger logger = LoggerFactory.getLogger(ProductDAO.class);

	@Autowired
	public ProductDAO(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

	public void addProduct(Product product) throws ProductException{
		try{
			getHibernateTemplate().save(product);
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_INSERT);
			throw categoryException;
		}
	}

	public void addProductDetail(ProductDetail productDetail) throws ProductException {
		try{
			getHibernateTemplate().save(productDetail);
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_INSERT);
			throw categoryException;
		}
	}

	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=ProductException.class)
	public void deleteProduct(int productId) throws ProductException{
		try{
			Transaction transaction = getSession().beginTransaction();
			logger.info("Producto a borrar {}", productId);

			getSession().createSQLQuery("DELETE FROM PRODUCT_DETAIL WHERE ID_PROD = :productId")
			.setParameter("productId", productId).executeUpdate();

			getSession().createSQLQuery("DELETE FROM PRODUCT WHERE ID_PROD = :productId")
			.setParameter("productId", productId).executeUpdate();

			transaction.commit();
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_DELETE);
			throw categoryException;
		}
	}

	public void editProduct(Product product) throws ProductException{

	}

	public void editProductDetail(ProductDetail productDetail) throws ProductException{

	}

	public Product getProductById(int productId) throws ProductException{
		try{
			return getHibernateTemplate().get(Product.class, productId);
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Product> getProducts() throws ProductException {
		try{
			List<Product> products = getHibernateTemplate().findByNamedQuery("Product.findAll");
			return products;
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}

	public byte[] getProductImage(int productId) throws ProductException {
		try{
			Query query = getSession().createQuery("SELECT p.prodImage FROM Product p WHERE p.idProd = :productId")
					.setParameter("productId", productId);

			return (byte[]) query.uniqueResult();
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}

	public int count(String lang, int categoryId, int offset) throws ProductException{
		try{
			StringBuilder sql = new StringBuilder(0);

			sql.append("SELECT * FROM Product p")
				.append("ON p.ID_PROD = pd.ID_PROD")
				.append("INNER JOIN product_detail pd")
				.append("WHERE pd.ID_LANG = :lang")
				.append("AND p.ID_CAT = :catId")
				.append("AND p.PROD_STATUS = 'A'");

			Query query = getSession().createSQLQuery(sql.toString())
			.addEntity(Product.class)
			.setParameter("lang", lang)
			.setParameter("catId", categoryId);

			return (Integer) query.uniqueResult();
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Product> getListOfProducts(String lang, int categoryId, int offset) throws ProductException{
		try{
			StringBuilder sql = new StringBuilder(0);

			sql.append("SELECT * FROM Product p ")
			.append("INNER JOIN product_detail pd ")
			.append("WHERE pd.ID_LANG = :lang ")
			.append("AND p.ID_CAT = :catId ")
			.append("AND p.PROD_STATUS = 'A' ");
			//.append("LIMIT :offset, 10");

			Query query = getSession().createSQLQuery(sql.toString())
					.addEntity(Product.class)
					.setParameter("lang", lang)
					.setParameter("catId", categoryId);
					//.setParameter("offset", offset);

			return query.list();
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<ProductDetail> getProductDetails(int lang, int categoryId) throws ProductException{
		try{
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT p FROM ProductDetail p ")
			.append(" WHERE p.language.idLang = :lang ")
			.append("AND p.product.category.idCat = :catId ");

			Query query = getSession().createQuery(sql.toString())
					.setParameter("lang", lang)
					.setParameter("catId", categoryId);

			return query.list();

		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}

	public ProductDetail getProductDetail(int productId, int languageId) throws ProductException{
		try{
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT p FROM ProductDetail p ")
			.append("WHERE p.id.idProd = :productId ")
			.append("AND p.language.idLang = :languageId");

			ProductDetail productDetail = (ProductDetail) getSession().createQuery(sql.toString())
					.setParameter("productId", productId)
					.setParameter("languageId", languageId).uniqueResult();

			return productDetail;
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<ProductDetail> searchProductDetail(String queryTerm, int languageId) throws ProductException{
		try{

			Criteria criteria = getSession().createCriteria(ProductDetail.class)
					.add(Restrictions.eq("language.idLang", languageId))
					.add(Restrictions.like("proddDescription", "%"+queryTerm+"%"));
					//.add(Restrictions.sqlRestriction("lower({alias}.proddDescription) like lower(?)", "%"+queryTerm+"%", Hibernate.STRING));

			return criteria.list();
		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<ProductDetail> getProductDetailsRandom(int lang) throws ProductException{
		try{
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT p FROM ProductDetail p ")
			.append(" WHERE p.language.idLang = :lang ")
			.append("ORDER BY RAND()");

			Query query = getSession().createQuery(sql.toString()).setMaxResults(6)
					.setParameter("lang", lang);

			return query.list();

		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}

	@SuppressWarnings("unchecked")
	public List<ProductDetail> getProductDetailsAudioRandom(int lang) throws ProductException{
		try{
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT p FROM ProductDetail p ")
			.append(" WHERE p.language.idLang = :lang AND p.product.category.idCat = 1 ")
			.append("ORDER BY RAND()");

			Query query = getSession().createQuery(sql.toString()).setMaxResults(3)
					.setParameter("lang", lang);

			return query.list();

		}catch(Exception e){
			logger.error("Product DAO Error ",e);
			ProductException categoryException = new ProductException(e,
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}
}
