package com.niu.util;

import java.util.Random;

public class MathUtil {
	public static String getRandomsString(Integer num) {
		String randomNum = "";
		for (int i = 0; i < num; i++) {
			randomNum += getRandom();
		}
		return randomNum;
	}
	public static Integer getRandom() {
		Random random = new Random();

		return random.nextInt(10);

	}
}
