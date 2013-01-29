<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <style type="text/css">
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .STYLE3 {
            color: #033d61;
            font-size: 12px;
        }

        .navMenu {
            background: url("../resources/images/bg.gif");
            font-size: 16px;
            font-weight: bold;
        }
    </style>
    <script type="text/javascript">
        function changeMenu(obj) {
            var ids = ["common", "pay", "notice", "manager"];
            document.getElementById(obj).className = "navMenu";
            for (var i = 0; i < ids.length; i++) {
                if (ids[i] != obj) {
                    document.getElementById(ids[i]).className = "STYLE3";
                }
            }
            var menuFrame = top.menuFrame;
            menuFrame.document.getElementById("system").style.display = "none";
            menuFrame.document.getElementById("common").style.display = "none";
            menuFrame.document.getElementById("pay").style.display = "block";
        }
    </script>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="70" background="../resources/images/main_05.gif" style="color: #FFFFFF;"><img src="../resources/images/logo.png" width="100" height="70" style="margin-left:50px">
        <span style="position:absolute;top:10px;left:140px;font-family:'微软雅黑';font-size:18px;color:#000;">标牌后台统计系统</span>
        <span style="color:#062B48;position:absolute;top:40px;left:145px;font-size:14px">admin,欢迎您！</span>
        <span style="color:#262626;position:absolute;top:41px;left:258px;font-size:12px;cursor:pointer"><a href="/login.jsp" target="top">退出</a></span>
        <span style="color:#062B48;position:absolute;top:11px;right:210px;font-size:14px;color:#000;font-weight:bold;">现在时间:</span>
        <span style="color:#062B48;position:absolute;top:11px;right:75px;font-size:14px;color:#000;font-weight:bold;">2013.01.17 17:56</span>
        <select style="color:#062B48;position:absolute;top:35px;right:75px;font-size:14px;color:#000;width:130px;text-align:center;">
          <option>请选择游戏</option>
          <option></option>
        </select>
        </td>
    </tr>
    <tr>
        <td height="28" background="../resources/images/main_36.gif">
            <table width="25%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="177" height="28">&nbsp;</td>
                    <td>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="65" height="28">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td height="23" valign="bottom">
                                                <table width="58" border="0" align="center" cellpadding="0"
                                                       cellspacing="0">
                                                    <tr>
                                                        <td height="20" style="cursor:pointer"
                                                            onMouseOver="this.style.backgroundImage='url(../resources/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "
                                                            onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                            <div align="center" class="STYLE3"
                                                                 onClick="changeMenu(this.id);" id="common">常用
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="3"><img src="../resources/images/main_34.gif" width="3" height="28"></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="20" style="cursor:pointer"
                                                onMouseOver="this.style.backgroundImage='url(../resources/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "
                                                onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3" id="pay"
                                                     onclick="changeMenu(this.id)">充值
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="3"><img src="../resources/images/main_34.gif" width="3" height="28"></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="20" style="cursor:pointer"
                                                onMouseOver="this.style.backgroundImage='url(../resources/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "
                                                onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3" id="notice"
                                                     onclick="changeMenu(this.id)">通知
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="3"><img src="../resources/images/main_34.gif" width="3" height="28"></td>
                                <td width="63">
                                    <table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="20" style="cursor:pointer"
                                                onMouseOver="this.style.backgroundImage='url(../resources/images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "
                                                onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                                                <div align="center" class="STYLE3" id="manager"
                                                     onclick="changeMenu(this.id)">管理
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="3"><img src="../resources/images/main_34.gif" width="3" height="28"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
