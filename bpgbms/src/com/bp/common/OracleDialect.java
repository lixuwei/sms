package com.bp.common;

public class OracleDialect implements Dialect {

    @Override
    public String getPageSql(String sql, int offset, int limit) {
        sql = sql.trim();
        StringBuffer sb = new StringBuffer(sql.length() + 100);
        sb.append("select * from (select A.*,rownum rn from  (");
        sb.append(sql);
        sb.append(")A where rownum<=");
        sb.append(offset + limit);
        sb.append(")where rn>");
        sb.append(offset);
        return sb.toString();
    }

}
