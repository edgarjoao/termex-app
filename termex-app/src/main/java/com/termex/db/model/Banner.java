package com.termex.db.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the banner database table.
 *
 */
@Entity
@Table(name="banner")
@NamedQuery(name="Banner.findAll", query="SELECT b FROM Banner b")
public class Banner implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_BAN")
	private int idBan;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="BAN_CREATED_DATE")
	private Date banCreatedDate;

	@Lob
	@Column(name="BAN_IMG")
	private byte[] banImg;

	@Column(name="BAN_IMG_NAME")
	private String banImgName;

	@Column(name="BAN_IMG_TYPE")
	private String banImgType;

	@Column(name="BAN_STATUS")
	private String banStatus;

	//bi-directional many-to-one association to BannerDetail
	@OneToMany(mappedBy="banner", fetch=FetchType.LAZY)
	private List<BannerDetail> bannerDetails;

	public Banner() {
	}

	public int getIdBan() {
		return this.idBan;
	}

	public void setIdBan(int idBan) {
		this.idBan = idBan;
	}

	public Date getBanCreatedDate() {
		return this.banCreatedDate;
	}

	public void setBanCreatedDate(Date banCreatedDate) {
		this.banCreatedDate = banCreatedDate;
	}

	public byte[] getBanImg() {
		return this.banImg;
	}

	public void setBanImg(byte[] banImg) {
		this.banImg = banImg;
	}

	public String getBanImgName() {
		return banImgName;
	}

	public void setBanImgName(String banImgName) {
		this.banImgName = banImgName;
	}

	public String getBanImgType() {
		return banImgType;
	}

	public void setBanImgType(String banImgType) {
		this.banImgType = banImgType;
	}

	public String getBanStatus() {
		return this.banStatus;
	}

	public void setBanStatus(String banStatus) {
		this.banStatus = banStatus;
	}

	public List<BannerDetail> getBannerDetails() {
		return this.bannerDetails;
	}

	public void setBannerDetails(List<BannerDetail> bannerDetails) {
		this.bannerDetails = bannerDetails;
	}

	public BannerDetail addBannerDetail(BannerDetail bannerDetail) {
		getBannerDetails().add(bannerDetail);
		bannerDetail.setBanner(this);

		return bannerDetail;
	}

	public BannerDetail removeBannerDetail(BannerDetail bannerDetail) {
		getBannerDetails().remove(bannerDetail);
		bannerDetail.setBanner(null);

		return bannerDetail;
	}

}