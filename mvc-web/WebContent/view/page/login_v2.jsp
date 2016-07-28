<%@ page isELIgnored="false"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="../../common/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>H+ 后台主题UI框架 - 登录</title>
 <link href="<%=basePath%>resource/css/bootstrap.min.css" rel="stylesheet">
 <link href="<%=basePath%>resource/css/animate.min.css" rel="stylesheet">
 <link href="<%=basePath%>resource/css/style.min.css" rel="stylesheet">
 <link href="<%=basePath%>resource/css/login.min.css" rel="stylesheet">
<META HTTP-EQUIV="pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<META HTTP-EQUIV="expires" CONTENT="0">
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
    <script>
        if(window.top!==window.self){window.top.location=window.location};
    </script>
 
</head>

<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-7">
                <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>[ H+ ]</h1>
                    </div>
                    <div class="m-b"></div>
                    <h4>欢迎使用 <strong>H+ 后台主题UI框架</strong></h4>
                    <ul class="m-b">
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势一</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势二</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势三</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势四</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势五</li>
                    </ul>
                    <strong>还没有账号？ |<a href="<%=basePath%>view/login/register.jsp" onclick="register()"> 立即注册</a></strong>
                </div>
            </div>
            <div class="col-sm-5">
                <form method="post" action="http://www.zi-han.net/theme/hplus/index.html">
                    <h4 class="no-margins">登录：</h4>
                    <p class="m-t-md">登录到H+后台主题UI框架</p>
                    <input type="text" id="username" name="username" class="form-control uname" placeholder="用户名" />
                    <input type="password" id="pass" name="pass" class="form-control pword m-b" placeholder="密码" />
                    <button onclick="cmdEncrypt()" class="btn btn-success btn-block">登录</button>
                    <p class="text-muted text-center">
					<a href="<%=basePath%>view/login/forget.jsp"><small>忘记密码了？</small></a> 
					
				</p>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; 2015 All Rights Reserved. H+
            </div>
        </div>
    </div>
</body>
<script>
	$(document).ready(function() {
		var WebRoot="<%=basePath%>";
	});
	   function cmdEncrypt() {
         var pass = $("#pass").val();
         var pwdRtn = $.md5(pass);
         $("#pass").val(pwdRtn);
         $("#signupForm").submit();
         
         return;
         
     };
	   
		function register() {
			var WebRoot="<%=basePath%>";
			window.location.href = WebRoot + "register";

		};
</script>
</html>
