package com.termex.web.views;

public class CategoryDetailView {

	private int languageId;
	private String description;
	
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
		return "CategoryDetailView [languageId=" + languageId
				+ ", description=" + description + "]";
	}	
	
}
