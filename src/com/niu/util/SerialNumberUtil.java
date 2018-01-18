package com.niu.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SerialNumberUtil {
	public static String getSerialNumber() {
		StringBuffer serialNumber = new StringBuffer();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		serialNumber.append(sdf.format(date));
		serialNumber.append(MathUtil.getRandomsString(12));
		return serialNumber.toString();
	}
}
