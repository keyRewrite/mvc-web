<%@ page isELIgnored="false"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="../common/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<META HTTP-EQUIV="pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<META HTTP-EQUIV="expires" CONTENT="0">
</head>
<body>

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
		url:WebRoot+"encryot",
		data:{},
		success:function(data){
  			//alert(data.strPublicKeyExponent); 
  			//alert(data.strPublicKeyModulus+""); 
  			$("#strPublicKeyExponent").val(data.strPublicKeyExponent);
  			$("#strPublicKeyModulus").val(data.strPublicKeyModulus+"");
  			
		}
	
	});
	});
	   function cmdEncrypt() {
		 var strPublicKeyExponent=$("#strPublicKeyExponent").val();
		 var strPublicKeyModulus=$("#strPublicKeyModulus").val();
         setMaxDigits(129);
         var key = new RSAKeyPair(strPublicKeyExponent,"",strPublicKeyModulus);
        // var useMD5Twice = $.md5($.md5($("#username").val()));
         var pwdMD5Twice = $.md5($.md5($("#pass").val()));
         var pwdRtn = encryptedString(key, pwdMD5Twice);
         $("#pass").val(pwdRtn);
        // $("#username").val(useMD5Twice);
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