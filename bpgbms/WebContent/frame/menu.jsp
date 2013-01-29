<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>left</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .STYLE1 {
            font-size: 12px;
            color: #FFFFFF;
        }

        .STYLE3 {
            font-size: 12px;
            color: #033d61;
            padding-left: 25px;
        }

        -->
    </style>
    <style type="text/css">
        .menu_title SPAN {
            FONT-WEIGHT: bold;
            LEFT: 3px;
            COLOR: #ffffff;
            POSITION: relative;
            TOP: 2px
        }

        .menu_title2 SPAN {
            FONT-WEIGHT: bold;
            LEFT: 3px;
            COLOR: #FFCC00;
            POSITION: relative;
            TOP: 2px
        }

    </style>
    <script>
        var he = document.body.clientHeight - 105
        document.write("<div id=tt style=height:" + he + ";overflow:hidden>")
    </script>
    <script>
        function showsubmenu(sid) {
            whichEl = eval("submenu" + sid);
            imgmenu = eval("imgmenu" + sid);
            if (whichEl.style.display == "none") {
                eval("submenu" + sid + ".style.display=\"\";");
                imgmenu.background = "../resources/images/main_47.gif";
            }
            else {
                eval("submenu" + sid + ".style.display=\"none\";");
                imgmenu.background = "../resources/images/main_48.gif";
            }
        }
    </script>
<body>
<div id="system" style="display: block;">

    system
</div>
<div id="common">
    <table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top">
            <td>
                <table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="23" background="../resources/images/main_47.gif" id="imgmenu1" class="menu_title"
                            onclick="showsubmenu(1)"
                            style="cursor:pointer">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="18%">&nbsp;</td>
                                    <td width="82%" class="STYLE1">用户注册</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td background="../resources/images/main_51.gif" id="submenu1">
                            <div class="sec_menu">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td height="20" style="cursor:pointer"
                                            onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#033d61'; "
                                            onmouseout="this.style.borderStyle='none'">
                                            <span class="STYLE3"><a href="/queryAllCompany.do" target="mainFrame">公司管理</a></span></td>
                                    </tr>
                                    <tr>
                                        <td height="20" style="cursor:pointer"
                                            onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#033d61'; "
                                            onmouseout="this.style.borderStyle='none'">
                                            <span class="STYLE3">所有注册用户</span></td>
                                    </tr>
                                    <tr>
                                        <td height="5"><img src="../resources/images/main_52.gif" width="151" height="5"/>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>

<div id="pay">
    <table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top">
            <td>
                <table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="23" background="../resources/images/main_47.gif" id="imgmenu2" class="menu_title"
                            onclick="showsubmenu(2)"
                            style="cursor:pointer">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="18%">&nbsp;</td>
                                    <td width="82%" class="STYLE1">系统管理</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td background="../resources/images/main_51.gif" id="submenu2">
                            <div class="sec_menu">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td height="20" style="cursor:pointer"
                                            onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#033d61'; "
                                            onmouseout="this.style.borderStyle='none'">
                                            <span class="STYLE3">网站维护</span></td>
                                    </tr>
                                    <tr>
                                        <td height="5"><img src="../resources/images/main_52.gif" width="151" height="5"/>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td height="23" background="../resources/images/main_47.gif" id="imgmenu3" class="menu_title"
                            onclick="showsubmenu(3)"
                            style="cursor:pointer">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="18%">&nbsp;</td>
                                    <td width="82%" class="STYLE1">安全管理</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td background="../resources/images/main_51.gif" id="submenu3" style="DISPLAY: none">
                            <div class="sec_menu">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td height="20" style="cursor:pointer"
                                            onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#033d61'; "
                                            onmouseout="this.style.borderStyle='none'">
                                            <span class="STYLE3">网站安全</span></td>
                                    </tr>
                                    <tr>
                                        <td height="5"><img src="../resources/images/main_52.gif" width="151" height="5"/>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>

</body>
</html>