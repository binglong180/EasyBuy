package com.niu.service.order;

import java.sql.SQLException;

import com.niu.bean.OrderDetail;
import com.niu.service.BaseService;

public interface OrderDetailService extends BaseService<OrderDetail> {
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
	Integer addOrderDetail(OrderDetail orderDetail);

	OrderDetail getOrderDetail(String orderId);
}
