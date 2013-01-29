<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加公司</title>
<script type="text/javascript" src="/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/resources/js/checkForm.js"></script>
</head>
<body>
	<form:form method="post" action="/addCompany.do" commandName="company" id="companyForm">
	<form:hidden path="companyId"/>
	公司名称：<form:input path="companyName"/>
		<input type="button" value="提交" onclick="checkCompanyName()" id="submitButton"/>
	</form:form>
	
	<script type="text/javascript">
		function checkCompanyName(){
			var companyName=$("#companyName").val();
			if(companyName.length==0){
				alert("公司名称不能为空");
				return false;
			}
			$.ajax({
				url:'/checkCompany.do?companyName='+companyName,
				type:'GET',
				dataType:'json',
				cache:false,
				async:false,
				success:function(data){
					if(data.ajaxState=="false"){
						alert("公司名称已存在");
						return false;
					}else{
						//防止重复提交
						preventRepeatSubmit("submitButton",15);
						$("#companyForm").submit();
					}
				},
				error:function(){
					alert("error");
				}
			});
		}
	</script>
</body>
</html>