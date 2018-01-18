package com.niu.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

import org.apache.log4j.Logger;

@WebFilter(value = { "/EncodeFilter" }, initParams = { @WebInitParam(name = "encode", value = "UTF-8") })
public class EncodeFilter implements Filter {
	private String encode;
	private Logger logger = Logger.getLogger(EncodeFilter.class);

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("设置编码");
		if (request.getCharacterEncoding() == null) {
			request.setCharacterEncoding(encode);
		}
		if (response.getCharacterEncoding() == null) {
			response.setCharacterEncoding(encode);
		}
		try {
			// 再次执行设置编码格式
			chain.doFilter(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void destroy() {
		if (encode != null) {
			encode = null;
		}

	}

	// 从配置文件获得encode的参数
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String encode = filterConfig.getInitParameter("encode");
		logger.info("设置编码格式" + encode);
		if (this.encode == null) {
			if (encode != null && encode.trim().length() != 0) {
				encode = this.encode;
			}
		}

	}

}
