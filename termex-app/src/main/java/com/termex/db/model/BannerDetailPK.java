package com.termex.db.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the banner_detail database table.
 * 
 */
@Embeddable
public class BannerDetailPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="ID_BAN", insertable=false, updatable=false)
	private int idBan;

	@Column(name="ID_LANG", insertable=false, updatable=false)
	private int idLang;

	public BannerDetailPK() {
	}
	public int getIdBan() {
		return this.idBan;
	}
	public void setIdBan(int idBan) {
		this.idBan = idBan;
	}
	public int getIdLang() {
		return this.idLang;
	}
	public void setIdLang(int idLang) {
		this.idLang = idLang;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof BannerDetailPK)) {
			return false;
		}
		BannerDetailPK castOther = (BannerDetailPK)other;
		return 
			(this.idBan == castOther.idBan)
			&& (this.idLang == castOther.idLang);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.idBan;
		hash = hash * prime + this.idLang;
		
		return hash;
	}
}