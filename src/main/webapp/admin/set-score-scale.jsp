<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
   pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>评分比例设置</title>
  <meta name="description" content="这是一个form页面">
  <meta name="keywords" content="form">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${APP_PATH }/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="${APP_PATH }/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${APP_PATH }/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${APP_PATH }/css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>Amaze</strong> <small>后台管理模板</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
<!-- sidebar start -->
		<div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="${APP_PATH }/admin/index.jsp"><i class="am-icon-home am-margin-left-sm"></i> 首页</a></li>
      <li><a href="${APP_PATH }/admin/adminmessage.jsp"><i class="am-icon-check am-margin-left-sm"></i> 个人资料</a></li>
      <li><a href="${APP_PATH }/admin/user-manage.jsp"><i class="am-icon-user am-margin-left-sm"></i> 用户管理</a></li>
      <li><a href="${APP_PATH }/admin/cadre-info.jsp"><i class="am-icon-archive am-margin-left-sm"></i> 处级干部信息</a></li>
      <li><a href="${APP_PATH }/quantify/groupUser.do"><i class="am-icon-bookmark  am-margin-left-sm"></i> 单位分组设置</a></li>
      <li class="am-panel">
	    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#leader-nav'}">
	        <i class="am-icon-paint-brush am-margin-left-sm"></i> 校领导打分 <i class="am-icon-angle-right am-fr am-margin-right"></i>
	    </a>
	    <ul class="am-list am-collapse admin-sidebar-sub" id="leader-nav">
	        <li><a href="${APP_PATH }/admin/leader-grade-cadre.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 正职评分 </a></li>
	        <li><a href="${APP_PATH }/admin/leader-grade-department.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 领导班子评分 </a></li>
	    </ul>
	  </li>
	  <li class="am-panel">
	    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#dx-set-nav'}">
	        <i class="am-icon-area-chart am-margin-left-sm"></i> 定量设置 <i class="am-icon-angle-right am-fr am-margin-right"></i>
	    </a>
	    <ul class="am-list am-collapse admin-sidebar-sub" id="dx-set-nav">
	        <li><a href="${APP_PATH }/quantify/quantifyInit.do"><i class="am-icon-location-arrow am-margin-left-sm"></i>定量初始化设置</a></li>
	        <li><a href="${APP_PATH }/quantify/quantifyIndex.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 评分比例设置</a></li>
      		<li><a href="${APP_PATH }/quantify/quantifyUpdate.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 评分更新设置</a></li>
      		<li><a href="${APP_PATH }/quantify/teacherUnitProportion.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 教学科研单位评分比例设置</a></li>
      		<li><a href="${APP_PATH }/quantify/managerUnitProportion.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 管理服务单位评分比例设置</a></li>
	    </ul>
	  </li>
	  <li class="am-panel">
	    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#dx-grade-nav'}">
	        <i class="am-icon-bars am-margin-left-sm"></i> 定量统计<i class="am-icon-angle-right am-fr am-margin-right"></i>
	    </a>
	    <ul class="am-list am-collapse admin-sidebar-sub" id="dx-grade-nav">
	        <li><a href="${APP_PATH }/quantify/teacherUintGrade.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 教学科研单位评分</a></li>
	        <li><a href="${APP_PATH }/quantify/managerUintGrade.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 管理服务单位评分</a></li>      
	        <li><a href="${APP_PATH }/quantify/teacherUnit.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 教学科研单位信息</a></li>
	        <li><a href="${APP_PATH }/quantify/managerUnit.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 管理服务单位信息</a></li>
	    </ul>
	  </li>
	  <li class="am-panel">
	    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#yearall-nav'}">
	        <i class="am-icon-users am-margin-left-sm"></i> 年度评分汇总统计 <i class="am-icon-angle-right am-fr am-margin-right"></i>
	    </a>
	    <ul class="am-list am-collapse admin-sidebar-sub" id="yearall-nav">
	        <li><a href="${APP_PATH }/admin/teach-unit-score-statistics.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 教学单位年度评分 </a></li>
	        <li><a href="${APP_PATH }/admin/manage-unit-score-statistics.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 管理单位年度评分 </a></li>
	        <li><a href="${APP_PATH }/admin/chief-score-statistics.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 正职年度评分 </a></li>
	        <li><a href="${APP_PATH }/admin/subchief-score-statistics.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 副职年度评分</a></li>
	    </ul>
	  </li>      
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>单位民主测评必须于2018-12-22之前完成，请相关人员督促到位。—— 组织部</p>
      </div>
    </div>

    <!--<div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> jxau</p>
        <p>Welcome to the JXAU!</p>
      </div>
    </div>-->
  </div>
