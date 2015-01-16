package com.termex.db.model;

import java.io.Serializable;

import javax.persistence.*;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import java.util.List;


/**
 * The persistent class for the product database table.
 * 
 */
@Entity
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_PROD")
	private int idProd;

	@Column(name="PROD_CODE")
	private String prodCode;

	@Lob
	@Column(name="PROD_IMAGE")
	private byte[] prodImage;

	@Column(name="PROD_STATUS")
	private String prodStatus;

	//bi-directional many-to-one association to Category
	@ManyToOne
	@JoinColumn(name="ID_CAT")
	private Category category;

	//bi-directional many-to-one association to ProductDetail
	@Fetch(FetchMode.SELECT)
	@OneToMany(mappedBy="product")
	private List<ProductDetail> productDetails;

	public Product() {
	}

	public int getIdProd() {
		return this.idProd;
	}

	public void setIdProd(int idProd) {
		this.idProd = idProd;
	}

	public String getProdCode() {
		return this.prodCode;
	}

	public void setProdCode(String prodCode) {
		this.prodCode = prodCode;
	}

	public byte[] getProdImage() {
		return this.prodImage;
	}

	public void setProdImage(byte[] prodImage) {
		this.prodImage = prodImage;
	}

	public String getProdStatus() {
		return this.prodStatus;
	}

	public void setProdStatus(String prodStatus) {
		this.prodStatus = prodStatus;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<ProductDetail> getProductDetails() {
		return this.productDetails;
	}

	public void setProductDetails(List<ProductDetail> productDetails) {
		this.productDetails = productDetails;
	}

	public ProductDetail addProductDetail(ProductDetail productDetail) {
		getProductDetails().add(productDetail);
		productDetail.setProduct(this);

		return productDetail;
	}

	public ProductDetail removeProductDetail(ProductDetail productDetail) {
		getProductDetails().remove(productDetail);
		productDetail.setProduct(null);

		return productDetail;
	}

}