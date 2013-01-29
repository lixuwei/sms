package com.bp.common;

import java.sql.Connection;
import java.util.Properties;

import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.RowBounds;

@Intercepts({ @Signature(type = StatementHandler.class, method = "prepare", args = { Connection.class }) })
public class PaginationInterceptor implements Interceptor {

    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        StatementHandler statementHandler = (StatementHandler) invocation.getTarget();
        BoundSql boundSql = statementHandler.getBoundSql();
        MetaObject metaObject = MetaObject.forObject(statementHandler);
        RowBounds rowBounds = (RowBounds) metaObject.getValue("delegate.rowBounds");
//        if (rowBounds == null || rowBounds == RowBounds.DEFAULT) {
//            return invocation.proceed();
//        }
        Configuration configuration = (Configuration) metaObject.getValue("delegate.configuration");
        Dialect.Type databaseType = null;
        databaseType = Dialect.Type.valueOf(configuration.getVariables().getProperty("dialect").toUpperCase());
        if (databaseType == null) {
            throw new RuntimeException("没有在配置文件中找到"+ configuration.getVariables().getProperty("dialect"));
        }
        Dialect dialect = null;
        switch (databaseType) {
        case ORACLE:
            dialect = new OracleDialect();
        }
        String originalSql = (String) metaObject.getValue("delegate.boundSql.sql");
        metaObject.setValue("delegate.boundSql.sql", dialect.getPageSql(originalSql, rowBounds.getOffset(), rowBounds.getLimit()));
        metaObject.setValue("delegate.rowBounds.offset",RowBounds.NO_ROW_OFFSET);
        metaObject.setValue("delegate.rowBounds.limit", RowBounds.NO_ROW_LIMIT);
        System.out.println("生成分业务sql="+boundSql.getSql());
        return invocation.proceed();
    }

    @Override
    public Object plugin(Object target) {
        return Plugin.wrap(target, this);
    }

    @Override
    public void setProperties(Properties arg0) {

    }

}