<!-- sidebar end -->

<!-- content start -->
<div class="admin-content">

  <!--<div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small></div>
  </div>-->

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class="am-active"><a href="#tab1">教学科研单位</a></li>
      <li><a href="#tab2">管理服务单位</a></li>
       <li><a href="#tab3">单位添加</a></li>
      <li><a href="#tab4">教学科研评分选项添加</a></li>
      <li><a href="#tab5">管理服务评分选项添加</a></li>
       <li><a href="#tab6">教学科研评分选项修改</a></li>
      <li><a href="#tab7">管理服务评分选项修改</a></li>
      <li><a href="#tab8">评分选项</a></li>
      <li><a href="#tab9">评分选项添加</a></li>
    </ul>

    <div class="am-tabs-bd">
    	<!--教学科研start-->
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
				<div class="am-g am-margin-top">
				<div class="am-u-sm-12">
				<form class="am-form">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>序号</th><th>单位</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <c:forEach items="${teacherDepartments}" var="teacherDepartment">
		          	  <tr>
		          	    <td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="departmentId" value="${teacherDepartment.departmentId}" readonly="true"></td>
			          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="departmentName" value="${teacherDepartment.departmentName}"></td>
			          	<td>
			          		<select name="gradingUnitId" style="width: 100%">
			          			<option value="1">教学科研</option>
			          			<option value="2">管理服务</option>
			          		</select>
			          	</td>
			            <td>
			                <button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="UpdateDepartment(this)">修改</button>
							<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="DeleteDepartment(this)">删除</button>
			            </td>
			          </tr>	
		          	</c:forEach>	
			          
		          </tbody>
		        </table>
		         </form>
		      </div>
				</div>
         </div>
<!--      教学科研end-->
<!--    管理服务start-->
      <div class="am-tab-panel am-fade" id="tab2">                         
          <div class="am-u-sm-12">
            <div class="am-g am-margin-top">
              <form class="am-form">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>序号</th><th>单位</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
		          	<c:forEach items="${manageDepartments}" var="manageDepartment">
		          	  <tr>
			          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="departmentId" value="${manageDepartment.departmentId}" readonly="true"></td>
				        <td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="departmentName" value="${manageDepartment.departmentName}"></td>
			           <td>
			          		<select name="gradingUnitId" style="width: 100%">
			          			<option value="2">服务管理</option>
			          			<option value="1">教学科研</option>
			          		</select>
			          	</td>
			            <td>
			            	<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="UpdateDepartment(this)">修改</button>
							<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="DeleteDepartment(this)">删除</button>
			            </td>
			          </tr>	
		          	</c:forEach>		        		          
		          </tbody>
		        </table>
		       </form>
		     </div>
          </div> 
      </div>
       <!--   单位添加 start-->
      <div class="am-tab-panel am-fade" id="tab3">                         
          <div class="am-u-sm-12">
            	<div class="am-g am-margin-top">
                <form class="am-form" action="${APP_PATH }/quantify/addDepartment.do" method="post">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>单位选项名</th>
		          </tr>
		          </thead>
		          <tbody>
			          <tr>
			          	<td><input type="text" style="width:90%;border:none;"placeholder="请输入增加单位名" name="departmentName"></td>        
			          </tr>
			          <tr>
			          	<td>
			          		<select name="gradingUnitId">
			          			<option selected="selected" value="1">==请选择单位==</option>
			          			<option value="1">教学科研</option>
			          			<option value="2">服务管理</option>
			          		</select>
			          	</td>  
			          </tr>	
			          <tr>
			          	<td>
							<button type="submit" class="am-btn am-btn-primary am-btn-xs">添加</button>
			            </td>	
			          </tr>	          
		          </tbody>
		        </table>
		       </form>
		      </div>
          </div>  
      </div>
