package com.bp.service;

import java.util.List;

import com.bp.bean.CompanyBean;

public interface CompanyService {

    public CompanyBean queryOneComapnyByName(String companyName);
    
    public CompanyBean queryOneComapnyById(String companyId);

    public List<CompanyBean> queryAllCompany(int start,int end);

    public void addCompany(CompanyBean companyBean);

    public void updateCompany(CompanyBean companyBean);

    public void deleteCompany(String companyId);
    
    public int getCompanyNum();
}
