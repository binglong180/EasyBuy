package com.niu.service.product;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.Product;
import com.niu.param.ProductParam;
import com.niu.service.BaseService;

public interface ProductService<T> extends BaseService<Product> {
	/**
	 * 
	 * 按条件查询商品列表！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-1
	 * 
	 * @param param
	 * @return
	 * @throws SQLException
	 */
	List<Product> queryProductList(ProductParam param);

	/**
	 * 
	 * 按条件查询商品数！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-1
	 * 
	 * @param param
	 * @return
	 * @throws SQLException
	 */
	Integer queryProductCount(ProductParam param);

	/**
	 * 
	 * 根据id查询商品 ！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-8
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	Product queryProductById(String id);
}