<!--   教学评分选项start-->
      <div class="am-tab-panel am-fade" id="tab4">                         
          <div class="am-u-sm-12">
           <div class="am-g am-margin-top">
              <form class="am-form" action="${APP_PATH }/quantify/addOneOption.do" method="post">
              	<input type="hidden" value="1" name="addUnitId">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>教学评分选项添加</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <tr>
			          	<td>
				          	<select name="optionId">
				          		<c:forEach items="${teacherOptions}" var="teacherOption">
				          			<option value="${teacherOption.id }">${teacherOption.optionName }</option>
				          		</c:forEach>
				          	</select>
			          	</td>
			            <td>
							<button type="submit" class="am-btn am-btn-primary am-btn-xs">添加</button>
			            </td>
			          </tr>		          
		          </tbody>
		        </table>
		       </form>
		      </div>
          </div>  
      </div>
      <!--   管理服务评分选项添加 start-->
      <div class="am-tab-panel am-fade" id="tab5">                         
          <div class="am-u-sm-12">
            <div class="am-g am-margin-top">
              <form class="am-form" action="${APP_PATH }/quantify/addOneOption.do" method="post">
               <input type="hidden" value="2" name="addUnitId">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>管理服务评分选项名</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <tr>
			          	<td><!-- <input type="text" style="width:90%;border:none;"placeholder="请输入增加管理服务评分选项名" name="user9"> -->
			          		<select id="manageOption" name="optionId"> 
			          			<c:forEach items="${manageOptions}" var="manageOption">
			          				<option value="${manageOption.id }">${manageOption.optionName}</option>
			          			</c:forEach>
			          		</select>
			          	</td>
			            <td>
							<button type="submit" class="am-btn am-btn-primary am-btn-xs">添加</button>
			            </td>
			          </tr>		          
		          </tbody>
		        </table>
		       </form>
		      </div>
          </div>  
      </div>
      
      
      
       <!--   评分选项start-->
      <div class="am-tab-panel am-fade" id="tab6">                         
          <div class="am-u-sm-12">
            <div class="am-g am-margin-top">
              <form class="am-form">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>序号</th><th>评分选项名</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <c:forEach items="${teacherOptionr }" var="option">
			          	 <tr>
				          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="id" value="${option.id}" readonly="true"></td>
				          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="optionName" value="${option.optionName}"></td>
				            <td>
								<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="deleteTOption(this)">删除</button>
				            </td>
				          </tr>
			          </c:forEach>
		          </tbody>
		        </table>
		     </form>
		      </div>
          </div>  
      </div>
      
      <!--   评分选项start-->
      <div class="am-tab-panel am-fade" id="tab7">                         
          <div class="am-u-sm-12">
            <div class="am-g am-margin-top">
              <form class="am-form">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>序号</th><th>评分选项名</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <c:forEach items="${manageOptionr }" var="option">
			          	 <tr>
				          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="id" value="${option.id}" readonly="true"></td>
				          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="optionName" value="${option.optionName}"></td>
				            <td>
								<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="deleteMOption(this)">删除</button>
				            </td>
				          </tr>
			          </c:forEach>
		          </tbody>
		        </table>
		     </form>
		      </div>
          </div>  
      </div>
      
      
      
      <!--   评分选项start-->
      <div class="am-tab-panel am-fade" id="tab8">                         
          <div class="am-u-sm-12">
            <div class="am-g am-margin-top">
              <form class="am-form">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>序号</th><th>评分选项名</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <c:forEach items="${options }" var="option">
			          	 <tr>
				          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="id" value="${option.id}" readonly="true"></td>
				          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="optionName" value="${option.optionName}"></td>
				            <td>
				            	<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="updateOption(this)">修改</button>
								<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick="deleteOption(this)">删除</button>
				            </td>
				          </tr>
			          </c:forEach>
		          </tbody>
		        </table>
		     </form>
		      </div>
          </div>  
      </div>
      
       <!--   评分选项添加 start-->
      <div class="am-tab-panel am-fade" id="tab9">                         
          <div class="am-u-sm-12">
            	<div class="am-g am-margin-top">
                <form class="am-form" action="${APP_PATH }/quantify/addoption.do" method="post">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>评分选项名</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <tr>
			          	<td><input type="text" style="width:90%;border:none;"placeholder="请输入增加选项名" name="optionName"></td>
			            <td>
							<button type="submit" class="am-btn am-btn-primary am-btn-xs">添加</button>
			            </td>
			          </tr>		          
		          </tbody>
		        </table>
		       </form>
		      </div>
          </div>  
      </div>
      
    </div>
  </div>

  <!--<div class="am-margin">
    <button type="button" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
    <button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
  </div>-->
