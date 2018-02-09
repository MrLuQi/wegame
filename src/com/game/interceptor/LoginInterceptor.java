package com.game.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.core.config.Order;
import org.springframework.web.servlet.HandlerInterceptor;

import com.game.pojo.Members;
import com.game.util.common.gameConstants;

/**
 * 登录拦截
 * @author 卢琪
 *
 */
public class LoginInterceptor implements HandlerInterceptor {
    //private AvatarLogger logger = AvatarLoggerFactory.getLogger(this.getClass());

    private List<String> excludedUrls;

    /**
     * 在DispatcherServlet完全处理完请求后被调用
     * 当拦截器抛出异常时,依然会从当前拦截器往回执行所的拦截器的afterCompletion()
     */
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception exception)
            throws Exception {

    }

    //在业务处理器处理请求执行完成后,生成视图之前执行的动作
/*    public void postHandle(HttpServletRequest request, HttpServletResponse response,
                           Object handler, ModelAndView modelAndView) throws Exception {

    }*/

    /**
     * 在业务处理器处理请求之前被调用
     * 如果返回false 则退出本拦截器，本拦截器后面的postHandle与afterCompletion不再执行
     */
   
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws Exception {

        String requestUri = request.getRequestURI();
        for (String url : excludedUrls) {
            if (requestUri.contains(url)) {
                return true;
            }
        }

        HttpSession session = request.getSession();

        if( session==null) {
        	 response.sendRedirect(request.getContextPath() + "/login");
        	 return false;
       }
        
        Members members=(Members)session.getAttribute(gameConstants.MEMBER_SESSION);
        
        if (members == null) {
            //System.out.println(request.getContextPath());
           // logger.info("Pedirect to login page");
        	@SuppressWarnings("unused")
			String  server=request.getContextPath();
            response.sendRedirect(request.getContextPath() + "/login");
            return false;
        }else {
			return true;
		}
    }

    public void setExcludedUrls(List<String> excludedUrls) {
        this.excludedUrls = excludedUrls;
    }

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, org.springframework.web.servlet.ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}
}