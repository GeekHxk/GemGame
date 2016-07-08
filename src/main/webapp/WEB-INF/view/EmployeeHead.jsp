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
			<div id="sideNav" href="">
				<i class="fa fa-bars icon"></i>
			</div>
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
					<li><a href="#"><i class="fa fa-sign-out fa-fw"></i>
							退出</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
	</nav>
	<!--/. NAV TOP  -->
	<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">

				<li><a href="index.html"><i class="fa fa-dashboard"></i>
						个人信息</a></li>
				<li><a href="ui-elements.html"><i class="fa fa-desktop"></i>
						维修信息</a></li>

				<li><a href="#"><i class="fa fa-sitemap"></i> Charts<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="chart.html">Charts JS</a></li>
						<li><a href="morris-chart.html">Morris Chart</a></li>
					</ul></li>
				<li><a href="EmployeeDeviceInfo"><i class="fa fa-qrcode"></i>
						设备信息录入</a></li>

				<li><a href="table.html"><i class="fa fa-table"></i>
						维修人员信息</a></li>
				<li><a href="EmployeeQRcode"><i class="fa fa-edit"></i> 公司二维码 </a></li>


				<li><a href="#"><i class="fa fa-sitemap"></i> Multi-Level
						Dropdown<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="#">Second Level Link</a></li>
						<li><a href="#">Second Level Link</a></li>
						<li><a href="#">Second Level Link<span class="fa arrow"></span></a>
							<ul class="nav nav-third-level">
								<li><a href="#">Third Level Link</a></li>
								<li><a href="#">Third Level Link</a></li>
								<li><a href="#">Third Level Link</a></li>

							</ul></li>
					</ul></li>
				<li><a class="active-menu" href="empty.html"><i
						class="fa fa-fw fa-file"></i> Empty Page</a></li>
			</ul>

		</div>

	</nav>
	<!-- /. NAV SIDE  -->
	<div id="page-wrapper">
		<div class="header">
			<h1 class="page-header">
				Empty Page <small>Create new page.</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">Empty</a></li>
				<li class="active">Data</li>
			</ol>

		</div>