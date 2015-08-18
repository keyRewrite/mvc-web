<%@ page isELIgnored="false"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@include file="../common/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<META HTTP-EQUIV="pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<META HTTP-EQUIV="expires" CONTENT="0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="gray-bg">


	<div class="middle-box text-center animated fadeInDown">
		<h1>404</h1>
		<h3 class="font-bold">页面未找到！</h3>

		<div class="error-desc">
			抱歉，页面好像去火星了~
			<form class="form-inline m-t" role="form">
				<div class="form-group">
					<input type="email" class="form-control"
						placeholder="请输入您需要查找的内容 …">
				</div>
				<button type="submit" class="btn btn-primary">搜索</button>
			</form>
		</div>
	</div>

	<!-- Mainly scripts -->
	<%@include file="../common/footer.jsp"%>
</body>
</html>