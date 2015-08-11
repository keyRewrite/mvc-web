<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<title>My JSP 'hello.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<link href="<%=basePath%>resource/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
<link href="<%=basePath%>resource/font-awesome/css/font-awesome.css?v=4.3.0" rel="stylesheet">
<!-- Morris -->
<link href="<%=basePath%>resource/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
<!-- Gritter -->
<link href="<%=basePath%>resource/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
<link href="<%=basePath%>resource/css/animate.css" rel="stylesheet">
<link href="<%=basePath%>resource/css/style.css?v=2.2.0" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">

                        <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="<%=basePath%>resource/img/profile_small.jpg" />
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                                <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Beaut-zihan</strong>
                             </span> <span class="text-muted text-xs block">超级管理员 <b class="caret"></b></span> </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="form_avatar.html">修改头像</a>
                                </li>
                                <li><a href="profile.html">个人资料</a>
                                </li>
                                <li><a href="contacts.html">联系我们</a>
                                </li>
                                <li><a href="mailbox.html">信箱</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="view/login.html">安全退出</a>
                                </li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            H+
                        </div>

                    </li>
                    <li class="active">
                        <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">主页</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="index_1.html">主页示例一</a>
                            </li>
                            <li><a href="index_2.html">主页示例二</a>
                            </li>
                            <li><a href="index_3.html">主页示例三</a>
                            </li>
                            <li><a href="index_4.html">主页示例四</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="layouts.html"><i class="fa fa-columns"></i> <span class="nav-label">布局</span><span class="label label-danger pull-right">2.0</span></a>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa fa-globe"></i> <span class="nav-label">v2.0新增</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="toastr_notifications.html">Toastr通知</a>
                            </li>
                            <li><a href="nestable_list.html">嵌套列表</a>
                            </li>
                            <li><a href="timeline_v2.html">时间轴</a>
                            </li>
                            <li><a href="forum_main.html">论坛</a>
                            </li>
                            <li><a href="code_editor.html">代码编辑器</a>
                            </li>
                            <li><a href="modal_window.html">模态窗口</a>
                            </li>
                            <li><a href="validation.html">表单验证</a>
                            </li>
                            <li><a href="tree_view_v2.html">树形视图</a>
                            </li>
                            <li><a href="chat_view.html">聊天窗口</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">图表</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="graph_echarts.html">百度ECharts</a>
                            </li>
                            <li><a href="graph_flot.html">Flot</a>
                            </li>
                            <li><a href="graph_morris.html">Morris.js</a>
                            </li>
                            <li><a href="graph_rickshaw.html">Rickshaw</a>
                            </li>
                            <li><a href="graph_peity.html">Peity</a>
                            </li>
                            <li><a href="graph_sparkline.html">Sparkline</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="mailbox.html"><i class="fa fa-envelope"></i> <span class="nav-label">信箱 </span><span class="label label-warning pull-right">16</span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="mailbox.html">收件箱</a>
                            </li>
                            <li><a href="mail_detail.html">查看邮件</a>
                            </li>
                            <li><a href="mail_compose.html">写信</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="widgets.html"><i class="fa fa-flask"></i> <span class="nav-label">小工具</span></a>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa-edit"></i> <span class="nav-label">表单</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="form_basic.html">基本表单</a>
                            </li>
                            <li><a href="form_validate.html">表单验证</a>
                            </li>
                            <li><a href="form_advanced.html">高级插件</a>
                            </li>
                            <li><a href="form_wizard.html">步骤条</a>
                            </li>
                            <li><a href="form_webuploader.html">百度WebUploader</a>
                            </li>
                            <li><a href="form_file_upload.html">文件上传</a>
                            </li>
                            <li><a href="form_editors.html">富文本编辑器</a>
                            </li>
                            <li><a href="form_simditor.html">simditor</a>
                            </li>
                            <li><a href="form_avatar.html">头像裁剪上传</a>
                            </li>
                            <li><a href="layerdate.html">日期选择器layerDate</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa-desktop"></i> <span class="nav-label">页面</span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="contacts.html">联系人</a>
                            </li>
                            <li><a href="profile.html">个人资料</a>
                            </li>
                            <li><a href="projects.html">项目</a>
                            </li>
                            <li><a href="project_detail.html">项目详情</a>
                            </li>
                            <li><a href="file_manager.html">文件管理器</a>
                            </li>
                            <li><a href="calendar.html">日历</a>
                            </li>
                            <li><a href="faq.html">帮助中心</a>
                            </li>
                            <li><a href="timeline.html">时间轴</a>
                            </li>
                            <li><a href="pin_board.html">标签墙</a>
                            </li>
                            <li><a href="invoice.html">单据</a>
                            </li>
                            <li><a href="view/login.html">登录</a>
                            </li>
                            <li><a href="register.html">注册</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa-files-o"></i> <span class="nav-label">其他页面</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="search_results.html">搜索结果</a>
                            </li>
                            <li><a href="lockscreen.html">登录超时</a>
                            </li>
                            <li><a href="404.html">404页面</a>
                            </li>
                            <li><a href="500.html">500页面</a>
                            </li>
                            <li><a href="empty_page.html">空白页</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="index.html#"><i class="fa fa-flask"></i> <span class="nav-label">UI元素</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="typography.html">排版</a>
                            </li>
                            <li><a href="icons.html">字体图标</a>
                            </li>
                            <li><a href="iconfont.html">阿里巴巴矢量图标库</a>
                            </li>
                            <li><a href="draggable_panels.html">拖动面板</a>
                            </li>
                            <li><a href="buttons.html">按钮</a>
                            </li>
                            <li><a href="tabs_panels.html">选项卡 & 面板</a>
                            </li>
                            <li><a href="notifications.html">通知 & 提示</a>
                            </li>
                            <li><a href="badges_labels.html">徽章，标签，进度条</a>
                            </li>
                            <li><a href="layer.html">Web弹层组件layer</a>
                            </li>
                            <li><a href="tree_view.html">树形视图</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="grid_options.html"><i class="fa fa-laptop"></i> <span class="nav-label">栅格</span></a>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa-table"></i> <span class="nav-label">表格</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="table_basic.html">基本表格</a>
                            </li>
                            <li><a href="table_data_tables.html">数据表格(DataTables)</a>
                            </li>
                            <li><a href="table_jqgrid.html">jqGrid</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa-picture-o"></i> <span class="nav-label">图库</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="basic_gallery.html">基本图库</a>
                            </li>
                            <li><a href="carousel.html">图片切换</a>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa-sitemap"></i> <span class="nav-label">菜单 </span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="index.html#">三级菜单 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="index.html#">三级菜单 01</a>
                                    </li>
                                    <li>
                                        <a href="index.html#">三级菜单 01</a>
                                    </li>
                                    <li>
                                        <a href="index.html#">三级菜单 01</a>
                                    </li>

                                </ul>
                            </li>
                            <li><a href="index.html#">二级菜单</a>
                            </li>
                            <li>
                                <a href="index.html#">二级菜单</a>
                            </li>
                            <li>
                                <a href="index.html#">二级菜单</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="webim.html"><i class="fa fa-comments"></i> <span class="nav-label">即时通讯</span><span class="label label-danger pull-right">New</span></a>
                    </li>
                    <li>
                        <a href="css_animation.html"><i class="fa fa-magic"></i> <span class="nav-label">CSS动画</span></a>
                    </li>
                    <li>
                        <a href="index.html#"><i class="fa fa-cutlery"></i> <span class="nav-label">工具 </span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="form_builder.html">表单构建器</a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="index.html#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" method="post" action="search_results.html">
                            <div class="form-group">
                                <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search">
                            </div>
                        </form>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message"><a href="index.html" title="返回首页"><i class="fa fa-home"></i></a>欢迎使用H+后台主题</span>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="index.html#">
                                <i class="fa fa-envelope"></i> <span class="label label-warning">16</span>
                            </a>
                            <ul class="dropdown-menu dropdown-messages">
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="<%=basePath%>resource/img/a7.jpg">
                                        </a>
                                        <div class="media-body">
                                            <small class="pull-right">46小时前</small>
                                            <strong>小四</strong> 项目已处理完结
                                            <br>
                                            <small class="text-muted">3天前 2014.11.8</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="<%=basePath%>resource/img/a4.jpg">
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right text-navy">25小时前</small>
                                            <strong>国民岳父</strong> 这是一条测试信息
                                            <br>
                                            <small class="text-muted">昨天</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href="mailbox.html">
                                            <i class="fa fa-envelope"></i> <strong> 查看所有消息</strong>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="index.html#">
                                <i class="fa fa-bell"></i> <span class="label label-primary">8</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                                <li>
                                    <a href="mailbox.html">
                                        <div>
                                            <i class="fa fa-envelope fa-fw"></i> 您有16条未读消息
                                            <span class="pull-right text-muted small">4分钟前</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="profile.html">
                                        <div>
                                            <i class="fa fa-qq fa-fw"></i> 3条新回复
                                            <span class="pull-right text-muted small">12分钟钱</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href="notifications.html">
                                            <strong>查看所有 </strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="view/login.html">
                                <i class="fa fa-sign-out"></i> 退出
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
			
            <div class="row  border-bottom white-bg dashboard-header">
                <div class="col-sm-12">
                    <blockquote class="text-warning" style="font-size:14px">您是否需要自己做一款后台、会员中心等等的，但是又缺乏html等前端知识…
                        <br>您是否一直在苦苦寻找一款适合自己的后台主题…
                        <br>您是否想做一款自己的web应用程序…
                        <br>…………
                        <h4 class="text-danger">那么，现在H+来了</h4>
                    </blockquote>

                    <hr>
                </div>
                <div class="col-sm-3">
                    <h2>Hello,Guest</h2>
                    <small>移动设备访问请扫描以下二维码：</small>
                    <br>
                    <br>
                    <img src="<%=basePath%>resource/img/qr_code.png" width="100%" style="max-width:264px;">
                    <br>
                </div>
                <div class="col-sm-5">
                    <h2>
                            蓝搜网络www.lansou.net
                        </h2>
                    <p>H+是一个完全响应式，基于Bootstrap3.3.4最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术，她提供了诸多的强大的可以重新组合的UI组件，并集成了最新的jQuery版本(v2.1.1)，当然，也集成了很多功能强大，用途广泛的jQuery插件，她可以用于所有的Web应用程序，如<b>网站管理后台</b>，<b>网站会员中心</b>，<b>CMS</b>，<b>CRM</b>，<b>OA</b>等等，当然，您也可以对她进行深度定制，以做出更强系统。</p>
                    <p>
                        <b>当前版本：</b>v2.0
                    </p>
                    <p>
                        <b>定价：</b><span class="label label-warning">&yen;768（不开发票）</span>
                    </p>
                    <br>
                    <p>
                        <a class="btn btn-success btn-outline" href="http://wpa.qq.com/msgrd?v=3&uin=516477188&site=qq&menu=yes" target="_blank">
                            <i class="fa fa-qq"> </i> 联系我
                        </a>
                        <a class="btn btn-white btn-bitbucket" href="http://www.zi-han.net" target="_blank">
                            <i class="fa fa-home"></i> 访问博客
                        </a>
                    </p>
                </div>
                <div class="col-sm-4">
                    <h4>H+具有以下特点：</h4>
                    <ol>
                        <li>完全响应式布局（支持电脑、平板、手机等所有主流设备）</li>
                        <li>基于最新版本的Bootstrap 3.3.4</li>
                        <li>提供4套不同风格的皮肤</li>
                        <li>支持多种布局方式</li>
                        <li>使用最流行的的扁平化设计</li>
                        <li>提供了诸多的UI组件</li>
                        <li>集成多款国内优秀插件，诚意奉献</li>
                        <li>提供盒型、全宽、响应式视图模式</li>
                        <li>采用HTML5 & CSS3</li>
                        <li>拥有良好的代码结构</li>
                        <li>更多……</li>
                    </ol>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="wrapper wrapper-content">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>H+ 开发文档</h5>
                                    </div>
                                    <div class="ibox-content">
                                        <p>H+从v2.2.0版本以后，提供了开发文档，如下图所示：</p>
                                        <p>
                                            <img src="http://cdn.zi-han.net/theme/hplus/hplus-docs.png" width="100%">
                                        </p>
                                        <p>开发文档位于压缩包中的docs目录下。</p>
                                    </div>
                                </div>

                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>二次开发</h5>
                                    </div>
                                    <div class="ibox-content">
                                        <p>我们提供基于H+的二次开发服务，具体费用请联系作者。</p>
                                        <p>同时，我们也提供以下服务：</p>
                                        <ol>
                                            <li>基于WordPress的网站建设和主题定制</li>
                                            <li>PSD转WordPress主题</li>
                                            <li>PSD转XHTML</li>
                                            <li>Html页面（CSS+XHTML+jQuery）制作</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>购买说明</h5>
                                    </div>
                                    <div class="ibox-content">
                                        <p>如果需要购买H+主题，可直接付款到支付宝miaojianv1@sina.com，收款人：*玉恒。或者使用手机支付宝直接扫码支付：</p>
                                        <div class="alert alert-warning">
                                            付款完成后请及时联系作者，或在付款备注中留下邮箱或QQ，方便作者及时联系您。
                                        </div>
                                        <p>
                                            <img src="<%=basePath%>resource/img/alipay_qr_code.png" width="100%" style="max-width:369px">
                                        </p>

                                    </div>
                                </div>
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>联系信息</h5>

                                    </div>
                                    <div class="ibox-content">
                                        <p><i class="fa fa-send-o"></i> 网址：<a href="http://www.lansou.net" target="_blank">http://www.lansou.net</a>
                                        </p>
                                        <p><i class="fa fa-qq"></i> QQ：<a href="http://wpa.qq.com/msgrd?v=3&uin=406353658&site=qq&menu=yes" target="_blank">406353658</a>
                                        </p>
                                        <p><i class="fa fa-weixin"></i> 微信：<a href="javascript:;">rizhaoseo</a>
                                        </p>
                                        <p><i class="fa fa-credit-card"></i> 支付宝：<a href="javascript:;" class="支付宝信息">miaojianv1@sina.com / *玉恒</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>更新日志</h5>
                                    </div>
                                    <div class="ibox-content no-padding">

                                        <div class="panel-body">
                                            <div class="panel-group" id="version">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v22">v2.2</a><code class="pull-right">2015.05.01更新</code>
                                            </h5>
                                                    </div>
                                                    <div id="v22" class="panel-collapse collapse in">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>从现在起，Hplus有开发文档啦，解压后在docs目录下；
                                                                </li>
                                                                <li>根据用户的反馈，根据用户的反馈，移除了CDN支持，CDN服务将于2015年6月30日之后结束支持，如果您正在使用CDN服务，请尽快完成迁移，对于给您造成的不便，我们表示非常抱歉；
                                                                </li>
                                                                <li>升级Bootstrap到最新版本v3.4.0；
                                                                </li>
                                                                <li>修改了style.css，修复了其中的一些bug；；
                                                                </li>

                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v21">v2.1</a>
                                            </h5>
                                                    </div>
                                                    <div id="v21" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>增加cdn服务支持，cdn节点使用阿里云服务，可保证您的项目随时使用最新版本的H+，免去反复升级的麻烦；</a>
                                                                </li>
                                                                <li>修复一些问题；</li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v20">v2.0</a>
                                            </h5>
                                                    </div>
                                                    <div id="v20" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>增加RTL布局及RTL支持，可点击右上角齿轮按钮选择RTL模式查看；
                                                                </li>
                                                                <li>增加上下布局； <a href="index_4.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>在360浏览器6.0以上版本中强制以webkit内核解析，体验更佳；
                                                                </li>
                                                                <li>增加<a href="toastr_notifications.html">Toastr通知</a>、<a href="nestable_list.html">嵌套列表</a>、<a href="timeline_v2.html">时间轴</a>、<a href="forum_main.html">论坛</a>、<a href="code_editor.html">代码编辑器</a>、<a href="modal_window.html">模态窗口</a>、<a href="validation.html">表单验证</a>、<a href="tree_view_v2.html">树形视图</a>、<a href="chat_view.html">聊天窗口</a>等页面；
                                                                </li>
                                                                <li>升级<a href="icons.html">Font Awesome</a>，<a href="form_simditor.html">Simditor</a>等到最新版本；</a>
                                                                </li>
                                                                <li>优化部分内容
                                                                </li>

                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v18">v1.8</a>
                                            </h5>
                                                    </div>
                                                    <div id="v18" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>修复一些错误；
                                                                </li>
                                                                <li>修复了WebUploader中的一些问题； <a href="form_webuploader.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v17">v1.7</a>
                                            </h5>
                                                    </div>
                                                    <div id="v17" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>更新jquery版本到官方最新版v2.1.1；
                                                                </li>
                                                                <li>更新Bootstrap版本到官方最新版v3.3.0；
                                                                </li>
                                                                <li>增加jqGrid组件； <a href="table_jqgrid.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>修复Summernote编辑器中的一个严重错误； <a href="form_editors.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>修改了一些已知的bug，并修复了演示示例中的一些错误；
                                                                </li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v16">v1.6</a>
                                            </h5>
                                                    </div>
                                                    <div id="v16" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>优化资源文件路径，删除多余文件
                                                                </li>
                                                                <li>增加Markdown编辑器 <a href="form_markdown.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>增加拾色器ColorPicker <a href="form_advanced.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>优化部分页面代码
                                                                </li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v15">v1.5</a>
                                            </h4>
                                                    </div>
                                                    <div id="v15" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>增加了Bootstrap3表单构建器，表单设计更轻松； <a href="form_builder.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>修改了webim的高度；
                                                                </li>
                                                                <li>修复了因缺少jquery.min.map文件而导致页面加载进度条速度过慢的问题；
                                                                </li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title"><a data-toggle="collapse" data-parent="#version" href="index.html#v14">v1.4</a>
                                            </h4>
                                                    </div>
                                                    <div id="v14" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>修复了百度ECharts图表显示不正确的问题； <a href="graph_echarts.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>新增表单验证示例，使用jQuery Validate插件实现； <a href="form_validate.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>新增树形视图示例； <a href="tree_view.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>修复弹框遮罩的Bug；
                                                                </li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v13">v1.3</a>
                                            </h4>
                                                    </div>
                                                    <div id="v13" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>加入阿里巴巴团队的字体图标库，字体图标可以自定义啦； <a href="iconfont.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>新增头像裁剪上传组件FullAvatareditor； <a href="form_avatar.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>集成网页弹层插件layer； <a href="layer.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>集成日期选择器layerDate； <a href="layerdate.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li class="text-danger"><b>增加web即时通讯功能，可以在系统内在线聊天了；</b> <a href="webim.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>增加主题预览功能，点击右上侧齿轮图标预览；</li>
                                                                <li>增加左侧边栏固定功能；</li>
                                                                <li>修复了多处问题。</li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v12">v1.2</a>
                                            </h4>
                                                    </div>
                                                    <div id="v12" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>新增百度WebUploader拖动上传文件组件；<a href="form_webuploader.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>新增国产优秀富文本编辑器插件Simditor；<a href="form_simditor.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>新增百度ECharts统计图表插件；<a href="form_simditor.html" title="去看看"><i class="fa fa-eye"></i></a>
                                                                </li>
                                                                <li>修复了几处问题。</li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="index.html#v11">v1.1</a>
                                            </h4>
                                                    </div>
                                                    <div id="v11" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <ol>
                                                                <li>修复了几处问题。</li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>
                <div class="footer">
                    <div class="pull-right">
                        By：<a href="http://www.zi-han.net" target="_blank">zihan's blog</a>
                    </div>
                    <div>
                        <strong>Copyright</strong> H+ &copy; 2014
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="<%=basePath%>resource/js/jquery-2.1.1.min.js"></script>
    <script src="<%=basePath%>resource/js/bootstrap.min.js?v=3.4.0"></script>
    <script src="<%=basePath%>resource/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=basePath%>resource/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=basePath%>resource/js/hplus.js?v=2.2.0"></script>
    <script src="<%=basePath%>resource/js/plugins/pace/pace.min.js"></script>
	<script src="<%=basePath%>resource/js/plugins/layer/layer.min.js"></script>
	<script src="<%=basePath%>resource/js/plugins/layer/layer.min.js"></script>
	
    <!--统计代码，可删除-->
</body>
</html>