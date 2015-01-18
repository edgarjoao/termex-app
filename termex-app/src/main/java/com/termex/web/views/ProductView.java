package com.termex.web.views;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/**
 * 
 * @author rioslore
 *
 */
public class ProductView {

	private int productId;
	private int categoryId;
	private String productCode;
	private byte[] productImage;
	private String status;
	private List<ProductDetailView> productDetails = new ArrayList<ProductDetailView>();

	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public byte[] getProductImage() {
		return productImage;
	}
	public void setProductImage(byte[] productImage) {
		this.productImage = productImage;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public List<ProductDetailView> getProductDetails() {
		return productDetails;
	}
	public void setProductDetails(List<ProductDetailView> productDetails) {
		this.productDetails = productDetails;
	}

	@Override
	public String toString() {
		return "ProductView [productId=" + productId + ", categoryId="
				+ categoryId + ", productCode=" + productCode
				+ ", productImage=" + Arrays.toString(productImage)
				+ ", status=" + status + "]";
	}		

}
