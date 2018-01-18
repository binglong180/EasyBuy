package com.niu.dao.order;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.niu.bean.OrderDetail;
import com.niu.dao.BaseDaoImpl;
import com.niu.util.ResultSetUtil;

public class OrderDetailDaoImpl extends BaseDaoImpl<OrderDetail> implements
		OrderDetailDao {

	public OrderDetailDaoImpl(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Integer addOrderDetail(OrderDetail orderDetail) throws SQLException {
		int num = 0;
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO easybuy_order_detail(orderId,productId,quantity,cost)");
		sql.append("VALUES(?,?,?,?)");
		List<Object> list = new ArrayList<Object>();
		list.add(orderDetail.getOrderId());
		list.add(orderDetail.getProductId());
		list.add(orderDetail.getQuantity());
		list.add(orderDetail.getCost());

		num = this.update(sql, list.toArray());
		return num;
	}

	@Override
	public OrderDetail getOrderDetail(String orderId) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM easybuy_order_detail WHERE orderId=?");
		ResultSet executeQuery = this.executeQuery(sql, orderId);
		OrderDetail classByRs = ResultSetUtil.getClassByRs(executeQuery,
				OrderDetail.class);
		return classByRs;
	}

}
