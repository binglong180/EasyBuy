package com.niu.test;

import org.apache.log4j.Logger;
import org.junit.Test;

import com.niu.service.product.ProductServiceImpl;

public class MyTest {
	static Logger logger = Logger.getLogger(MyTest.class);

	@Test
	public void testGetUser() {
		logger.debug(new ProductServiceImpl().queryProductById("733"));
	}
}
