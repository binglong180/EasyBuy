package com.niu.util;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.SQLException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niu.bean.User;
import com.niu.service.user.UserService;
import com.niu.service.user.UserServiceImpl;

public class UserServletUtil {
	static public void Login(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		boolean isLogin = false;
		String loginName = req.getParameter("loginName");
		String password = req.getParameter("password");
		String[] checkboxs = req.getParameterValues("checkbox");
		UserService us = new UserServiceImpl();
		User user = null;
		try {
			user = us.getUserByLoginPass(loginName, password);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if (user != null) {
			isLogin = true;
			HttpSession session = req.getSession();
			session.setAttribute("user", user);
			Cookie cookie1 = new Cookie("loginName", URLEncoder.encode(
					user.getLoginName(), "utf-8"));
			Cookie cookie2 = new Cookie("password", URLEncoder.encode(
					user.getPassword(), "utf-8"));
			if (checkboxs != null) {
				cookie1.setMaxAge(60 * 60 * 24 * 7);
				cookie2.setMaxAge(60 * 60 * 24 * 7);
			}
			resp.addCookie(cookie1);
			resp.addCookie(cookie2);
			resp.sendRedirect("pre/index.jsp");

		}
		if (!isLogin) {
			resp.sendRedirect("pre/login.jsp");
		}
	}
}
