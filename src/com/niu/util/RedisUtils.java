package com.niu.util;

import redis.clients.jedis.Jedis;

public class RedisUtils {
	static Jedis jedis;

	static {
		jedis = new Jedis("127.0.0.1");
	}

	public static void add(String key, String value) {
		jedis.set(key, value);
	}

	public static String get(String key) {
		return jedis.get(key);
	}

	public static void delete(String key) {
		jedis.del(key);
	}

	public static void main(String[] args) {
		add("niu", "1111");
		System.out.println(get("niu"));
	}
}
