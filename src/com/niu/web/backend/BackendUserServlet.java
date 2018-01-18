package com.niu.web.backend;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.User;
import com.niu.service.user.UserService;
import com.niu.service.user.UserServiceImpl;
import com.niu.web.AbstractServlet;

@WebServlet(value = "/BackendUser")
public class BackendUserServlet extends AbstractServlet {
	UserService us = null;

	public String userInfo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		return "/backend/user";
	}

	public String getUserlist(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<User> allUser = us.getAllUser();
		request.setAttribute("userList", allUser);
		return "/backend/user/userList";
	}

	public String deleteUser(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		List<User> allUser = us.deleteUser(userId);
		request.setAttribute("userList", allUser);
		return "/backend/user/userList";
	}

	public void init() throws ServletException {
		us = new UserServiceImpl();
	}

	@Override
	public Class getServletClass() {
		// TODO Auto-generated method stub
		return BackendUserServlet.class;
	}

}
