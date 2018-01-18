package com.niu.dao.product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.niu.bean.Product;
import com.niu.dao.BaseDaoImpl;
import com.niu.param.ProductParam;
import com.niu.util.EmptyUtil;

public class ProductDaoImpl extends BaseDaoImpl<Product> implements ProductDao {

	public ProductDaoImpl(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Product> queryProductList(ProductParam param)
			throws SQLException {
		List<Object> list = new ArrayList<Object>();// sql语句的参数列表
		List<Product> ProductList = new ArrayList<Product>();// 商品列表
		StringBuffer sql = new StringBuffer(
				"SELECT id,`name`,description,price,stock,"
						+ "categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete "
						+ "FROM easybuy_product WHERE 1=1");
		// 根据名称查询精确
		if (!EmptyUtil.isEmpty(param.getName())) {
			sql.append(" and name=?");
			list.add(param.getName());
		}
		// 模糊查询
		if (!EmptyUtil.isEmpty(param.getKeyword())) {
			sql.append(" and name like ?");
			list.add("%" + param.getKeyword() + "%");
		}
		// 根据分类查询
		if (param.getCategoryId() != 0) {
			sql.append(" AND categoryLevel1Id=? OR categoryLevel2Id=? OR categoryLevel3Id =?");
			list.add(param.getCategoryId());
			list.add(param.getCategoryId());
			list.add(param.getCategoryId());
		}
		// 排序
		if (!EmptyUtil.isEmpty(param.getSort())) {
			sql.append(" order by " + param.getSort());
		}
		// 是否分页
		if (!EmptyUtil.isEmpty(param.isPage())) {
			sql.append(" limit  " + param.getStartIndex() + ","
					+ param.getPageSize());
		}
		rs = this.executeQuery(sql, list.toArray());
		if (!EmptyUtil.isEmpty(rs)) {
			while (rs.next()) {
				ProductList.add(setTableByRs(rs));
			}
		}
		return ProductList;
	}

	/**
	 * 获得查询的总数
	 */
	@Override
	public Integer queryProductCount(ProductParam param) throws SQLException {
		Integer count = null;
		List<Object> list = new ArrayList<Object>();// sql语句的参数列表
		StringBuffer sql = new StringBuffer("SELECT COUNT(1) "
				+ "FROM easybuy_product WHERE 1=1");
		// 根据名称查询精确
		if (!EmptyUtil.isEmpty(param.getName())) {
			sql.append(" and name=?");
			list.add(param.getName());
		}
		// 模糊查询
		if (!EmptyUtil.isEmpty(param.getKeyword())) {
			sql.append(" and name like ?");
			list.add("%" + param.getKeyword() + "%");
		}
		// 根据分类查询
		if (param.getCategoryId() != 0) {
			sql.append(" AND categoryLevel1Id=? OR categoryLevel2Id=? OR categoryLevel3Id =?");
			list.add(param.getCategoryId());
			list.add(param.getCategoryId());
			list.add(param.getCategoryId());
		}
		rs = this.executeQuery(sql, list.toArray());
		if (EmptyUtil.isEmpty(rs)) {
			count = 0;
		} else {
			while (rs.next()) {

				count = rs.getInt(1);
			}
		}
		return count;
	}

	public Product setTableByRs(ResultSet rs) throws SQLException {
		Product product = new Product();
		product.setId(rs.getInt("id"));
		product.setName(rs.getString("name"));
		product.setDescription(rs.getString("description"));
		product.setPrice(rs.getFloat("price"));
		product.setStock(rs.getInt("stock"));
		product.setCategoryLevel1Id(rs.getInt("categoryLevel1Id"));
		product.setCategoryLevel2Id(rs.getInt("categoryLevel2Id"));
		product.setCategoryLevel3Id(rs.getInt("categoryLevel3Id"));
		product.setFileName(rs.getString("fileName"));
		return product;
	}

	@Override
	public Product queryProductById(String id) throws SQLException {
		Product product = null;
		StringBuffer sql = new StringBuffer(
				"SELECT id,`name`,description,price,stock,"
						+ "categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName,isDelete "
						+ "FROM easybuy_product WHERE id=?");
		ResultSet executeQuery = this.executeQuery(sql, id);
		while (executeQuery.next()) {
			product = setTableByRs(executeQuery);
		}
		return product;
	}

	@Override
	public Integer updateStockByid(String id, Integer stock)
			throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE easybuy_product SET stock=? WHERE id=?");
		Integer update = this.update(sql, stock, id);
		return update;
	}
}
