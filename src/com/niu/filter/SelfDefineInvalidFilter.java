package com.niu.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.User;
import com.niu.util.EmptyUtil;
import com.niu.util.ShoppingCart;

@WebFilter("/*")
public class SelfDefineInvalidFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		String path = ((HttpServletRequest) request).getServletPath();
		User loginUser = ShoppingCart
				.getLoginUser((HttpServletRequest) request);
		if (EmptyUtil.isEmpty(loginUser)) {
			if (path.indexOf("pre") > -1 || path.indexOf("statics") > -1
					|| path.indexOf("Home") > -1 || path.indexOf("Cart") > -1
					|| path.indexOf("Register") > -1
					|| path.indexOf("Product") > -1
					|| path.indexOf("Login") > -1 || path.indexOf("files") > -1) {
				filterChain.doFilter(request, response);// 放行
			} else {
				((HttpServletResponse) response).sendRedirect("pre/index.jsp");
				return;
			}
		} else {
			filterChain.doFilter(request, response);// 放行
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}
}
