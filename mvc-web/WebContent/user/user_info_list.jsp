<%@ page isELIgnored="false"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    $.jgrid.defaults.styleUI="Bootstrap";
        $(document).ready(function(){
        	 $.ajax({
                 type: "POST",
                 url: "<%=basePath%>queryUserList",
                 data: "{}",
                 dataType: "json",
                 success: function(data){
                 mydata =  $.evalJSON( $.toJSON(data) ); 
                // mydata= [{"id":"2c8ae5e9562fa0d701562fa2d64a0000","age":null,"name":"ss","userName":"czq","pass":"670b14728ad9902aecba32e22fa4f6bd","nice_name":null},{id:"402881475620029d0156200335190000" ,age:"3",name:"",userName:"sola",pass:"38de91e3591c2f1b091178044a1fa077",nice_name:""}];
					//mydata=[{"id":"2c8ae5e9562fa0d701562fa2d64a0000","createDate":null,"modifyDate":null,"name":null,"age":null,"pass":"670b14728ad9902aecba32e22fa4f6bd","userName":"czq","nice_name":null},{"id":"402881475620029d0156200335190000","createDate":null,"modifyDate":null,"name":null,"age":null,"pass":"38de91e3591c2f1b091178044a1fa077","userName":"sola","nice_name":null}];
                 $("#table_list_1").jqGrid({data:mydata,datatype:"local",height:550,autowidth:true,shrinkToFit:true,rowNum:20,rowList:[10,20,30],
                	colNames:["序号" ,"创建时间","修改时间","姓名","年龄","密码","用户名","昵称"],
     				colModel:[
     				          {name:"id",index:"id",width:160},
     				          {name:"createDate",index:"createDate",width:60,hidden:true},
     				      	  {name:"modifyDate",index:"modifyDate",width:60,hidden:true},
     				       	  {name:"name",index:"name",width:100,editable:true,align:"left"},
     				          {name:"age",index:"age",width:60,editable:true},
     				          {name:"pass",index:"pass",width:180 ,align:"left"},
     				          {name:"userName",index:"userName",width:100,editable:true,align:"left"},
     				          {name:"nice_name",index:"nice_name",width:100,sortable:false}  
     				          ],
     				pager:"#pager_list_1",
     				viewrecords:true,
     				caption:"人员列表",
     				hidegrid:false
     				});
     			//操作
    			/* $("#table_list_1").jqGrid("navGrid","#pager_list_1",{edit:true,add:true,del:true,search:true},
    					{height:200,reloadAfterSubmit:true});
    			 */
     			
    		    //定义按键  
    		     $("#table_list_1").jqGrid("navGrid","#pager_list_1",{  
    		         refresh: true,  
    		         add: true,  
    		         del: true,
    		         edit:true,
    		         search:true
    		     }).navButtonAdd('#nav',{
    		     caption:"添加",
    		     buttonimg:"/js/jqGrid/themes/basic/images/row_add.gif",
    		     onClickButton: function(){addprm();},
    		     position:"next"}).navButtonAdd('#nav',{
    		         caption:"修改",
    		         buttonimg:"/js/jqGrid/themes/basic/images/row_edit.gif",
    		         onClickButton: function(){editprm();},
    		         position:"next"}).navButtonAdd('#nav',{
    		          caption:"删除",
    		          buttonimg:"/js/jqGrid/themes/basic/images/row_delete.gif",
    		          onClickButton: function(){delprm();},
    		          position:"next"});
    		    
    		function editprm(){
    		     var gr = jQuery("#table_list_1").getGridParam("selrow");
    		        if( gr != null ){
    		         window.location.href = "xxx.shtml?param.status=edit&param.topicId=" + gr;
    		        } else {
    		         info_dialog("修改","选择要修改的数据","确定");
    		        }
    		    }
    		    function delprm(){
    		       var gr = jQuery("#table_list_1").getGridParam("selrow");
    		       if( gr != null ){
    		        if(confirm("确认删除该条记录?")){
    		         window.location.href = "xxx.shtml?param.topicId=" + gr;
    		        }
    		       }else{
    		        info_dialog("删除","选择要删除的数据","确定");
    		       }
    		    }
    		    function addprm(){
    		       window.location.href='xxx.shtml?param.status=add';
    		    }
    		   
    		     var menu=[{'添加':function(menuItem,menu){addprm();}},
    		         {'修改':function(menuItem,menu){editprm();}},
    		         {'删除':function(menuItem,menu){delprm();}}
    		         ];
    		   $('#table_list_1').contextMenu(menu,{theme:'vista'});   
    		   
    		   
    			$(window).bind("resize",function(){
    				var width=$(".jqGrid_wrapper").width();
    				$("#table_list_1").setGridWidth(width);
    			})
    	
                 
                 },
            	 error: function(XMLHttpRequest, textStatus, errorThrown) {
            		 alert(XMLHttpRequest.status+","+XMLHttpRequest.readyState+","+textStatus);
            		   },
        	 });

        	 
		});		
    </script>
   
</body>

</html>

