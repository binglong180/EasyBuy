package com.niu.web.pre;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.niu.bean.User;
import com.niu.service.user.UserService;
import com.niu.service.user.UserServiceImpl;
import com.niu.util.EmptyUtil;
import com.niu.util.MD5Util;
import com.niu.util.ReturnResult;
import com.niu.util.UserServletUtil;
import com.niu.web.AbstractServlet;

@WebServlet(value = { "/Login" }, loadOnStartup = 1)
public class LoginServelet extends AbstractServlet {

	static Logger logger = Logger.getLogger(LoginServelet.class);
	ReturnResult result;
	String returnPath = "pre/index";// 返回路径
	UserService us;

	public void init() {
		us = new UserServiceImpl();
		result = new ReturnResult();
	}

	public String toLogin(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		return "pre/login";
	}

	/**
	 * 
	 * 登录方法！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2017-12-31
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	public ReturnResult login(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		boolean isLogin = false;
		String loginName = req.getParameter("loginName");
		String password = req.getParameter("password");
		String[] checkboxs = req.getParameterValues("checkbox");
		User user = null;
		user = us.getUserByLoginName(loginName);
		if (!EmptyUtil.isEmpty(user)) {
			String padMd5 = MD5Util.GetMD5Code(password);
			if (loginName.equals(user.getLoginName())
					&& padMd5.equals(user.getPassword())) {
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
				result.returnSuccess("登录成功！");
			} else {
				result.returnFail("密码或用户名错误");
			}
		} else {
			result.returnFail("用户不存在");
		}
		return result;
	}

	public String loginOut(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		req.getSession().removeAttribute("user");
		result.returnSuccess("注销成功！");
		return "pre/index";

	}

	@Override
	public Class getServletClass() {
		return LoginServelet.class;
	}

}