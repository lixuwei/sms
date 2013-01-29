sms
===
1.使用框架为Spring MVC(3.1.3)、mybatis(3.1.1)、mybatis-spring(1.1.1)、Spring(3.1.3)
2.数据库为oracle，数据库连接池为dbcp，服务器为tomcat，操作系统window 7(32)

实现功能：
1.Spring MVC控制页面跳转，主要难点
     通过.do初始化一个页面
     实现ajax功能
     使用Spring MVC的拦截器实现一个简单的权限功能，复杂的权限也可以基于此拦截器（不再依靠Struts2拦截器）
2.mybatis使用方式是全新的一种方式，和之前的完全不同，
用这种方式是在实现分页功能时发现的，个人感觉此方式流程更清晰，sql语句更接近原生态
3.Spring管理数据源，数据库连接池通过dbcp，配置文件不再写到Spring配置文件，而是写到jdbc.properties中，便于察看