</div>
<!-- content end -->

</div>


<footer>
  <hr>
  <p class="am-padding-left">© 2018 江西农业大学.蓝点工作室</p>
</footer>
<script type="text/javascript">
	function deleteOption(object){
		var tr1 = object.parentNode.parentNode;
		tr1.style.display="none";
		$.ajax({
			url : "${APP_PATH }/quantify/deleteOption.do",
    		Type : "post",
    		data :{
    			id :tr1.cells[0].childNodes[0].value
    		},
    		dataType :"json",
    		success :function(result){
    			alert("删除成功");
    		},error : function(){
    			alert("删除成功");
    		}
		})
	}
	function deleteTOption(object){
		var tr1 = object.parentNode.parentNode;
		tr1.style.display="none";
		$.ajax({
			url : "${APP_PATH }/quantify/deleteOptionKind.do",
    		Type : "post",
    		data :{
    			id :tr1.cells[0].childNodes[0].value,
    			type : 1
    		},
    		dataType :"json",
    		success :function(result){
    			alert("删除成功");
    		},error : function(){
    			alert("删除成功");
    		}
		})
	}
	function deleteMOption(object){
		var tr1 = object.parentNode.parentNode;
		tr1.style.display="none";
		$.ajax({
			url : "${APP_PATH }/quantify/deleteOptionKind.do",
    		Type : "post",
    		data :{
    			id :tr1.cells[0].childNodes[0].value,
    			type : 2
    		},
    		dataType :"json",
    		success :function(result){
    			alert("删除成功");
    		},error : function(){
    			alert("删除成功");
    		}
		})
	}
    function DeleteDepartment(object){
    	var tr1 = object.parentNode.parentNode;
    	tr1.style.display="none";
    	$.ajax({
    		url : "${APP_PATH }/quantify/deleteDepartment.do",
    		Type : "post",
    		data :{
    			departmentId :tr1.cells[0].childNodes[0].value
    		},
    		dataType :"json",
    		success :function(result){
    			alert("删除成功");
    		},error : function(){
    			alert("删除成功");
    		}
    	})
    }
    function updateOption(object){
    	var tr1 = object.parentNode.parentNode;
    	$.ajax({
    		url : "${APP_PATH }/quantify/updateOption.do",
    		type : "post",
    		data :{
				id :tr1.cells[0].childNodes[0].value,
				optionName : tr1.cells[1].childNodes[0].value,
			},
			dataType : "json",
			success : function(result){
				alert("更新成功");
			},error : function (){
				alert("更新成功");
			}
    	});
    }
	function UpdateDepartment(object){
		var tr1 = object.parentNode.parentNode;
		/* alert(tr1.cells[0].childNodes[0].value);
		alert(tr1.cells[1].childNodes[0].value);
		alert(tr1.cells[2].getElementsByTagName("select")[0].value); */
	 	$.ajax({
			url : "${APP_PATH }/quantify/updateDepartment.do",
			type : "post",
			data :{
				departmentId :tr1.cells[0].childNodes[0].value,
				departmentName : tr1.cells[1].childNodes[0].value,
				gradingUnitId : tr1.cells[2].getElementsByTagName("select")[0].value
			},
			dataType : "json",
			success : function(result){
				alert("更新成功");
			},error : function (){
				alert("更新成功");
			}
		}); 
	}
</script>
<script src="${APP_PATH }/js/jquery.min.js"></script>
<script src="${APP_PATH }/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="${APP_PATH }/js/app.js"></script>
</body>
</html>
