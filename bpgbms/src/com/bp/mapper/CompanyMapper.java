package com.bp.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bp.bean.CompanyBean;

public interface CompanyMapper {

    public void insertCompany(CompanyBean companyBean);

    public void deleteCompany(String companyId);

    public void updateCompany(CompanyBean companyBean);

    public List<CompanyBean> queryAllCompany(@Param(value="start")int start,@Param(value="end")int end);

    public CompanyBean queryOneCompanyById(String companyId);
    
    public CompanyBean queryOneCompanyByName(String companyName);
    
    public int totalNum();
}
