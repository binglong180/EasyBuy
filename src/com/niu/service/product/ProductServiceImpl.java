package com.niu.service.product;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.Product;
import com.niu.dao.product.ProductDao;
import com.niu.dao.product.ProductDaoImpl;
import com.niu.param.ProductParam;
import com.niu.service.BaseServiceImpl;
import com.niu.util.JDBCUtil;

/**
 * 
 * 商品逻辑层的实现类！
 * 
 * @author 牛牛牛！！！牛牛！！牛！
 * 
 * @date 2018-1-2
 * 
 * @version
 * 
 */
public class ProductServiceImpl extends BaseServiceImpl<Product> implements
		ProductService<Product> {

	/**
	 * 商品列表
	 */
	@Override
	public List<Product> queryProductList(ProductParam param) {
		List<Product> queryProductList = null;
		try {
			conn = JDBCUtil.getConnection();
			ProductDao pd = new ProductDaoImpl(conn);
			queryProductList = pd.queryProductList(param);
		} catch (SQLException e) {

			e.printStackTrace();
			return null;
		} finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return queryProductList;
	}

	/**
	 * 商品数量
	 */
	@Override
	public Integer queryProductCount(ProductParam param) {
		Integer count = null;
		try {
			conn = JDBCUtil.getConnection();
			ProductDao pd = new ProductDaoImpl(conn);
			count = pd.queryProductCount(param);
		} catch (SQLException e) {

			e.printStackTrace();
			return 0;
		} finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return count;
	}

	@Override
	public Product queryProductById(String id) {
		Product product = null;
		try {
			conn = JDBCUtil.getConnection();
			ProductDao pd = new ProductDaoImpl(conn);
			product = pd.queryProductById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return product;
	}

}
