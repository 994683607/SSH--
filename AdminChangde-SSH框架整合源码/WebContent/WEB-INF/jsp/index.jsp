<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>天地图后台管理中心</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<base href="<%=basePath%>">

<!-- logo -->
<link rel="shortcut icon"
	href="/AdminChangde/static/dist/img/favicon.ico">
<!-- jQuery 3.1.1 -->
<script src="//cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="//cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<!-- Select2 -->
<link rel="stylesheet"
	href="//cdn.bootcss.com/select2/4.0.3/css/select2.min.css">
<script src="//cdn.bootcss.com/select2/4.0.3/js/select2.min.js"></script>
<!-- bootstrap datepicker -->
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css">
<script
	src="//cdn.bootcss.com/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
<script
	src="//cdn.bootcss.com/bootstrap-datepicker/1.6.4/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<!-- Slimscroll -->
<script
	src="//cdn.bootcss.com/jQuery-slimScroll/1.3.8/jquery.slimscroll.min.js"></script>
<!-- Theme style -->
<link rel="stylesheet" href="static/dist/css/AdminLTE.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="static/dist/css/skins/_all-skins.min.css">

<%-- <!-- logo -->
  <link rel="shortcut icon" href="/AdminChangde/static/dist/img/favicon.ico">
  <!--  jQuery 3.1.1 -->
  <script src="static/plugins/jQuery/jquery-3.1.1.min.js"></script>
  <!--  Bootstrap 3.3.6  -->
  <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
  <script src="static/bootstrap/js/bootstrap.min.js"></script>
  <!--  Font Awesome  -->
  <link rel="stylesheet" href="static/plugins/font-awesome/css/font-awesome.min.css">
  <!--  Select2  -->
  <link rel="stylesheet" href="static/plugins/select2/select2.min.css">
  <script src="static/plugins/select2/select2.full.min.js"></script>
  <!--  bootstrap datepicker  -->
  <link rel="stylesheet" href="static/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css">
  <script src="static/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
  <script src="static/plugins/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
  <!--  Slimscroll  -->
  <script src="static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
  <!--  Theme style  -->
  <link rel="stylesheet" href="static/dist/css/AdminLTE.css">
  <!--  AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="static/dist/css/skins/_all-skins.min.css">
  <!--  AdminLTE App  -->
  <script src="static/dist/js/app.min.js"></script>
  <!--  AdminLTE for demo purposes  -->
  <script src="static/dist/js/demo.js"></script> --%>



<style>
body, button, input, select, textarea, h1, h2, h3, h4, h5, h6 {
	font-family: Microsoft YaHei, "宋体", Tahoma, Helvetica, Arial,
		"\5b8b\4f53", sans-serif;
}

.content-header>.breadcrumb {
	position: relative;
	margin-top: 5px;
	top: 0;
	right: 0;
	float: none;
	background: #d2d6de;
	padding-left: 10px;
}

.content-header>.breadcrumb li:before {
	color: #97a0b3;
}

.navbar-nav>.user-menu {
	padding-right: 30px;
}

.navbar-nav>.user-menu>.dropdown-menu>li.user-header {
	height: 150px;
}

