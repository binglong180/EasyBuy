package com.niu.test;

import redis.clients.jedis.Jedis;

import com.alibaba.fastjson.JSON;
import com.niu.bean.User;

public class Niutesty {
	public static void main(String[] args) {
		// 连接本地的 Redis 服务
		Jedis jedis = new Jedis("127.0.0.1");
		String string = jedis.get("niu");
		System.out.println(JSON.parseObject(string, User.class));
	}
}
