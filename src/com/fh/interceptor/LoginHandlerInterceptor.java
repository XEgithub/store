package com.fh.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import sun.util.logging.resources.logging;

import com.fh.entity.system.User;
import com.fh.service.system.fhlog.FHlogManager;
import com.fh.util.Const;
import com.fh.util.DateUtil;
import com.fh.util.Jurisdiction;

/**
 * 
 * 类名称：登录过滤，权限验证 类描述：
 */
public class LoginHandlerInterceptor extends HandlerInterceptorAdapter {

	@Resource(name = "fhlogService")
	private FHlogManager FHLOG;
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String path = request.getServletPath();
		
		if (path.matches(Const.NO_INTERCEPTOR_PATH)) {
			return true;
		} else {
			User user = (User) Jurisdiction.getSession().getAttribute(
					Const.SESSION_USER);
			if (user != null) {
				path = path.substring(1, path.length());
				boolean b = Jurisdiction.hasJurisdiction(path); // 访问权限校验
				if (!b) {
					response.sendRedirect(request.getContextPath()
							+ Const.LOGIN);
				}
				return b;
			} else {
				// 登陆过滤
				FHLOG.save("访问"+DateUtil.getCurrentDateTime() ,path);
				response.sendRedirect(request.getContextPath() + Const.LOGIN);
				return false;
			}
		}
	}

}