.navbar-nav>.user-menu>.dropdown-menu>li.user-body {
	padding: 8px;
}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header"> <!-- Logo --> <a href="./"
			class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
			class="logo-mini"><b>天地图后台管理中心</b></span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>天地图后台管理中心</b></span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span></a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Notifications: style can be found in dropdown.less -->
				<li class="dropdown notifications-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-bell-o"></i> <span class="label label-warning">0</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">no notice</li>
						<li>
							<!-- inner menu: contains the actual data --> <!--<ul class="menu">
                  <li>
                    <a href="javascript:void(0);"> <i class="fa fa-users text-aqua"></i> no notice </a>
                  </li>
                </ul>-->
						</li>
						<li class="footer"><a href="javascript:void(0);">View all</a></li>
					</ul></li>
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="static/dist/img/logo.png" class="user-image" alt="User Image">
						<span class="hidden-xs">${admin.userName }</span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img src="static/dist/img/logo.png"
							class="img-circle" alt="User Image">
							<p>${admin.userName }-超级管理员</p></li>
						<!-- Menu Body -->
						<li class="user-body">
							<div class="row">
								<div class="col-xs-5">上次登录时间</div>
								<div class="col-xs-7">1</div>
								<div class="col-xs-5">上次登录IP</div>
								<div class="col-xs-7">2</div>
							</div> <!-- /.row -->
						</li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="javascript:void(0)" class="btn btn-success btn-flat">修改信息</a>
							</div>
							<div class="pull-right">
								<a href="/AdminChangde/admin/logout"
									class="btn btn-info btn-flat">退出登录</a>
							</div>
						</li>
					</ul></li>
			</ul>
		</div>
		</nav> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i>
					<span>总览</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="/AdminChangde/main/showInfo" target="container"><i
							class="fa fa-circle-o"></i> 系统总览 </a></li>
				</ul></li>
				
			<li class="treeview"><a href="#"> <i class="fa fa-users"></i>
					<span>常德日志</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="/AdminChangde/changde/showAdd" target="container"><i
							class="fa fa-circle-o"></i> 添加日志 </a></li>
					<li><a href="/AdminChangde/changde/showList" target="container"><i
							class="fa fa-circle-o"></i> 日志列表 </a></li>
				</ul></li>
			





			<li class="treeview"><a href="#"> <i class="fa fa-gears"></i>
					<span>系统设置</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="/AdminChangde/admin/showSetting"
						target="container"><i class="fa fa-circle-o"></i> 管理员设置 </a></li>
					<li><a href="/AdminChangde/admin/showMessage"
						target="container"><i class="fa fa-circle-o"></i> 关于我们 </a></li>
				</ul></li>
			<li class="header">THEMES</li>
			<li><a href="javascript:void(0)" data-skin="skin-blue"><i
					class="fa fa-circle-o text-aqua"></i> <span>Blue</span></a></li>
			<li><a href="javascript:void(0)" data-skin="skin-green"><i
					class="fa fa-circle-o text-green"></i> <span>Green</span></a></li>
			<!--<li><a href="javascript:void(0)" data-skin="skin-purple"><i class="fa fa-circle-o text-purple"></i> <span>Purple</span></a></li>-->
			<li><a href="javascript:void(0)" data-skin="skin-red"><i
					class="fa fa-circle-o text-red"></i> <span>Red</span></a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<iframe name="container" style="zoom: 1;" height="650px;"
				src="/AdminChangde/main/showInfo" frameBorder="0" width="100%"></iframe>
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer text-center"> <strong> <a
			href="#" target="_blank">天地图后台管理中心</a>
		</strong> All Rights Reserved &copy; 2017 </footer>
	</div>
	<!-- ./wrapper -->

	<!-- AdminLTE App -->
	<script src="static/dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="static/dist/js/demo.js"></script>

	<script>
		$(function() {

			/**
			 * 根据url高亮菜单
			 * @param pathname location.pathname
			 */
			function select_menu(pathname) {

				var $now_selected = null;
				$(".treeview-menu a").each(function() {
					if (pathname.indexOf($(this).data("menu")) >= 0) {
						$now_selected = $(this);
						return false;
					}
				});
				$(".treeview-menu:visible").hide();
				$(".treeview.active").removeClass("active");
				$(".treeview li.active").removeClass("active");
				$now_selected.parents(".treeview").addClass("active");
				$now_selected.parents(".treeview-menu").show();
				$now_selected.parent().addClass("active");
			}

			select_menu(location.pathname);

			//定时检测location.href是否变化 如果变化则选定当前url的菜单
			var old_href = location.href;

			function checkHrefChange() {
				if (old_href == location.href)
					return;
				old_href = location.href;
				select_menu(location.pathname);
			}
			setInterval(checkHrefChange, 300);

		})
	</script>
</body>
</html>