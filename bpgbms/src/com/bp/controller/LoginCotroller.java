package com.bp.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bp.bean.UserBean;
import com.bp.service.LoginService;

@Controller
public class LoginCotroller {
    @Autowired
    LoginService service;

    UserBean user;

    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, String> login(HttpServletRequest request) {
        String name = request.getParameter("userName");
        String password = request.getParameter("password");
        Map<String, String> map = new HashMap<String, String>();
        if ("admin".equals(name)) {
            request.getSession(true).setAttribute("userId", "userId");
            map.put("type", "true");
            user = new UserBean();
            user.setName(name);
            user.setPassword(password);
            service.servier2(user);
        } else {
            map.put("type", "false");
        }
        return map;
    }

    @RequestMapping(value = "/loginInit.do")
    public String init(ModelMap model) {
        UserBean user = new UserBean();
        model.put("user", user);
        return "loginForm";
    }

}
