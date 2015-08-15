<%@ page isELIgnored="false" %> 
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../common/top.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Login</title>
<META HTTP-EQUIV="pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<META HTTP-EQUIV="expires" CONTENT="0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="gray-bg">

	<div class="middle-box text-center loginscreen  animated fadeInDown">
		<div>
			<div>

				<h1 class="logo-name">H+</h1>

			</div>
			<h3>欢迎使用 H+</h3>

			<form class="form-horizontal m-t" method="POST" role="form"
				action="sigin" id="signupForm">
				<div class="form-group">
					<input type="hidden" name="strPublicKeyExponent" id="strPublicKeyExponent"
						value="${strPublicKeyExponent}"> <input type="hidden"
						name="strPublicKeyModulus" id="strPublicKeyModulus" value="${strPublicKeyModulus}">
					<input type="text" id="username" name="username"
						class="form-control" placeholder="用户名" required="">
				</div>
				<div class="form-group">
					<input type="password" id="pass" name="pass" class="form-control"
						placeholder="密码" required=""
						oninput="check(this,'密码不符合,请输入6-15位密码!')"
						pattern="^[a-zA-Z]\w{5,17}$">
				</div>
				<button type="button" onclick="cmdEncrypt()"
					class="btn btn-primary block full-width m-b">登 录</button>


				<p class="text-muted text-center">
					<a href="login.html#"><small>忘记密码了？</small></a> |<a
						href="javascript:void(0);" onclick="register()"> 注册一个新账号</a>
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
		var WebRoot="<%=basePath%>";
		$.ajax({
		type:"POST",
		dataType:"json",
		url:WebRoot+"/encryot",
		data:{},
		async:false, 
		success:function(data){
  			alert("strPublicKeyExponent"+data.strPublicKeyExponent);
			alert("strPublicKeyModulus"+data.strPublicKeyModulus);  
		}
	
	});
	});
	   function cmdEncrypt() {
		 var strPublicKeyExponent='<%=request.getAttribute("strPublicKeyExponent") %>';
		 var strPublicKeyModulus='<%=request.getAttribute("strPublicKeyModulus") %>';
         setMaxDigits(129);
         alert(strPublicKeyExponent);
         var key = new RSAKeyPair(strPublicKeyExponent,"",strPublicKeyModulus);
         var useMD5Twice = $.md5($.md5($("#username").val()));
         var pwdMD5Twice = $.md5($.md5($("#pass").val()));
         var pwdRtn = encryptedString(key, pwdMD5Twice);
         $("#pass").attr("value", pwdRtn);
         $("#username").attr("value", useMD5Twice);
         $("#signupForm").submit();
         return;
         
     };
	   
		function register() {
			var WebRoot="<%=basePath%>";
			window.location.href = WebRoot + "register";

		};
		function check(i, tip) {
			if (i.validity.patternMismatch === true) {
				i.setCustomValidity(tip);
			} else {
				i.setCustomValidity("");
			}
		}
		/* 	validator.setDefaults({
				highlight : function(element) {
					$(element).closest('.form-group').removeClass('has-success')
							.addClass('has-error');
				},
				success : function(element) {
					element.closest('.form-group').removeClass('has-error')
							.addClass('has-success');
				},
				errorElement : "span",
				errorClass : "help-block m-b-none",
				validClass : "help-block m-b-none"
			});

			$().ready(function() {
				 $("#signupForm").validate({
		                rules: {
		                    username: "required",
		                    pass: {
		                        required: true,
		                        minlength: 6
		                    } 
		                },
		                messages: {
		                    username: "请输入你的姓",
		                    lastname: "请输入您的名字",
		                    pass: {
		                        required: "请输入您的用户名",
		                        minlength: "密码必须6位以上"
		                    } 
		                }
		            });
			}); */
	</script>
</body>
</html>