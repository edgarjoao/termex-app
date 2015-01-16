package com.termex.db.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the product_detail database table.
 * 
 */
@Embeddable
public class ProductDetailPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="ID_LANG", insertable=false, updatable=false)
	private int idLang;

	@Column(name="ID_PROD", insertable=false, updatable=false)
	private int idProd;

	public ProductDetailPK() {
	}
	public int getIdLang() {
		return this.idLang;
	}
	public void setIdLang(int idLang) {
		this.idLang = idLang;
	}
	public int getIdProd() {
		return this.idProd;
	}
	public void setIdProd(int idProd) {
		this.idProd = idProd;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof ProductDetailPK)) {
			return false;
		}
		ProductDetailPK castOther = (ProductDetailPK)other;
		return 
			(this.idLang == castOther.idLang)
			&& (this.idProd == castOther.idProd);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.idLang;
		hash = hash * prime + this.idProd;
		
		return hash;
	}
}