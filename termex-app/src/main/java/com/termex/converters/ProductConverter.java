package com.termex.converters;

import com.termex.db.model.Product;
import com.termex.db.model.ProductDetail;
import com.termex.db.model.ProductDetailPK;
import com.termex.exceptions.ProductException;
import com.termex.web.views.ProductDetailView;
import com.termex.web.views.ProductView;
/**
 *
 * @author rioslore
 *
 */
public class ProductConverter {

	public ProductView convertProductEntityToView(Product product) throws ProductException{
		ProductView view = new ProductView();
		try{
			view.setCategoryId(product.getCategory().getIdCat());
			view.setProductId(product.getIdProd());
			view.setProductCode(product.getProdCode());
			view.setProductImage(product.getProdImage());
			view.setStatus(product.getProdStatus());
			view.setImageName(product.getProdImageName());
			view.setImageType(product.getProdImageType());
		} catch (Exception e) {
			ProductException productException = new ProductException(e, ProductException.LAYER_CONVERTER,
					ProductException.ACTION_CONVERTER);
			throw productException;
		}
		return view;
	}

	public ProductDetailView convertProductDetEntityToView(ProductDetail productDetail) throws ProductException {
		ProductDetailView view = new ProductDetailView();
		try{
			view.setLanguageId(productDetail.getId().getIdLang());
			view.setDescription(productDetail.getProddDescription());
		} catch (Exception e) {
			ProductException productException = new ProductException(e, ProductException.LAYER_CONVERTER,
					ProductException.ACTION_CONVERTER);
			throw productException;
		}
		return view;
	}

	public Product convertProductViewToEntity(ProductView view) throws ProductException {
		Product entity = new Product();
		try{
			entity.setIdProd(view.getProductId());
			entity.setProdCode(view.getProductCode());
			entity.setProdImage(view.getProductImage());
			entity.setProdStatus(view.getStatus());
			entity.setProdImageName(view.getImageName());
			entity.setProdImageType(view.getImageType());
		} catch (Exception e) {
			ProductException productException = new ProductException(e, ProductException.LAYER_CONVERTER,
					ProductException.ACTION_CONVERTER);
			throw productException;
		}
		return entity;
	}

	public ProductDetail convertProductDetViewToEntity(int productId, int languageId, String description) throws ProductException {
		ProductDetail entity = new ProductDetail();
		try{
			ProductDetailPK proPk = new ProductDetailPK();
			proPk.setIdProd(productId);
			proPk.setIdLang(languageId);
			entity.setId(proPk);
			entity.setProddDescription(description);
		} catch (Exception e) {
			ProductException productException = new ProductException(e, ProductException.LAYER_CONVERTER,
					ProductException.ACTION_CONVERTER);
			throw productException;
		}
		return entity;
	}

}
