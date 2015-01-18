package com.termex.services;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.termex.common.exception.TermexException;
import com.termex.converters.ProductConverter;
import com.termex.daos.CategoryDAO;
import com.termex.daos.ProductDAO;
import com.termex.db.model.Category;
import com.termex.db.model.Product;
import com.termex.exceptions.CategoryException;
import com.termex.exceptions.ProductException;
import com.termex.web.views.ProductDetailView;
import com.termex.web.views.ProductView;

@Service
public class ProductService {

	private final Logger logger = LoggerFactory.getLogger(ProductService.class);
	
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private CategoryDAO categoryDAO;

	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=TermexException.class)
	public void addProduct(ProductView productView) throws ProductException, CategoryException{
		
		try{
			
			ProductConverter converter = new ProductConverter();			
			Product product = converter.convertProductViewToEntity(productView);			
			Category category = categoryDAO.getCategoryById(productView.getCategoryId());			
			
			product.setCategory(category);			
			productDAO.addProduct(product);
			
			for(ProductDetailView pd : productView.getProductDetails()){				
				productDAO.addProductDetail(converter.convertProductDetViewToEntity(
						product.getIdProd(), pd.getLanguageId(), pd.getDescription()));
			}
			
		}catch(CategoryException cException){
			throw cException;
		}catch(ProductException pException){	
			throw pException;
		}catch(Exception e){
			logger.error("Product SERVICE Error ",e);
			ProductException categoryException = new ProductException(e, 
					ProductException.LAYER_DAO, ProductException.ACTION_INSERT);
			throw categoryException;
		}		
	}
	
	public List<ProductView> getProductViews() throws ProductException {
		try{
			ProductConverter converter = new ProductConverter();
			List<ProductView> productViews = new ArrayList<ProductView>();			
			for(Product product : productDAO.getProducts()){
				productViews.add(converter.convertProductEntityToView(product));
			}			
			return productViews;			
		}catch(ProductException pException){	
			throw pException;
		}catch(Exception e){
			logger.error("Product SERVICE Error ",e);
			ProductException categoryException = new ProductException(e, 
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}		
	}
	
	public ProductView getProductViewById(int productId) throws ProductException{
		try{
			ProductConverter converter = new ProductConverter();
			ProductView productView = converter.convertProductEntityToView(
					productDAO.getProductById(productId));
			return productView;
		}catch(ProductException pException){	
			throw pException;
		}catch(Exception e){
			logger.error("Product SERVICE Error ",e);
			ProductException categoryException = new ProductException(e, 
					ProductException.LAYER_DAO, ProductException.ACTION_SELECT);
			throw categoryException;
		}
	}
	
	public void deleteProductById(int productId) throws ProductException {
		try{
			productDAO.deleteProduct(productId);
		}catch(ProductException pException){	
			throw pException;
		}catch(Exception e){
			logger.error("Product SERVICE Error ",e);
			ProductException categoryException = new ProductException(e, 
					ProductException.LAYER_DAO, ProductException.ACTION_DELETE);
			throw categoryException;
		}
	}
	
	public byte[] getProductImageById(int productId) throws ProductException {
		try{
			return productDAO.getProductImage(productId);
		}catch(ProductException pException){	
			throw pException;
		}
	}
	
}
