<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>企业信息管理系统_用户登录</title>
<script type="text/javascript" src="resources/js/jquery-1.7.2.min.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #016aa9;
	overflow: hidden;
}

.STYLE1 {
	color: #000000;
	font-size: 12px;
}
-->
</style>
<script type="text/javascript">
	function login() {
		var userName = $("#userName").val();
		var password = $("#password").val();
		if (userName.length == 0) {
			alert("用户不能为空");
			return false;
		}
		if (password.length == 0) {
			alert("密码不能为空");
			return false;
		}
		$.ajax({
			url : '/login.do?userName=' + userName + "&password=" + password,
			type : 'GET',
			dataType : 'json',
			cache : false,
			async : false,
			success : function(data) {
				if (data.type == "true") {
					window.location.href = "frame/main.jsp";
				} else {
					alert("输入帐号不正确");
				}
			},
			error : function() {
				alert("error");
			}
		});
	}
</script>
</head>

<body>
	<form>
		<table width="100%" height="100%" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td><table width="962" border="0" align="center"
						cellpadding="0" cellspacing="0">
						<tr>
							<td height="235" background="resources/images/login_03.gif">&nbsp;</td>
						</tr>
						<tr>
							<td height="53"><table width="100%" border="0"
									cellspacing="0" cellpadding="0">
									<tr>
										<td width="394" height="53"
											background="resources/images/login_05.gif">&nbsp;</td>
										<td width="206" background="resources/images/login_06.gif"><table
												width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="16%" height="25"><div align="right">
															<span class="STYLE1">用户</span>
														</div></td>
													<td width="57%" height="25"><div align="center">
															<input type="text" name="userName" id="userName"
																style="width: 105px; height: 17px; background-color: #292929; border: solid 1px #7dbad7; font-size: 12px; color: #6cd0ff">
														</div></td>
													<td width="27%" height="25">&nbsp;</td>
												</tr>
												<tr>
													<td height="25"><div align="right">
															<span class="STYLE1">密码</span>
														</div></td>
													<td height="25"><div align="center">
															<input type="password" name="password" id="password"
																style="width: 105px; height: 17px; background-color: #292929; border: solid 1px #7dbad7; font-size: 12px; color: #6cd0ff">
														</div></td>
													<td height="25"><div align="left">
															<a href="#" onclick="return login();"><img
																src="resources/images/dl.gif" width="49" height="18"
																border="0"></a>
														</div></td>
												</tr>
											</table></td>
										<td width="362" background="resources/images/login_07.gif">&nbsp;</td>
									</tr>
								</table></td>
						</tr>
						<tr>
							<td height="213" background="resources/images/login_08.gif">&nbsp;</td>
						</tr>
					</table></td>
			</tr>
		</table>
	</form>
</body>
</html>
