package com.niu.service;

import java.sql.ResultSet;

import org.apache.log4j.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.niu.bean.ProductCategory;
import com.niu.bean.User;


public class BaseServiceImpl<T> implements BaseService<T> {
	protected static Logger logger=Logger.getLogger(BaseServiceImpl.class);
	protected static Connection conn;
	protected static PreparedStatement ps;
	protected static ResultSet rs;
	protected static ProductCategory productCategory;
	protected static User user;
}
