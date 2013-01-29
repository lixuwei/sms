package com.bp.common;

import java.util.List;

public class Page {

    private int pageSize = 20;// 每页显示记录数

    private List<?> items;

    private int totalCount; // 总记录数

    private int totalPage;// 总页数

    private int currentPage;// 当前页
    
    public Page(int currentPage,int pageSize,int totalCount){
        this.currentPage=currentPage;
        this.pageSize=pageSize;
        this.totalCount=totalCount;
    }

    public int getTotalPage() {

        if (totalCount % this.pageSize == 0) {
            this.totalPage = totalCount / this.pageSize;
        } else {
            this.totalPage = totalCount / this.pageSize + 1;
        }
        return this.totalPage;
    }

    //开始
    public int getStart() {
        if (currentPage > getTotalPage())
            currentPage = 1;
        return (currentPage - 1) * pageSize;
    }
    //结尾
    public int getEnd(){
        return getStart()+pageSize;
    }
    
    //分页组件
    public String getPageModule() {
        StringBuilder sb = new StringBuilder();
        int pageCount = getTotalPage();// 总页数
        int a_total = 10; // 分页条中有多少个超链接
        sb.append("共" + totalCount + "条数据   页次" + currentPage + "/" + pageCount + "页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
        // 实际应用中修改上面第三个参数即可

        int a_padding = (int) Math.ceil(a_total / 2); // 中间的那个超链接距离边缘链接的间隔a的个数
                                                      // 例如：共11个分页 那么这个就是5

        if (pageCount - currentPage <= a_padding && currentPage > a_padding + 1) {
            a_padding = a_total - (pageCount - currentPage);
        }
        int start = currentPage - a_padding, end = start + a_total;

        if (currentPage - 1 > 0) {
            sb.append("<a href=?currentPage=1>首页</a>&nbsp;");
            sb.append("<a href=?currentPage=" + (currentPage - 1) + ">上一页</a>");
        }
        for (int i = start; i <= end; i++) {

            if (i <= 0) {
                end += Math.abs(i);
                i = 1;
            }
            if(i==currentPage){
                sb.append("<span style=\"color:red\">"+i+"</span>");
            }else{
                sb.append(" <a href=?currentPage=" + i + "> " + i + " </a> ");
            }

            if (i == pageCount) {
                break;
            }

        }
        if (currentPage - pageCount < 0) {
            sb.append("<a href=?currentPage=" + (currentPage + 1) + ">下一页</a>&nbsp;");
            sb.append("<a href=?currentPage=" + pageCount + ">尾页</a>");
        }

        return sb.toString();

    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public List<?> getItems() {
        return items;
    }

    public void setItems(List<?> items) {
        this.items = items;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

}
