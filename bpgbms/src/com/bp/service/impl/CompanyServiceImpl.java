package com.bp.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bp.bean.CompanyBean;
import com.bp.mapper.CompanyMapper;
import com.bp.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService{
    
    @Autowired
    CompanyMapper companyMapper; 
    
    @Override
    public CompanyBean queryOneComapnyById(String companyId) {
        return companyMapper.queryOneCompanyById(companyId);
//        return (CompanyBean) baseDao.selectOne("com.bp.bean.CompanyBean.queryOneCompany",companyId);
    }

    @Override
    public List<CompanyBean> queryAllCompany(int start,int end) {
        return companyMapper.queryAllCompany(start,end);
//        return baseDao.selectList("com.bp.bean.CompanyBean.queryAllCompany",new RowBounds(1, 10));
    }

    @Override
    public void addCompany(CompanyBean companyBean) {
//        baseDao.insert("com.bp.bean.CompanyBean.insertCompany", companyBean);
        companyMapper.insertCompany(companyBean);
    }

    @Override
    public void updateCompany(CompanyBean companyBean) {
        companyMapper.updateCompany(companyBean);
//        baseDao.update("com.bp.bean.CompanyBean.updateCompany", companyBean);
    }

    @Override
    public void deleteCompany(String companyId) {
        companyMapper.deleteCompany(companyId);
//        baseDao.delete("com.bp.bean.CompanyBean.deleteCompany",companyId);
    }

    @Override
    public int getCompanyNum() {
        return companyMapper.totalNum();
    }

    @Override
    public CompanyBean queryOneComapnyByName(String companyName) {
        return companyMapper.queryOneCompanyByName(companyName);
    }


}
