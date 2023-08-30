package com.third.app.infra.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.third.app.infra.common.constants.Constants;

public class CheckLoginXdmSessionInterception extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (request.getSession().getAttribute("id") != null) {
//			System.out.println("관리자 인터셉트 정상 작동");
			// by pass
		} else {
			response.sendRedirect(Constants.URL_LOGINXDMFORM);
            return false;
		}
		return super.preHandle(request, response, handler);
	}

}
