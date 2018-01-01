package com.niu.service.productCategory;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.ProductCategory;
import com.niu.service.BaseService;
import com.niu.util.ProductCategoryView;

public interface ProductCategoryService extends BaseService<ProductCategory>{
	public List<ProductCategory> selectByParentId(String parentId);
	public List<ProductCategoryView> getAllProductCategory();
}
