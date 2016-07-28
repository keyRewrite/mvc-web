<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- Morris -->
<link href="<%=basePath%>resource/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
<!-- Gritter -->
<link href="<%=basePath%>resource/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

<link href="<%=basePath%>resource/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="<%=basePath%>resource/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
<link href="<%=basePath%>resource/css/animate.min.css" rel="stylesheet">
<link href="<%=basePath%>resource/css/style.min862f.css?v=4.1.0" rel="stylesheet">
<link href="<%=basePath%>resource/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="<%=basePath%>resource/css/plugins/steps/jquery.steps.css" rel="stylesheet">
<link rel="shortcut icon" href="<%=basePath%>resource/img/favicon.ico"> 

<link href="<%=basePath%>resource/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">

<!-- Data Tables -->
<link href="<%=basePath%>resource/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
  
<link href="<%=basePath%>resource/css/plugins/footable/footable.core.css" rel="stylesheet">
 <!-- jqgrid-->
<link href="<%=basePath%>resource/css/plugins/jqgrid/ui.jqgridffe4.css?0820" rel="stylesheet">
