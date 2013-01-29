package com.bp.common;

public interface Dialect {

    public static enum Type {
        MYSQL, ORACLE
    }

    public String getPageSql(String sql, int offset, int limit);
}
