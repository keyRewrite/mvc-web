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
			<form class="m-t" role="form" action="">
			<!-- 公钥 -->
				<input type="hidden" name="strPublicKeyExponent"
					id="strPublicKeyExponent" value="${strPublicKeyExponent}">
				<input type="hidden" name="strPublicKeyModulus"
					id="strPublicKeyModulus" value="${strPublicKeyModulus}">
				<div class="form-group">
					<input type="text" id="user" name="user" class="form-control"
						placeholder="请输入用户名" required="">
				</div>
				<div class="form-group">
					<input type="password" id="pass" name="pass" class="form-control"
						placeholder="请输入密码" required="">
				</div>
				<div class="form-group">
					<input type="password" id="passagain" name="passagain"
						class="form-control" placeholder="请再次输入密码" required="">
				</div>
				<div class="form-group text-left">
					<div class="checkbox i-checks">
						<label class="no-padding"> <input type="checkbox"><i></i>
							我同意注册协议
						</label>
					</div>
				</div>
				<button type="button" onclick="goregister()"
					class="btn btn-primary block full-width m-b">注 册</button>

				<p class="text-muted text-center">
					<small>已经有账户了？</small><a href="login.jsp"
						onclick="sigup()">点此登录</a>
				</p>

			</form>
		</div>
	</div>

	<%@include file="../common/footer.jsp"%>
	<!-- 加密  -->
	<script src="<%=basePath%>resource/js/encrypt/RSA.js"></script>
	<script src="<%=basePath%>resource/js/encrypt/Barrett.js"></script>
	<script src="<%=basePath%>resource/js/encrypt/BigInt.js"></script>
	<script src="<%=basePath%>resource/js/encrypt/jQuery.md5.js"></script>
	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		 <%-- 
				var WebRoot="<%=basePath%>";
					$.ajax({
						type : "POST",
						dataType : "json",
						url : WebRoot + "encryot",
						data : {},
						success : function(data) {
							alert(data.strPublicKeyExponent); 
							alert(data.strPublicKeyModulus+""); 
							$("#strPublicKeyExponent").val(
									data.strPublicKeyExponent);
							$("#strPublicKeyModulus").val(
									data.strPublicKeyModulus + "");

						}

					}); --%>

				});

		function goregister() {
			//公钥加密
			/* var strPublicKeyExponent=$("#strPublicKeyExponent").val();
			var strPublicKeyModulus=$("#strPublicKeyModulus").val();
	        setMaxDigits(129); 
	        var key = new RSAKeyPair(strPublicKeyExponent,"",strPublicKeyModulus);*/
	        // var useMD5Twice = $.md5($.md5($("#username").val()));
	        //var pwdMD5Twice = $.md5($.md5($("#pass").val()));
	       // var pwdRtn = encryptedString(key, $("#pass").val());
	        var pwdRtn =$.md5($("#pass").val());
	        $("#pass").val(pwdRtn);
	        var user = $("#user").val();
			var pass = $("#pass").val();
			$.ajax({
				type : "POST",
				dataType : "json",
				url : WebRoot + "newregister",
				data : {
					"consumer" : user,
					"ptrsa" : pass
				},
				success : function(data) {

				}

			});
		};

		function sigup() {
			window.location.href = WebRoot + "login";
		}
	</script>
</body>
</html>