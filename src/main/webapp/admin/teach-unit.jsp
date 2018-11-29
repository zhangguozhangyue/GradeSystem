<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>教学科研统计</title>
<meta name="description" content="这是一个form页面">
<meta name="keywords" content="form">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="/GradeSystem/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="/GradeSystem/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="/GradeSystem/css/amazeui.min.css" />
<link rel="stylesheet" href="/GradeSystem/css/admin.css">
<script>
	function addtr(){
		var tbodyEle = document.getElementById("tbo1");
		var trEle = document.createElement("tr");
		var selectEle = document.createElement("select");
				
		var optionNode = document.createTextNode("请选择");
		var optionEle = document.createElement("option");
		optionEle.appendChild(optionNode);
		var optionNode1 = document.createTextNode("农学院");
		var optionEle1 = document.createElement("option");
		optionEle1.appendChild(optionNode1);
		var optionNode2 = document.createTextNode("林学院");
		var optionEle2 = document.createElement("option");
		optionEle2.appendChild(optionNode2);
		var optionNode3 = document.createTextNode("软件学院");
		var optionEle3 = document.createElement("option");
		optionEle3.appendChild(optionNode3);
		var optionNode4 = document.createTextNode("经管学院");
		var optionEle4 = document.createElement("option");
		optionEle4.appendChild(optionNode4);
		var optionNode5 = document.createTextNode("动科院");
		var optionEle5 = document.createElement("option");
		optionEle5.appendChild(optionNode5);
		selectEle.appendChild(optionEle);
		selectEle.appendChild(optionEle1);
		selectEle.appendChild(optionEle2);
		selectEle.appendChild(optionEle3);
		selectEle.appendChild(optionEle4);
		selectEle.appendChild(optionEle5);
		for(var i = 0;i<12;i++){
			var tdEle = document.createElement("td");
			if(i==2){
				tdEle.appendChild(selectEle);
			}
			trEle.appendChild(tdEle);
		}
		tbodyEle.appendChild(trEle);
	}
</script>
</head>
<body>
	<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

	<header class="am-topbar admin-header">
		<div class="am-topbar-brand">
			<strong>江西农业大学</strong> <small>年度考核评分系统</small>
		</div>

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li><a href="javascript:;"><span class="am-icon-envelope-o"></span>
						收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
				<li class="am-dropdown" data-am-dropdown><a
					class="am-dropdown-toggle" data-am-dropdown-toggle
					href="javascript:;"> <span class="am-icon-users"></span> 管理员 <span
						class="am-icon-caret-down"></span>
				</a>
					<ul class="am-dropdown-content">
						<li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
						<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
						<li><a href="#"><span class="am-icon-power-off"></span>
								退出</a></li>
					</ul></li>
				<li><a href="javascript:;" id="admin-fullscreen"><span
						class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar">
			<ul class="am-list admin-sidebar-list">
			      <li><a href="index.html"><span class="am-icon-home"></span> 首页</a></li>
      <li><a href="/GradeSystem/admin-user.html"><span class="am-icon-check"></span> 个人资料</a></li>
      <li><a href="set-score-scale.html"><span class="am-icon-map-marker"></span> 评分比例设置</a></li>
      <li><a href="set-assessment-group.html"><span class="am-icon-table"></span> 考核分组设置</a></li>
      <li><a href="teach-unit.html"><span class="am-icon-table"></span> 教学科研单位评分</a></li>
      <li><a href="manage-unit.html"><span class="am-icon-table"></span> 管理服务单位评分</a></li>
		    </ul>

			<div class="am-panel am-panel-default admin-sidebar-panel">
				<div class="am-panel-bd">
					<p>
						<span class="am-icon-bookmark"></span> 公告
					</p>
					<p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
				</div>
			</div>

			<div class="am-panel am-panel-default admin-sidebar-panel">
				<div class="am-panel-bd">
					<p>
						<span class="am-icon-tag"></span> wiki
					</p>
					<p>Welcome to the Amaze UI wiki!</p>
				</div>
			</div>
		</div>
		<!-- sidebar end -->

		<!-- content start -->
		 <form action="/GradeSystem/quantify/quantifyIndex.do" method="post">
		<div class="admin-content">
			<div class="am-cf am-padding">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">教学科研</strong> / <small>定量评分统计表（处级领导班子）</small>
				</div>
			</div>

			<div class="am-g">
                <div class="am-u-sm-12">
                    <!-- <h2 class="am-text-center am-text-xxxl am-margin-top-lg">404. Not Found</h2> -->
                    <!-- <p class="am-text-center">测 评 要 素</p> -->
                    <table class="am-table am-table-bordered am-table-centered am-table-radius am-table-striped" style="table-layout:fixed;text-align: center;">
						<tbody id="tbo1">
							<tr>
								<td colspan="12" class="am-text-center">
									江西农业大学2017年度教学科研单位定量评分统计表（处级领导班子）</td>
							</tr>
							<tr>
								<td rowspan="3">序号</td>
								<td rowspan="3">组别</td>
								<td rowspan="3">考核单位</td>
								<td>教学</td>
								<td>科研</td>
								<td>学科与研究生</td>
								<td>人才</td>
								<td>学生工作</td>				
								<td>就业（考研）</td>
								<td colspan="2">党团与廉政</td>
								<td>综治</td>
							</tr>
							<tr>
								<td rowspan="2">评分</td>
								<td rowspan="2">评分</td>
								<td rowspan="2">评分</td>
								<td rowspan="2">评分</td>
								<td rowspan="2">评分</td>
								<td rowspan="2">评分</td>
								<td>党团</td>
								<td>党风廉政建设</td>
								<td rowspan="2">评分</td>
							</tr>
							<tr>
								<td>评分</td>
								<td>评分</td>
							</tr>
							<tr>
							   <td><input type="text" style="width:90%;border:none;" name="id" value="1" readOnly="true"></td>
							   <td><input type="text" style="width:90%;border:none;" name="year" value="1" readOnly="true"></td>
							   <td><input type="text" style="width:90%;border:none;" name="user1" value="农学院" readOnly="true"></td>
							   <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="proportion"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="grade"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="unitID"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="optionID"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="departmentID"></td>
							   <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="user6"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="user7"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="user8"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="user9"></td>
							</tr>
							<tr>
							   <td><input type="text" style="width:90%;border:none;" name="id" value="2" readOnly="true"></td>
							   <td><input type="text" style="width:90%;border:none;" name="year" value="2" readOnly="true"></td>
							   <td><input type="text" style="width:90%;border:none;" name="user1" value="软件学院" readOnly="true"></td>
							   <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="proportion"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="grade"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="unitID"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="optionID"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="departmentID"></td>
							   <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="user6"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="user7"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="user8"></td>
						       <td><input type="text" style="width:90%;border:none;"placeholder="请输入" name="user9"></td>
							</tr>
						</tbody>
               		</table>
               </div>
               </div>
            	<div class="am-margin">
				<!-- scan-teach-unit.html -->
				<button type="submit" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
				<button type="reset" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
			</div>
			</div>
         </form> 
		</div>
		<!-- content end -->
	<footer>
		<hr>
		<p class="am-padding-left">© 2018 江西农业大学.蓝点工作室</p>
	</footer>
	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="/GradeSystem/js/jquery.min.js"></script>
	<script src="/GradeSystem/js/amazeui.min.js"></script>
	<!--<![endif]-->
	<script src="/GradeSystem/js/app.js"></script>
</body>
</html>
