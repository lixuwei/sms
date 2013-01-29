<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>标派游戏后台管理系统</title>
</head>
<frameset rows="95,*" cols="*" frameborder="no" border="0" framespacing="1">
    <frame src="top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame"/>
    <frameset rows="*" cols="165,6,*" framespacing="1" frameborder="no" border="0" id="frameBody">
        <frame src="menu.jsp" name="menuFrame" scrolling="No" noresize="noresize" id="menuFrame" title="menuFrame"/>
        <frame src="switch.jsp" name="switchFrame" id="switchFrame" title="switchFrame"/>
        <frame src="right.jsp" name="mainFrame" id="mainFrame" title="mainFrame"/>
    </frameset>
</frameset>
<noframes>
    <body>
    </body>
</noframes>
</html>