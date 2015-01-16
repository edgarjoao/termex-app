package com.termex.db.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


/**
 * The persistent class for the category_detail database table.
 * 
 */
@Entity
@Table(name="category_detail")
@NamedQuery(name="CategoryDetail.findAll", query="SELECT c FROM CategoryDetail c")
public class CategoryDetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private CategoryDetailPK id;

	@Column(name="CATD_DESCRIPTION")
	private String catdDescription;

	//bi-directional many-to-one association to Language
	@ManyToOne
	@JoinColumn(name="ID_LANG", insertable=false, updatable=false)
	private Language language;

	//bi-directional many-to-one association to Category
	//@ManyToOne(fetch=FetchType.LAZY)
	@ManyToOne
	@JoinColumn(name="ID_CAT", insertable=false, updatable=false)
	private Category category;

	public CategoryDetail() {
	}

	public CategoryDetailPK getId() {
		return this.id;
	}

	public void setId(CategoryDetailPK id) {
		this.id = id;
	}

	public String getCatdDescription() {
		return this.catdDescription;
	}

	public void setCatdDescription(String catdDescription) {
		this.catdDescription = catdDescription;
	}

	public Language getLanguage() {
		return this.language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}