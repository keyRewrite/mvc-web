<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/top.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>注册</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
</head>
<body class="gray-bg">

	<div class="middle-box text-center loginscreen   animated fadeInDown">
		<div>
			<div>

				<h1 class="logo-name">H+</h1>

			</div>
			<h3>欢迎注册 H+</h3>
			<p>创建一个H+新账户</p>
			<form class="m-t" role="form" action="login.html">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="请输入用户名"
						required="">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="请输入密码"
						required="">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="请再次输入密码"
						required="">
				</div>
				<div class="form-group text-left">
					<div class="checkbox i-checks">
						<label class="no-padding"> <input type="checkbox"><i></i>
							我同意注册协议
						</label>
					</div>
				</div>
				<button type="submit" class="btn btn-primary block full-width m-b">注
					册</button>

				<p class="text-muted text-center">
					<small>已经有账户了？</small><a href="javascript:void(0);"
						onclick="sigup()">点此登录</a>
				</p>

			</form>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});
		function sigup() {
			var WebRoot="<%=basePath%>";
			window.location.href = WebRoot + "login";
		}
	</script>

	<%@include file="../common/footer.jsp"%>
</body>
</html>