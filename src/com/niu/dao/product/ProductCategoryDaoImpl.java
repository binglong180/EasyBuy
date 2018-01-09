package com.niu.dao.product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.niu.bean.ProductCategory;
import com.niu.dao.BaseDaoImpl;
import com.niu.util.ProductCategoryBox;

public class ProductCategoryDaoImpl extends BaseDaoImpl<ProductCategory>
		implements ProductCategoryDao {
	List<ProductCategory> ProductCategoryList = new ArrayList<ProductCategory>();
	private ProductCategory productCategory;
	public ProductCategoryDaoImpl(Connection conn) {
		super(conn);
	}
	@Override
	public List<ProductCategory> selectByParentId(String parentId)
			throws SQLException {
		StringBuffer sql = new StringBuffer(
				"SELECT id,`name`,parentId,`type`,iconClass FROM easybuy_product_category WHERE 1=1 AND parentId=?");
		rs = this.executeQuery(sql, parentId);
		while (rs.next()) {
			productCategory = setTableByRs(rs);
			ProductCategoryList.add(productCategory);
		}
		return ProductCategoryList;
	}

	@Override
	public List<ProductCategoryBox> getAllProductCategory()
			throws SQLException {
		return null;
	}
	
	public ProductCategory setTableByRs(ResultSet rs) throws SQLException {
		if (rs != null) {
			productCategory = new ProductCategory();
			productCategory.setId(rs.getInt("id"));
			productCategory.setName(rs.getString("name"));
			productCategory.setParentId(rs.getInt("parentId"));
			productCategory.setType(rs.getInt("type"));
			productCategory.setIconClass(rs.getString("iconClass"));
		}
		return productCategory;
	}

}
