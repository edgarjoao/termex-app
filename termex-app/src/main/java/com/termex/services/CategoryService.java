package com.termex.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.termex.converters.CategoryConverter;
import com.termex.daos.CategoryDAO;
import com.termex.daos.LanguageDAO;
import com.termex.db.model.Category;
import com.termex.db.model.CategoryDetail;
import com.termex.db.model.CategoryDetailPK;
import com.termex.exceptions.CategoryException;
import com.termex.web.views.CategoryDetailView;
import com.termex.web.views.CategoryView;

@Service
public class CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private LanguageDAO languageDAO;	
	
	public void addCategory(CategoryView categoryView) throws CategoryException {
		
		CategoryConverter categoryConverter = new CategoryConverter();		
		Category category = categoryConverter.convertViewToEntity(categoryView);
		
		categoryDAO.addCategory(category);
		
		for(CategoryDetailView catDetView: categoryView.getCategoryDetails()){
			CategoryDetail catDetail = new CategoryDetail();
			CategoryDetailPK catDetailPK = new CategoryDetailPK();
			
			catDetailPK.setIdCat(category.getIdCat());
			catDetailPK.setIdLang(catDetView.getLanguageId());
			
			catDetail.setCatdDescription(catDetView.getDescription());
			catDetail.setId(catDetailPK);
			
			categoryDAO.addCategoryDetail(catDetail);
		}

	}
		
	public void deleteCategory(int categoryId) throws CategoryException {				
		categoryDAO.deleteCategory(categoryId);
	}
	
	public void editCategory(CategoryView categoryView) throws CategoryException {
		
		CategoryConverter categoryConverter = new CategoryConverter();				
		
		Category category = categoryConverter.convertViewToEntity(categoryView);
		
		categoryDAO.editCategory(category);
		
		for(CategoryDetailView catDetView: categoryView.getCategoryDetails()){
			CategoryDetail catDetail = new CategoryDetail();
			CategoryDetailPK catDetailPK = new CategoryDetailPK();
			
			catDetailPK.setIdCat(category.getIdCat());
			catDetailPK.setIdLang(catDetView.getLanguageId());
			
			catDetail.setCatdDescription(catDetView.getDescription());
			catDetail.setId(catDetailPK);
			
			categoryDAO.editCategoryDetail(catDetail);
		}

	}
	
	public CategoryView getCategoryById(int categoryId) throws CategoryException {
		CategoryConverter categoryConverter = new CategoryConverter();
		
		CategoryView categoryView = categoryConverter
				.convertEntityToView(categoryDAO.getCategoryById(categoryId));	
		
		List<CategoryDetail> catDetails = categoryDAO.getListOfCategoryDetails(categoryId);
		
		for(CategoryDetail catDetail: catDetails){
			System.out.println(catDetail);
			
			categoryView.getCategoryDetails().add(
					categoryConverter.convertCategoryDetailEntityToView(catDetail));
		}
		
		return categoryView;
	}
	
	public List<CategoryView> getCategoryViewList() throws CategoryException {		
		
		CategoryConverter categoryConverter = new CategoryConverter();
		
		List<CategoryView> categoryViews = categoryConverter
				.convertEntitiesToViews(categoryDAO.getListOfCategories());
		
		return categoryViews;
	}
	
}
