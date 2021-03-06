<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<div id="wrapper">
	<nav class="navbar navbar-default top-navbar" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><strong><i
					class="icon fa fa-plane"></i> 后台管理系统</strong></a>
		</div>

		<ul class="nav navbar-top-links navbar-right">
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" aria-expanded="false"> <i
					class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> 用户信息</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> 信息设置</a>
					</li>
					<li class="divider"></li>
					<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> 退出</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
	</nav>
	<!--/. NAV TOP  -->
	<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">

				<li><a href="employeeProfile"><i class="fa fa-dashboard"></i>
						个人信息</a></li>
				<li><a href="#"><i class="fa fa-edit"></i> 设备信息<span
				class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="employeeDeviceInfo">信息采集</a></li>
						<li><a href="socialServiceManInfo">信息修改</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-sitemap"></i> 维修信息<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="beforeService">尚未维修</a></li>
						<li><a href="goService">正前往维修</a></li>
						<li><a href="serviceing">正在维修</a></li>
						<li><a href="afterService">历史维修</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-table"></i> 维修人员<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="companyServiceManInfo">公司维修员</a></li>
						<li><a href="socialServiceManInfo">社会维修员</a></li>
					</ul></li>
				<li><a href="employeeQRcode"><i class="fa fa-qrcode"></i> 公司二维码 </a></li>
			</ul>

		</div>

	</nav>
	