package com.niu.dao.user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.niu.bean.UserAddress;
import com.niu.dao.BaseDaoImpl;
import com.niu.util.ResultSetUtil;

public class UserAddressDaoImpl extends BaseDaoImpl<UserAddress> implements
		UserAddressDao {

	public UserAddressDaoImpl(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<UserAddress> queryAddressByUserId(String userId) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT id,userId,address,createTime,isDefault,remark ");
		sql.append(" FROM easybuy_user_address ");
		sql.append(" WHERE userId=?;");
		ResultSet executeQuery = this.executeQuery(sql, userId);
		List<UserAddress> listByRs = ResultSetUtil.getListByRs(executeQuery,
				UserAddress.class);
		return listByRs;
	}

	@Override
	public Integer addAddressByUserId(UserAddress userAddress)
			throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO easybuy_user_address(address,createTime,remark,userId) ");
		sql.append(" VALUES(?,?,?,?)");
		List<Object> list = new ArrayList<Object>();
		list.add(userAddress.getAddress());
		list.add(userAddress.getCreateTime());
		list.add(userAddress.getRemark());
		list.add(userAddress.getUserId());
		Integer update = this.update(sql, list.toArray());
		return update;
	}

	@Override
	public UserAddress queryAddressById(String id) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT id,userId,address,createTime,isDefault,remark ");
		sql.append("FROM easybuy_user_address WHERE id=?;");
		ResultSet executeQuery = this.executeQuery(sql, id);
		UserAddress address = ResultSetUtil.getClassByRs(executeQuery,
				UserAddress.class);
		return address;
	}
}
