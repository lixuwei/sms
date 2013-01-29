package com.bp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bp.bean.CompanyBean;
import com.bp.common.Page;
import com.bp.service.CompanyService;

@Controller
public class CompanyController {

    @Autowired
    CompanyService companyService;

    @RequestMapping(method = RequestMethod.GET, value = "/addCompany.do")
    public String initAddCompany(ModelMap mm) {
        CompanyBean cb = new CompanyBean();
        mm.put("company", cb);
        return "/company/addCompany";
    }

    @RequestMapping("/checkCompany.do")
    @ResponseBody
    public Map<String,String> checkCompany(HttpServletRequest request){
        String companyName=request.getParameter("companyName");
        Map<String,String> map=new HashMap<String,String>();
        CompanyBean cb = companyService.queryOneComapnyByName(companyName);
        if(cb!=null){
            map.put("ajaxState", "false");
        }else{
            map.put("ajaxState", "true");
        }
        return map;
    }
    @RequestMapping(method = RequestMethod.POST, value = "/addCompany.do")
    public String addCompany(CompanyBean companyBean) {
        if (companyBean.getCompanyId() != 0) {
            companyService.updateCompany(companyBean);
        } else {
            companyService.addCompany(companyBean);
        }
        return "redirect:/queryAllCompany.do";
    }

    @RequestMapping("/queryAllCompany.do")
    public ModelAndView pageListCompany(HttpServletRequest request){
        //设置每页显示数量
        int pageSize=2;
        //取得数据总数
        int totalNum=companyService.getCompanyNum();
        //取得当前页
        String currentPage=request.getParameter("currentPage");
        Page page=null;
        //根绝当前页初始化分页信息
        if(currentPage!=null&&!currentPage.trim().equals("")){
            page=new Page(Integer.parseInt(currentPage),pageSize,totalNum);
        }else{
            page=new Page(1,pageSize,totalNum);
        }
        List<CompanyBean> list=companyService.queryAllCompany(page.getStart(),page.getEnd());
        ModelAndView mav = new ModelAndView("/company/listCompany");
        mav.addObject("listCompany", list);
        //获得分页组件
        mav.addObject("pageModule",page.getPageModule());
        return mav;
    }

    @RequestMapping("/deleteCompany.do")
    public String deleteCompany(HttpServletRequest request) {
        String companyId = request.getParameter("companyId");
        companyService.deleteCompany(companyId);
        return "redirect:/queryAllCompany.do";
    }

    @RequestMapping(value = "/updateCompany.do", method = RequestMethod.GET)
    public ModelAndView updateCompany(HttpServletRequest request) {
        String companyId = request.getParameter("companyId");
        CompanyBean cb = companyService.queryOneComapnyById(companyId);
        ModelAndView mav = new ModelAndView("/company/addCompany");
        mav.addObject("company", cb);
        return mav;
    }

}
