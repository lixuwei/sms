<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style type="text/css">
        <!--
        body {
            margin:0;
            paliing:0;
            font-family:Verdana, Geneva, sans-serif, "宋体";
            font-size:12px;
            text-align:center;
            background:#1873AA;

        }

        -->
    </style>
    <style>

        .arrow{
            margin-top:350px;
            float:left;
            cursor:pointer;
        }

    </style>
    <script>
        function switchSysBar() {
            var frmBody = parent.document.getElementById('frameBody');
            var imgArrow = document.getElementById('arrowimg');
            if (frmBody.cols == "0,6,*"){
                frmBody.cols="165,6,*";
                imgArrow.src = "../resources/images/main_55.gif";
            }else{
                frmBody.cols="0,6,*";
                imgArrow.src = "../resources/images/main_55_1.gif";
            }

        }
    </script>
</head>
<body>
<div class="arrow"><img id="arrowimg" src="../resources/images/main_55.gif" width="6" height="85" border="0" title="显示/隐藏" onclick="switchSysBar();"/></div>

</body>
</html>