package com.niu.dao.productCategory;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.niu.bean.ProductCategory;
import com.niu.dao.BaseDaoImpl;

public class ProductCategoryDaoImpl extends BaseDaoImpl<ProductCategory>
		implements ProductCategoryDao {
	static List<ProductCategory> list=new ArrayList<ProductCategory>();
	public ProductCategoryDaoImpl(Connection conn) {
		super(conn);
	}
	@Override
	public List<ProductCategory> selectByParentId(Integer parentId)
			throws SQLException {
		StringBuffer sql = new StringBuffer(
				"SELECT id,`name`,parentId,`type`,iconClass FROM easybuy_product_category WHERE 1=1 AND parentId=?");
		rs = this.executeQuery(sql, parentId);
		list=setListByRs(rs);
		return list;
	}

	
	public ProductCategory  setTableByRs(ResultSet rs) throws SQLException {
		return null;
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<ProductCategory> setListByRs(ResultSet rs) throws SQLException {
		if (rs != null) {
			while (rs.next()) {
				productCategory = new ProductCategory();
				productCategory.setId(rs.getInt("id"));
				productCategory.setName(rs.getString("name"));
				productCategory.setParentId(rs.getInt("parentId"));
				productCategory.setType(rs.getInt("type"));
				productCategory.setIconClass(rs.getString("iconClass"));
				list.add(productCategory);
			}
		}
		return list;
	}

}
