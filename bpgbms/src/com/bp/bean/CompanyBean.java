package com.bp.bean;

import java.util.Date;

public class CompanyBean {

    private int companyId;
    private String companyName;
    private String companyState;
    private Date createTime;

    /**
     * @return the companyName
     */
    public String getCompanyName() {
        return companyName;
    }
    /**
     * @return the companyId
     */
    public int getCompanyId() {
        return companyId;
    }
    /**
     * @param companyId the companyId to set
     */
    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }
    /**
     * @param companyName the companyName to set
     */
    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
    /**
     * @return the companyState
     */
    public String getCompanyState() {
        return companyState;
    }
    /**
     * @param companyState the companyState to set
     */
    public void setCompanyState(String companyState) {
        this.companyState = companyState;
    }
    /**
     * @return the createTime
     */
    public Date getCreateTime() {
        return createTime;
    }
    /**
     * @param createTime the createTime to set
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    
}
