<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>用户列表</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
	<%@include file="../../common/top.jsp" %>
    <style>
        #alertmod_table_list_2 {
            top: 900px !important;
        }
    </style>

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                    <div class="ibox-title">
                      <h4>人员管理</h4>
                    </div>
                    <div class="ibox-content">
                        <div class="jqGrid_wrapper">
                            <table id="table_list_1"></table>
                            <div id="pager_list_1"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

 	<%@include file="../../common/footer.jsp" %>
    <script>
    var mydata;
        $(document).ready(function(){
        	 $.ajax({
                 type: "POST",
                 url: "<%=basePath%>queryUserList",
                 data: {},
                 dataType: "json",
                 success: function(data){
                	// mydata= data.User;
                	 alert(233)
            	 }
        	 
        	 });
        	 
        	$.jgrid.defaults.styleUI="Bootstrap";
        	
        			$("#table_list_1").jqGrid({data:mydata,datatype:"local",height:550,autowidth:true,shrinkToFit:true,rowNum:20,rowList:[10,20,30],colNames:["序号","日期","姓名","性别","手机","住址","备注"],
        				colModel:[
        				          {name:"id",index:"id",width:60,sorttype:"int"},
        				          {name:"age",index:"age",width:90,sorttype:"date",formatter:"date"},
        				          {name:"name",index:"name",width:100},
        				          {name:"niceName",index:"niceName",width:80,align:"right",sorttype:"float",formatter:"number"},
        				          {name:"userName",index:"userName",width:80,align:"right",sorttype:"float"},
        				          {name:"total",index:"total",width:80,align:"right",sorttype:"float"},
        				          {name:"note",index:"note",width:150,sortable:false}
        				          ],
        				pager:"#pager_list_1",
        				viewrecords:true,
        				caption:"人员列表",
        				hidegrid:false
        				});
        			
        			//操作
        			$("#table_list_1").jqGrid("navGrid","#pager_list_1",{edit:true,add:true,del:true,search:true},
        					{height:200,reloadAfterSubmit:true});
        			
        			$(window).bind("resize",function(){
        				var width=$(".jqGrid_wrapper").width();
        				$("#table_list_1").setGridWidth(width);
        			})
        			});
    </script>
   
</body>

</html>

