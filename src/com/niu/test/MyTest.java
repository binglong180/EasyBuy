package com.niu.test;


import org.apache.log4j.Logger;
import org.junit.Test;
import com.niu.util.MathUtil;
public class MyTest {
	static Logger logger = Logger.getLogger(MyTest.class);
	@Test
	public void testGetUser() {
		logger.debug(MathUtil.getRandomsString(6));
	}
}
