package com.niu.web.pre;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niu.bean.User;
import com.niu.service.user.UserService;
import com.niu.service.user.UserServiceImpl;
import com.niu.util.Constants;
import com.niu.util.EmptyUtil;
import com.niu.util.MD5Util;
import com.niu.util.MathUtil;
import com.niu.util.ReturnResult;
import com.niu.util.SendUtil;
import com.niu.web.AbstractServlet;

@SuppressWarnings("serial")
@WebServlet(value = { "/Register" })
public class RegisterServlet extends AbstractServlet {
	ReturnResult result;
	User user;
	UserService us;

	@Override
	public void init() {
		result = new ReturnResult();
		us = new UserServiceImpl();
	}

	@SuppressWarnings("rawtypes")
	public Class getServletClass() {
		return RegisterServlet.class;
	}

	public String toRegister(HttpServletRequest req, HttpServletResponse resp) {
		return "pre/register";
	}

	/**
	 * 
	 * 注册方法！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-4
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	public ReturnResult register(HttpServletRequest req,
			HttpServletResponse resp) {
		String mobileVerificationCode = req
				.getParameter("mobileVerificationCode");
		String way = req.getParameter("way");// 注册方式
		String loginName = req.getParameter("loginName");// 登录名
		String userName = req.getParameter("userName");// 用户名
		String password = MD5Util.GetMD5Code(req.getParameter("password"));// 密码
		String affirmPassword = MD5Util.GetMD5Code(req
				.getParameter("affirmPassword"));// 验证密码
		Integer sex = Integer.parseInt(req.getParameter("sex"));// 性别(1:男 0：女)
		String identityCode = req.getParameter("identityCode");// (60)身份证号
		String email = req.getParameter("email");// 邮箱
		String mobile = req.getParameter("mobile");// 手机
		Integer type = Constants.UserType.PRE;// 用户类型
		user = new User(loginName, userName, affirmPassword, sex, identityCode,
				email, mobile, type);
		if (EmptyUtil.isEmpty(mobileVerificationCode)) {
			result.returnFail("请输入验证码！");
			return result;
		}
		// 用户名存不存在
		if (checkUserByLoginName(user.getLoginName())) {
			result.returnFail("登录名已存在");
			return result;
		} else {
			// 登录名不存在
			if (!EmptyUtil.isEmpty(way)) {
				// 手机号注册验证
				if (way.equals("mobile")) {
					result = resigterByMobile(user);
					// 邮箱注册验证
				} else if (way.equals("email")) {
					result = resigterByEmail(user);
				}
				if (result.getStatus() == Constants.ReturnResult.SUCCESS) {
					if (us.addUser(user) > 0) {
						result.returnSuccess();
					}
				}
			}
		}
		return result;
	}

	// 后台注册验证用户名是否存在！
	public ReturnResult checkUser(HttpServletRequest req,
			HttpServletResponse resp) {
		String loginName = req.getParameter("loginName");
		if (checkUserByLoginName(loginName)) {
			result.returnFail("已存在用户名");
		} else {
			result.returnSuccess();
		}
		return result;
	}

	// 前台验证是否存在
	public boolean checkUserAjax(HttpServletRequest req,
			HttpServletResponse resp) {
		ReturnResult result = checkUser(req, resp);
		if (result.getStatus() == 1) {
			return true;
		}
		return false;

	}

	public boolean checkUserByLoginName(String loginName) {
		if (EmptyUtil.isEmpty(us.getUserByLoginName(loginName))) {
			return false;// 不存在
		}
		return true;// 存在
	}

	// 手机号注册
	public ReturnResult resigterByMobile(User user) {
		{
			if (EmptyUtil.isEmpty(user.getMobile())) {
				result.returnFail("请输入手机号");
			} else if (EmptyUtil.isEmpty(user.getLoginName())) {
				result.returnFail("请输入登录名");
			} else if (EmptyUtil.isEmpty(user.getPassword())) {
				result.returnFail("请输入密码");
			} else if (EmptyUtil.isEmpty(user.getSex())) {
				result.returnFail("请选择性别");
			} else {
				result.returnSuccess();
			}
		}
		return result;
	}

	// 邮箱注册
	public ReturnResult resigterByEmail(User user) {
		if (EmptyUtil.isEmpty(user.getEmail())) {
			result.returnFail("请输入邮箱");
		} else if (EmptyUtil.isEmpty(user.getLoginName())) {
			result.returnFail("请输入登录名");
		} else if (EmptyUtil.isEmpty(user.getPassword())) {
			result.returnFail("请输入密码");
		} else if (EmptyUtil.isEmpty(user.getSex())) {
			result.returnFail("请选择性别");
		} else {
			result.returnSuccess();
		}
		return result;
	}

	/**
	 * 
	 * 短信发送！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-3
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	public ReturnResult mobileVerificationSend(HttpServletRequest req,
			HttpServletResponse resp) {
		String mobile = req.getParameter("mobile");
		String code = MathUtil.getRandomsString(6);
		if (!EmptyUtil.isEmpty(mobile)) {
			result = SendUtil.mobileSend(mobile, code);
			HttpSession session = req.getSession();
			if (result.getStatus() == 1) {
				String oldCode = (String) session
						.getAttribute("bgmobileVerificationCode");
				if (!EmptyUtil.isEmpty(oldCode)) {
					session.removeAttribute("bgmobileVerificationCode");// 如果已经有了验证码先清除
				}
				session.setAttribute("bgmobileVerificationCode", code);
				session.setMaxInactiveInterval(15 * 60);
				result.returnSuccess();
			} else {
				result.returnFail("验证码发送失败");
			}
		} else {
			result.returnFail("验证码发送失败");
		}
		return result;
	}

	/**
	 * 
	 * 验证验证码！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-5
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	public ReturnResult checkMobileVerificationCode(HttpServletRequest req,
			HttpServletResponse resp) {
		String mobileVerificationCode = req
				.getParameter("mobileVerificationCode");
		String bgmobileVerificationCode = (String) req.getSession()
				.getAttribute("bgmobileVerificationCode");
		if (EmptyUtil.isEmpty(mobileVerificationCode)) {
			return result.returnFail("请输入验证码！");
		} else {
			if (mobileVerificationCode.equals(bgmobileVerificationCode)) {
				// if (mobileVerificationCode.equals("123456")) {
				this.getServletContext().removeAttribute(
						"bgmobileVerificationCode");
				result.returnSuccess();
			} else {
				return result.returnFail("验证码错误！请输入正确的验证码");
			}
		}
		return result;
	}
}
