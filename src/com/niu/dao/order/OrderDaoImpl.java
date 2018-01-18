package com.niu.dao.order;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.niu.bean.Order;
import com.niu.dao.BaseDaoImpl;
import com.niu.util.ResultSetUtil;

public class OrderDaoImpl extends BaseDaoImpl<Order> implements OrderDao {

	public OrderDaoImpl(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Integer addOrder(Order order) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO easybuy_order(userId,loginName,userAddress,createTime,cost,serialNumber) ");
		sql.append("VALUES(?,?,?,?,?,?);");
		List<Object> list = new ArrayList<Object>();
		list.add(order.getUserId());
		list.add(order.getLoginName());
		list.add(order.getUserAddress());
		list.add(new Date());
		list.add(order.getCost());
		list.add(order.getSerialNumber());
		ResultSet rs = this.insert(sql, list.toArray());
		int int1 = -1;
		if (rs.next()) {
			int1 = rs.getInt(1);
		}
		return int1;
	}

	@Override
	public List<Order> queryOrderById(String userId) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM easybuy_order o WHERE userId=?");
		ResultSet executeQuery = this.executeQuery(sql, userId);
		List<Order> listByRs = ResultSetUtil.getListByRs(executeQuery,
				Order.class);
		return listByRs;
	}

	@Override
	public Order queryOrder(String id) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM easybuy_order o WHERE id=?");
		ResultSet executeQuery = this.executeQuery(sql, id);
		return ResultSetUtil.getClassByRs(executeQuery, Order.class);
	}

	@Override
	public List<Order> queryAllOrder() throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM easybuy_order  ORDER BY createTime DESC");
		ResultSet executeQuery = this.executeQuery(sql);
		return ResultSetUtil.getListByRs(executeQuery, Order.class);
	}
}
