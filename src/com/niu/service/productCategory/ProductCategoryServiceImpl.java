package com.niu.service.productCategory;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.ProductCategory;
import com.niu.dao.productCategory.ProductCategoryDao;
import com.niu.dao.productCategory.ProductCategoryDaoImpl;
import com.niu.service.BaseServiceImpl;
import com.niu.util.JDBCUtil;

public class ProductCategoryServiceImpl extends BaseServiceImpl<ProductCategory> implements ProductCategoryService{

	@Override
	public List<ProductCategory> selectByParentId(Integer parentId)
			throws SQLException {
		conn=JDBCUtil.getConnection();
		ProductCategoryDao pcd=new ProductCategoryDaoImpl(conn);
		List<ProductCategory> productCategoryLists=null;
		productCategoryLists=pcd.selectByParentId(parentId);
		return productCategoryLists;
	}

}
