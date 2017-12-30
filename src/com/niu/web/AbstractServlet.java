package com.niu.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.ProductCategory;
import com.niu.service.productCategory.ProductCategoryServiceImpl;
import com.niu.util.EmptyUtil;
import com.niu.util.PrintUtil;
import com.niu.util.ReturnResult;

public abstract class AbstractServlet extends HttpServlet {

	public abstract Class getServletClass();

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		Method method = null;
		Object result = null;

		try {
			if (EmptyUtil.isEmpty(action)) {
				result = getRespPathStr(request, response);
			} else {
				method = getServletClass().getDeclaredMethod(action,
						HttpServletRequest.class, HttpServletResponse.class);
				result = method.invoke(this, request, response);
			}
			toView(result, request, response);
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
			response.sendRedirect("400.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			if (EmptyUtil.isEmpty(result)) {
				response.sendRedirect("500.jsp");
			} else {
				if (result instanceof String) {

				} else {
					ReturnResult returnResult = new ReturnResult();
					returnResult.returnFail("系统错误！");
					PrintUtil.print(returnResult, response);
				}
			}

		}

	}

	private void toView(Object result, HttpServletRequest request,
			HttpServletResponse response) {

		try {
			//如果是字符串则跳转到相关页面
			if (result instanceof String) {
				response.sendRedirect(result.toString() + ".jsp");
			}else{
				//进行数据传输
				PrintUtil.print(result, response);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * 
	 * 获得响应路径！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2017-12-29
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	private Object getRespPathStr(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		return "/pre/index";
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 * @throws SQLException 
	 */
	public void init() throws ServletException {
	}
}
