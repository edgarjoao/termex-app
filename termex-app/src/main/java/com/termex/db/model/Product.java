package com.termex.db.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;


/**
 * The persistent class for the product database table.
 *
 */
@Entity
@Table(name="product")
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

	@Column(name="PROD_IMAGE_NAME")
	private String prodImageName;

	@Column(name="PROD_IMAGE_TYPE")
	private String prodImageType;

	//bi-directional many-to-one association to Category
	@ManyToOne
	@JoinColumn(name="ID_CAT")
	private Category category;

	//bi-directional many-to-one association to ProductDetail
	//@Fetch(FetchMode.SELECT)
	@OneToMany(mappedBy="product", fetch=FetchType.EAGER)
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

	public String getProdImageName() {
		return prodImageName;
	}

	public void setProdImageName(String prodImageName) {
		this.prodImageName = prodImageName;
	}

	public String getProdImageType() {
		return prodImageType;
	}

	public void setProdImageType(String prodImageType) {
		this.prodImageType = prodImageType;
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