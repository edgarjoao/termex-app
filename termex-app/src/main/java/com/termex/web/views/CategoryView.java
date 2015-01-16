package com.termex.web.views;

import java.util.ArrayList;
import java.util.List;

public class CategoryView {

	private int categoryId;
	private String code;
	private String status;
	private List<CategoryDetailView> categoryDetails = new ArrayList<CategoryDetailView>();
	
	public CategoryView() {	}
		
	public CategoryView(String code, String status) {		
		this.code = code;
		this.status = status;
	}

	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public List<CategoryDetailView> getCategoryDetails() {
		return categoryDetails;
	}
	public void setCategoryDetails(List<CategoryDetailView> categoryDetails) {
		this.categoryDetails = categoryDetails;
	}

	@Override
	public String toString() {
		return "CategoryView [categoryId=" + categoryId + ", code=" + code
				+ ", status=" + status + ", categoryDetails=" + categoryDetails
				+ "]";
	}

}
