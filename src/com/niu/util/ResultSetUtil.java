package com.niu.util;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ResultSetUtil {
	/**
	 * 
	 * ResultSet Set到对象中去！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-9
	 * 
	 * @param rs
	 * @param clazz
	 * @return
	 */
	public static <T> T getClassByRs(ResultSet rs, Class<T> clazz) {
		T t = null;
		try {

			Field[] declaredFields = clazz.getDeclaredFields();
			while (rs.next()) {
				t = clazz.newInstance();
				for (Field field : declaredFields) {
					if (field.getName().indexOf("List") == -1) {
						field.setAccessible(true);
						field.set(t, rs.getObject(field.getName()));
					}

				}
			}

		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		}
		return t;

	}

	/**
	 * 
	 * ResultSet Set到List中去！！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-9
	 * 
	 * @param rs
	 * @param clazz
	 * @return
	 */
	public static <T> List<T> getListByRs(ResultSet rs, Class<T> clazz) {
		List<T> list = new ArrayList<T>();
		T t = null;
		try {
			Field[] declaredFields = clazz.getDeclaredFields();
			while (rs.next()) {
				try {
					t = clazz.newInstance();
					for (Field field : declaredFields) {
						if (field.getName().indexOf("List") != -1) {
							continue;
						}
						field.setAccessible(true);
						field.set(t, rs.getObject(field.getName()));
					}
					list.add(t);
				} catch (InstantiationException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
