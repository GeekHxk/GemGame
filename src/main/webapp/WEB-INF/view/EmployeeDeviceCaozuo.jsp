<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%    
	String path = request.getContextPath();    
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta content="" name="description" />
<meta content="webthemez" name="author" />
<title>设备信息的查看与修改</title>
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
	<%@ include file="EmployeeHead.jsp"%>
	<!-- /. NAV SIDE  -->
	<div id="page-wrapper">
		<div class="header">
			<h1 class="page-header">
				设备信息 <small>Create new page.</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">Empty</a></li>
				<li class="active">Data</li>
			</ol>

		</div>
	<div id="page-inner">
		<div class="panel panel-info">
			<div class="panel-heading">
			    <h3 class="panel-title">设备信息添加</h3>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-8">
						<form action="" method="post">
						  <div class="form-group">
						    <label for="exampleInputEmail1">设备名</label>
						    <input type="text" class="form-control" name="companyAddress" value="江苏" >
						  </div>
						  <div class="form-group">
						    <label for="exampleInputPassword1">生产商</label>
						    <input type="text" class="form-control" name="companyAddress" value="南极极目">
						  </div>
						  <div class="form-group">
						    <label for="exampleInputPassword1">生产商电话</label>
						    <input type="text" class="form-control" name="companyAddress" value="13621415454">
						  </div>
						  <div class="form-group">
						    <label for="exampleInputPassword1">收购日期</label>
						    <input type="date" class="form-control" name="companyAddress" >
						  </div>
						  <button type="submit" class="btn btn-default">保存设备信息</button>
						  <button type="submit" class="btn btn-default">生成二维码</button>
						  <button type="button" class="btn btn-default">打印二维码</button>
						</form>
					</div>
					<div class="col-md-4">
					<img alt="" src="">
					</div>
				</div>
			  
			 
			  
			</div> 
			<div class="panel-footer">
				
			</div>
		</div>
		<footer>
			<p>
				Copyright &copy; 2016.Company name All rights reserved.<a
					target="_blank" href="http://www.mycodes.net/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
			</p>
		</footer>
	</div>
	<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="assets/js/jquery.metisMenu.js"></script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>

</body>
</html>