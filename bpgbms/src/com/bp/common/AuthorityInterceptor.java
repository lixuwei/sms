package com.bp.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AuthorityInterceptor implements HandlerInterceptor {

    @Override
    public void afterCompletion(HttpServletRequest arg0,
            HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {

    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
            Object arg2, ModelAndView arg3) throws Exception {
        // Map<String,String> map=new HashMap<String,String>();
        // HttpServletRequest request = ServletActionContext.getRequest();
        // HttpSession session = request.getSession(true);
        // String userId =
        // StringUtil.object2String(session.getAttribute("userId"));
        // String
        // userName=StringUtil.object2String(session.getAttribute("userName"));
        // String
        // userAccount=StringUtil.object2String(session.getAttribute("userAccount"));
        // List<Map<String,Object>> resultList=(List<Map<String, Object>>)
        // session.getAttribute("menu");
        // List<Map<String,Object>> list=SingletonMenu.getInstance();
        // String ip=request.getRemoteAddr();
        // String event=request.getRequestURI(); //获得要访问的菜单
        // map.put("MENU_URL", event); //将访问菜单组装成map形式
        // if(list!=null&&list.contains(map)){//如果用户访问的菜单在所有菜单中，则判断此用户能够访问的菜单中是否包含此菜单
        // if(resultList==null||!resultList.contains(map)){
        // //用户能否访问的菜单包括此菜单，继续执行，否则跳转到登录页面
        // return Action.LOGIN;
        // }
        // }
        // if (userId != null && !"".equals(userId)&&!"null".equals(userId)) {
        // //将用户操作事件存入数据库
        // eggLogService.addLog(userAccount,userName,ip,event,new Date());
        // return invocation.invoke();
        // }
        // return Action.LOGIN;
        // }
    }

    @Override
    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object arg2) throws Exception {
        if (request.getRequestURI().indexOf("login.do") != -1) {
            return true;
        }
        if (request.getSession().getAttribute("userId") != null) {
            return true;
        } else {
            response.sendRedirect("/login.jsp");
            return false;
        }
    }
}
