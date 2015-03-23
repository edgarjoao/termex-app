package com.termex.db.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;


/**
 * The persistent class for the language database table.
 *
 */
@Entity
@Table(name="language")
@NamedQuery(name="Language.findAll", query="SELECT l FROM Language l")
public class Language implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="ID_LANG")
	private int idLang;

	@Column(name="LANG_CODE")
	private String langCode;

	@Column(name="LANG_NAME")
	private String langName;

	//bi-directional many-to-one association to BannerDetail
	@OneToMany(mappedBy="language")
	private List<BannerDetail> bannerDetails;

	//bi-directional many-to-one association to CategoryDetail
	@OneToMany(mappedBy="language")
	private List<CategoryDetail> categoryDetails;

	//bi-directional many-to-one association to ProductDetail
	@OneToMany(mappedBy="language")
	private List<ProductDetail> productDetails;

	public Language() {
	}

	public int getIdLang() {
		return this.idLang;
	}

	public void setIdLang(int idLang) {
		this.idLang = idLang;
	}

	public String getLangCode() {
		return this.langCode;
	}

	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}

	public String getLangName() {
		return this.langName;
	}

	public void setLangName(String langName) {
		this.langName = langName;
	}

	public List<BannerDetail> getBannerDetails() {
		return this.bannerDetails;
	}

	public void setBannerDetails(List<BannerDetail> bannerDetails) {
		this.bannerDetails = bannerDetails;
	}

	public BannerDetail addBannerDetail(BannerDetail bannerDetail) {
		getBannerDetails().add(bannerDetail);
		bannerDetail.setLanguage(this);

		return bannerDetail;
	}

	public BannerDetail removeBannerDetail(BannerDetail bannerDetail) {
		getBannerDetails().remove(bannerDetail);
		bannerDetail.setLanguage(null);

		return bannerDetail;
	}

	public List<CategoryDetail> getCategoryDetails() {
		return this.categoryDetails;
	}

	public void setCategoryDetails(List<CategoryDetail> categoryDetails) {
		this.categoryDetails = categoryDetails;
	}

	public CategoryDetail addCategoryDetail(CategoryDetail categoryDetail) {
		getCategoryDetails().add(categoryDetail);
		categoryDetail.setLanguage(this);

		return categoryDetail;
	}

	public CategoryDetail removeCategoryDetail(CategoryDetail categoryDetail) {
		getCategoryDetails().remove(categoryDetail);
		categoryDetail.setLanguage(null);

		return categoryDetail;
	}

	public List<ProductDetail> getProductDetails() {
		return this.productDetails;
	}

	public void setProductDetails(List<ProductDetail> productDetails) {
		this.productDetails = productDetails;
	}

	public ProductDetail addProductDetail(ProductDetail productDetail) {
		getProductDetails().add(productDetail);
		productDetail.setLanguage(this);

		return productDetail;
	}

	public ProductDetail removeProductDetail(ProductDetail productDetail) {
		getProductDetails().remove(productDetail);
		productDetail.setLanguage(null);

		return productDetail;
	}

}