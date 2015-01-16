package com.termex.db.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the category_detail database table.
 * 
 */
@Embeddable
public class CategoryDetailPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="ID_CAT", insertable=false, updatable=false)
	private int idCat;

	@Column(name="ID_LANG", insertable=false, updatable=false)
	private int idLang;

	public CategoryDetailPK() {
	}
	public int getIdCat() {
		return this.idCat;
	}
	public void setIdCat(int idCat) {
		this.idCat = idCat;
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
		if (!(other instanceof CategoryDetailPK)) {
			return false;
		}
		CategoryDetailPK castOther = (CategoryDetailPK)other;
		return 
			(this.idCat == castOther.idCat)
			&& (this.idLang == castOther.idLang);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.idCat;
		hash = hash * prime + this.idLang;
		
		return hash;
	}
}