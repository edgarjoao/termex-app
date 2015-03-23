package com.termex.db.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;


/**
 * The persistent class for the category database table.
 *
 */
@Entity
@Table(name="category")
@NamedQuery(name="Category.findAll", query="SELECT c FROM Category c")
public class Category implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_CAT")
	private int idCat;

	@Column(name="CAT_CODE")
	private String catCode;

	@Column(name="CAT_STATUS")
	private String catStatus;

	//bi-directional many-to-one association to CategoryDetail
	//@Fetch(FetchMode.SELECT)
	@OneToMany(mappedBy="category", fetch=FetchType.LAZY)
	private List<CategoryDetail> categoryDetails;

	//bi-directional many-to-one association to Product
	@Fetch(FetchMode.SELECT)
	@OneToMany(mappedBy="category")
	private List<Product> products;

	public Category() {
	}

	public int getIdCat() {
		return this.idCat;
	}

	public void setIdCat(int idCat) {
		this.idCat = idCat;
	}

	public String getCatCode() {
		return this.catCode;
	}

	public void setCatCode(String catCode) {
		this.catCode = catCode;
	}

	public String getCatStatus() {
		return this.catStatus;
	}

	public void setCatStatus(String catStatus) {
		this.catStatus = catStatus;
	}

	public List<CategoryDetail> getCategoryDetails() {
		return this.categoryDetails;
	}

	public void setCategoryDetails(List<CategoryDetail> categoryDetails) {
		this.categoryDetails = categoryDetails;
	}

	public CategoryDetail addCategoryDetail(CategoryDetail categoryDetail) {
		getCategoryDetails().add(categoryDetail);
		categoryDetail.setCategory(this);

		return categoryDetail;
	}

	public CategoryDetail removeCategoryDetail(CategoryDetail categoryDetail) {
		getCategoryDetails().remove(categoryDetail);
		categoryDetail.setCategory(null);

		return categoryDetail;
	}

	public List<Product> getProducts() {
		return this.products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Product addProduct(Product product) {
		getProducts().add(product);
		product.setCategory(this);

		return product;
	}

	public Product removeProduct(Product product) {
		getProducts().remove(product);
		product.setCategory(null);

		return product;
	}

}