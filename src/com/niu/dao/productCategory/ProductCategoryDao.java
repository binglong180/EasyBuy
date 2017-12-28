package com.niu.dao.productCategory;


import java.sql.SQLException;
import java.util.List;

import com.niu.bean.ProductCategory;
import com.niu.dao.BaseDao;



public interface ProductCategoryDao extends BaseDao<ProductCategory> {
	public List<ProductCategory> selectByParentId(Integer parentId) throws SQLException;
}
