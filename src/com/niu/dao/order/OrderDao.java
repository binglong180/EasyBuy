package com.niu.dao.order;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.Order;
import com.niu.dao.BaseDao;

public interface OrderDao extends BaseDao<Order> {
	/**
	 * 
	 * 新增订单并返回订单号！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param order
	 * @return
	 * @throws SQLException
	 */
	Integer addOrder(Order order) throws SQLException;

	List<Order> queryOrderById(String userId) throws SQLException;

}
