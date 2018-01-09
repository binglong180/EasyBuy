package com.niu.dao.product;


import java.sql.SQLException;
import java.util.List;

import com.niu.bean.ProductCategory;
import com.niu.dao.BaseDao;
import com.niu.util.ProductCategoryBox;



public interface ProductCategoryDao extends BaseDao<ProductCategory> {
	public List<ProductCategory> selectByParentId(String parentId) throws SQLException;
	public List<ProductCategoryBox> getAllProductCategory() throws SQLException;
}
