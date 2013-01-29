<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
body{
	margin:0;
	padding:0;
	font-size:12px;
}
ul,li{
	margin:0;
	list-style:none;
	padding:0;
}
.tab{
	border:#b5d6e6 1px solid;
	border-radius:5px;
	margin:0 5px 0 3px;
	overflow:hidden;
	border-bottom:none;
}
.nav1{
	height:30px;
	background:url(../resources/images/tab_05.gif);
	line-height:30px;
	border-radius:5px;
}
.nav1 span{
	font-weight:bold;
}

.nav1 img{
	float:left;
	margin:7px 2px 0 5px;
}
.nav2{
	height:60px;
	line-height:30px;
	text-align:center;
	width:100%;
	white-space:nowrap;
}
.nav2 li{
	display:inline;
}
.nav2 span{
	margin-right:5px;
	font-weight:bold;
	color:#262626;
}
.nav2 .t1{
	margin-right:10px;
}
.nav2 input{
	height:15px;
}
.nav2 a{
	display:inline-block;
	width:40px;
	height:22px;
	background:#0FA5DD;
	color:#fff;
	font-weight:bold;
	border-radius:5px;
	cursor:pointer;
	line-height:22px;
	margin-left:140px;
	text-decoration:none;
}
.nav2 a:hover{
	background:#1378A8;
}
.table{
	margin:5px 5px 0 5px;
	border-radius:5px;
	overflow:hidden;
}
.table tr{
	height:22px;
}
.tr1{
	background:url(../resources/images/bg.gif) repeat;
	text-align:center;
}
.tr2{
	background:#FFF;
}
.tab_btm{
	height:30px;
	background:url(../resources/images/tab_19.gif);
	margin-top:5px;
}
.word{
	line-height:30px;
	padding-left:10px;
	float:left;
}
.btn{
	float:right;
	line-height:30px;
}
.btn span{
	cursor:pointer;
	padding-top:3px;
}
.go{
	margin-right:35px;
	margin-left:10px
}
.btn input{
	width:20px;
	margin:0 5px 0 10px;
}
</style>
</head>

<body>
<div class="tab">
  <div class="tab_nav">
    <div class="nav1">
    <img src="../resources/images/tb.gif" width="16" height="16"/><span>你当前的位置</span>：业务中心>>我的邮件
    </div>
    <ul class="nav2">
      <li><span>玩家ID</span><input class="t1" type="text" /></li>
      <li><span>玩家账号</span><input class="t1" type="text" /></li>
      <li><span>角色名称</span><input class="t1" type="text" /></li>
      <li><span>所在服务器</span><input class="t1" type="text" /></li><br/>
      <li><span>等级</span><input type="text" /> - <input class="t1" type="text" /></li>
      <li><span>UDID</span><input class="t1" type="text" /></li>
      <li><span>是否在线</span><input type="radio" />是<input type="radio" />否</li>
      <li><a href="#">确定</a></li>
    </ul>
  </div>
  <table class="table" width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6">
    <tr class="tr1">
    <td>玩家ID</td>
    <td>账号</td>
    <td>角色信息</td>
    <td>角色ID</td>
    <td>角色名称</td>     
    <td>所在服务器</td>
    <td>角色等级</td>
    <td>创建角色时间</td>
    <td>UDID</td>
    <td>创建账号时间</td>
    <td>最后登录时间</td>
    <td>是否在线</td>
    </tr>
    <tr class="tr2">
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    </tr>
    <tr class="tr2">
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    </tr>        
  </table>
  <div class="tab_btm">
   <div class="word">共有 120 条记录，当前第 1/10 页</div>
   <div class="btn">
    <span><img src="../resources/images/first.gif" /></span>
    <span><img src="../resources/images/back.gif" /></span>
    <span><img src="../resources/images/next.gif" /></span>
    <span><img src="../resources/images/last.gif" /></span>
    <input type="text" />页
    <span class="go"><img src="../resources/images/go.gif" /></span>
   </div>
  </div>
</div>
</body>
</html>
