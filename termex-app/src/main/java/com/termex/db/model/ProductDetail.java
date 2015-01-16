package com.termex.db.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the product_detail database table.
 * 
 */
@Entity
@Table(name="product_detail")
@NamedQuery(name="ProductDetail.findAll", query="SELECT p FROM ProductDetail p")
public class ProductDetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private ProductDetailPK id;

	@Column(name="PRODD_DESCRIPTION")
	private String proddDescription;

	//bi-directional many-to-one association to Language
	@ManyToOne
	@JoinColumn(name="ID_LANG", insertable=false, updatable=false)
	private Language language;

	//bi-directional many-to-one association to Product
	@ManyToOne
	@JoinColumn(name="ID_PROD", insertable=false, updatable=false)
	private Product product;

	public ProductDetail() {
	}

	public ProductDetailPK getId() {
		return this.id;
	}

	public void setId(ProductDetailPK id) {
		this.id = id;
	}

	public String getProddDescription() {
		return this.proddDescription;
	}

	public void setProddDescription(String proddDescription) {
		this.proddDescription = proddDescription;
	}

	public Language getLanguage() {
		return this.language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}