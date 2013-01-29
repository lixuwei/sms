<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../resources/css/myTable.css" />
<script type="text/javascript" src="../resources/js/jquery-1.7.2.min.js"></script>
<title>Pagination</title>
</head>
<body>
    <div class="nav1">
    	<img src="../resources/images/tb.gif" width="16" height="16" class="leftNavImage"/><span>你当前的位置</span>：业务中心>>我的邮件
    	<span class="rightNavImage"><a href="/addCompany.do"><img src="/resources/images/22.gif" width="14" height="14" />增加</a></span>
    </div>
	<table class="table" border="0" cellpadding="0"
		cellspacing="1" style="background-color: #b5d6e6">
		<tr class="tr1">
			<td>ID</td>
			<td>公司名称</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${listCompany}" var="list">
			<tr class="tr2">
				<td>${list.companyId}</td>
				<td>${list.companyName}</td>
				<td><a href="/updateCompany.do?companyId=${list.companyId}"><img src="/resources/images/edt.gif" width="16" height="16"/>修改</a> <a href="/deleteCompany.do?companyId=${list.companyId}" onclick="return deleteConfirm();"><img src="/resources/images/del.gif" width="16" height="16"/>删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<div class="tab_btm">
		<div class="word">${pageModule}</div>
	</div>
	<script type="text/javascript">
		function deleteConfirm(){
			if(!confirm("确定删除吗")){
				return false;
			}
		}
	</script>
</body>
</html>
