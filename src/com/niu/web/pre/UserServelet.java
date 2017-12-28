package com.niu.web.pre;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import com.niu.util.UserServletUtil;

@WebServlet(value = { "/login" }, loadOnStartup = 1)
public class UserServelet extends HttpServlet {

	static Logger logger = Logger.getLogger(UserServelet.class);
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("texl/html;charset=UTF-8");
		UserServletUtil.Login(req, resp);

	}

}