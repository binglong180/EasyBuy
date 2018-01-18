package com.niu.web.pre;

import java.net.URLEncoder;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
import com.niu.util.ShoppingCart;
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
				ShoppingCart.setRedisByCookie(req, resp);
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
		System.out.println("退出前"
				+ ShoppingCart.getCart(req, resp).getProductItems().toString());
		req.getSession().invalidate();
		ShoppingCart.clearItems();
		ShoppingCart.clearCartCookie(resp);
		result.returnSuccess("注销成功！");
		return "pre/index";
	}

	/**
	 * 
	 * 判断用户是否登录！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-10
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	public ReturnResult isLogin(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		ReturnResult result = new ReturnResult();
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		if (EmptyUtil.isEmpty(user)) {
			result.returnFail("未登录");
		} else {
			result.returnSuccess();
		}
		return result;// 已经登录
	}

	public String refreshLogin(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		if (!EmptyUtil.isEmpty(user)) {
			session.setAttribute("user", user);
		}
		return "/common/pre/header";
	}

	@Override
	public Class getServletClass() {
		return LoginServelet.class;
	}

}