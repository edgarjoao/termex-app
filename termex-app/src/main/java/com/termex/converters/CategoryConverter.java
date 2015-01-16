package com.termex.converters;

import java.util.ArrayList;
import java.util.List;

import com.termex.db.model.Category;
import com.termex.db.model.CategoryDetail;
import com.termex.exceptions.CategoryException;
import com.termex.web.views.CategoryDetailView;
import com.termex.web.views.CategoryView;

public class CategoryConverter {

	public Category convertViewToEntity(CategoryView categoryView) throws CategoryException{		
		Category category = new Category();
		try{
			if(categoryView.getCategoryId() > 0){
				category.setIdCat(categoryView.getCategoryId());
			}
			category.setCatCode(categoryView.getCode());
			category.setCatStatus(categoryView.getStatus());			
		} catch (Exception e) {
			CategoryException categoryException = new CategoryException(e, CategoryException.LAYER_CONVERTER,
					CategoryException.ACTION_CONVERTER);
			throw categoryException;
		}
		return category;
	}
	
	
	public CategoryView convertEntityToView(Category category) throws CategoryException{
		CategoryView categoryView = new CategoryView();		
		try{
			categoryView.setCategoryId(category.getIdCat());
			categoryView.setCode(category.getCatCode());
			categoryView.setStatus(category.getCatStatus());
		} catch (Exception e) {
			CategoryException categoryException = new CategoryException(e, CategoryException.LAYER_CONVERTER,
					CategoryException.ACTION_CONVERTER);
			throw categoryException;
		}		
		return categoryView;		
	}
	
	
	public CategoryDetail convertCategoryDetailToEntity(CategoryDetailView catDetailView) throws CategoryException{
		CategoryDetail categoryDetail = new CategoryDetail();		
		try{
			categoryDetail.setCatdDescription(catDetailView.getDescription());
		} catch (Exception e) {
			CategoryException categoryException = new CategoryException(e, CategoryException.LAYER_CONVERTER,
					CategoryException.ACTION_CONVERTER);
			throw categoryException;
		}
		return categoryDetail;		
	}
	
	public CategoryDetailView convertCategoryDetailEntityToView(CategoryDetail catDetail) throws CategoryException{
		CategoryDetailView cView = new CategoryDetailView();		
		try{
			cView.setDescription(catDetail.getCatdDescription());
			cView.setLanguageId(catDetail.getLanguage().getIdLang());			
		} catch (Exception e) {
			CategoryException categoryException = new CategoryException(e, CategoryException.LAYER_CONVERTER,
					CategoryException.ACTION_CONVERTER);
			throw categoryException;
		}
		return cView;		
	}
	
	
	public List<CategoryView> convertEntitiesToViews(List<Category> categoryList) throws CategoryException {		
		List<CategoryView> categoryViews = new ArrayList<CategoryView>();
		try{
			for (Category category : categoryList) {
				categoryViews.add(convertEntityToView(category));
			}			
		} catch (Exception e) {
			CategoryException categoryException = new CategoryException(e, CategoryException.LAYER_CONVERTER,
					CategoryException.ACTION_CONVERTER);
			throw categoryException;
		}
		return categoryViews;
	}
	
	/*
	public List<CategoryDetail> convertEntitiesToDetailViews(List<CategoryDetail> categoryDetailList) throws CategoryException {		
		List<CategoryDetailView> categoryDetailViews = new ArrayList<CategoryDetailView>();
		try{
			for (CategoryDetail categoryDetail : categoryDetailList) {
				categoryDetailViews.add(con(categoryDetail));
			}			
		} catch (Exception e) {
			CategoryException categoryException = new CategoryException(e, CategoryException.LAYER_CONVERTER,
					CategoryException.ACTION_CONVERTER);
			throw categoryException;
		}
		return categoryViews;
	}
	*/
}
