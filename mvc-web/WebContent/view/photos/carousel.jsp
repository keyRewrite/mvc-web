<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 图片切换</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
	<%@include file="../../common/top.jsp" %>
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-5">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>无标题</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="carousel.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="carousel.html#">选项1</a>
                                </li>
                                <li><a href="carousel.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="carousel slide" id="carousel1">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big3.jpg">
                                </div>
                                <div class="item">
                                    <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big1.jpg">
                                </div>
                                <div class="item ">
                                    <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big2.jpg">
                                </div>

                            </div>
                            <a data-slide="prev" href="carousel.html#carousel1" class="left carousel-control">
                                <span class="icon-prev"></span>
                            </a>
                            <a data-slide="next" href="carousel.html#carousel1" class="right carousel-control">
                                <span class="icon-next"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>带标题</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="carousel.jsp">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="carousel.html#">选项1</a>
                                </li>
                                <li><a href="carousel.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content ">
                        <div class="carousel slide" id="carousel2">
                            <ol class="carousel-indicators">
                                <li data-slide-to="0" data-target="#carousel2" class="active"></li>
                                <li data-slide-to="1" data-target="#carousel2"></li>
                                <li data-slide-to="2" data-target="#carousel2" class=""></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big1.jpg">
                                    <div class="carousel-caption">
                                        <p>This is simple caption 1</p>
                                    </div>
                                </div>
                                <div class="item ">
                                    <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big3.jpg">
                                    <div class="carousel-caption">
                                        <p>This is simple caption 2</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big2.jpg">
                                    <div class="carousel-caption">
                                        <p>This is simple caption 3</p>
                                    </div>
                                </div>
                            </div>
                            <a data-slide="prev" href="carousel.jsp#carousel2" class="left carousel-control">
                                <span class="icon-prev"></span>
                            </a>
                            <a data-slide="next" href="carousel.jsp#carousel2" class="right carousel-control">
                                <span class="icon-next"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>多张切换</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="carousel.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="carousel.jsp#">选项1</a>
                                </li>
                                <li><a href="carousel.jsp#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="carousel slide" id="carousel3">
                            <div class="carousel-inner">
                                <div class="item gallery active left">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big1.jpg">
                                        </div>
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big2.jpg">
                                        </div>
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big3.jpg">
                                        </div>
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big1.jpg">
                                        </div>
                                    </div>
                                </div>
                                <div class="item gallery next left">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big3.jpg">
                                        </div>
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big1.jpg">
                                        </div>
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big2.jpg">
                                        </div>
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big1.jpg">
                                        </div>
                                    </div>
                                </div>
                                <div class="item gallery">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big2.jpg">
                                        </div>
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big3.jpg">
                                        </div>
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big1.jpg">
                                        </div>
                                        <div class="col-sm-6">
                                            <img alt="image" class="img-responsive" src="<%=basePath%>resource/img/p_big2.jpg">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a data-slide="prev" href="carousel.jsp#carousel3" class="left carousel-control">
                                <span class="icon-prev"></span>
                            </a>
                            <a data-slide="next" href="carousel.jsp#carousel3" class="right carousel-control">
                                <span class="icon-next"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <%@include file="../../common/footer.jsp" %>   
</body>

</html>

