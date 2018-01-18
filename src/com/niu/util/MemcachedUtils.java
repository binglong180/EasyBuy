package com.niu.util;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.concurrent.Future;

import net.spy.memcached.MemcachedClient;

public class MemcachedUtils {
	static MemcachedClient client = null;

	static {
		try {
			client = new MemcachedClient(new InetSocketAddress(
					"192.168.180.109", 11211));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void add(String key, Object obj) {
		client.set(key, 0, obj);
	}

	public static Object get(String key) {
		Object object = client.get(key);
		return object;
	}

	public static void delete(String key) {
		client.delete(key);
	}

	public static void append(String key, ShoppingCart cookieCart) {
		Future append = client.append(0, key, cookieCart);
		try {
			if (!(boolean) append.get()) {
				add(key, cookieCart);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
