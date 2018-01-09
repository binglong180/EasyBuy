package com.niu.service.product;

import java.util.List;

import com.niu.bean.ProductCategory;
import com.niu.service.BaseService;
import com.niu.util.ProductCategoryBox;

public interface ProductCategoryService extends BaseService<ProductCategory>{
	public List<ProductCategory> selectByParentId(String parentId);
	public List<ProductCategoryBox> getAllProductCategory();
}
