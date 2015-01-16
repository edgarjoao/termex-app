package com.termex.db.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the banner_detail database table.
 * 
 */
@Entity
@Table(name="banner_detail")
@NamedQuery(name="BannerDetail.findAll", query="SELECT b FROM BannerDetail b")
public class BannerDetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private BannerDetailPK id;

	@Column(name="BAND_TITLE")
	private String bandTitle;

	//bi-directional many-to-one association to Banner
	@ManyToOne
	@JoinColumn(name="ID_BAN",  insertable=false, updatable=false)
	private Banner banner;

	//bi-directional many-to-one association to Language
	@ManyToOne
	@JoinColumn(name="ID_LANG", insertable=false, updatable=false)
	private Language language;

	public BannerDetail() {
	}

	public BannerDetailPK getId() {
		return this.id;
	}

	public void setId(BannerDetailPK id) {
		this.id = id;
	}

	public String getBandTitle() {
		return this.bandTitle;
	}

	public void setBandTitle(String bandTitle) {
		this.bandTitle = bandTitle;
	}

	public Banner getBanner() {
		return this.banner;
	}

	public void setBanner(Banner banner) {
		this.banner = banner;
	}

	public Language getLanguage() {
		return this.language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

}