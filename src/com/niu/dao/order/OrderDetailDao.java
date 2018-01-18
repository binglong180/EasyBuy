package com.niu.dao.order;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.OrderDetail;
import com.niu.dao.BaseDao;

public interface OrderDetailDao extends BaseDao<OrderDetail> {
	/**
	 * 新增订单详情
	 * 
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param orderDetail
	 * @return
	 * @throws SQLException
	 */
	Integer addOrderDetail(OrderDetail orderDetail) throws SQLException;

	/**
	 * 新增订单详情
	 * 
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param orderDetail
	 * @return
	 * @throws SQLException
	 */
	List<OrderDetail> getOrderDetail(String orderId) throws SQLException;

}
