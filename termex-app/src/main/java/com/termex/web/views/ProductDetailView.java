package com.termex.web.views;
/**
 * 
 * @author rioslore
 *
 */
public class ProductDetailView {

	private int languageId;
	private String description;
	
	public ProductDetailView() { }
	
	public ProductDetailView(int languageId, String description) {
		this.languageId = languageId;
		this.description = description;
	}	
	public int getLanguageId() {
		return languageId;
	}
	public void setLanguageId(int languageId) {
		this.languageId = languageId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "ProductDetailView [languageId=" + languageId + ", description="
				+ description + "]";
	}
	
}
