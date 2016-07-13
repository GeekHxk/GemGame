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
<title>设备信息</title>
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
				设备信息的采集 <small>Create new page.</small>
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
					<div class="col-md-6">
						<form id="" action="saveDeviceInfo" method="post">
						  <div class="form-group">
						    <label for="exampleInputEmail1">设备名</label>
						    <input type="text" class="form-control" name="deviceName" id="deviceName" value="江苏" >
						  </div>
						  <div class="form-group">
						    <label for="exampleInputPassword1">生产商</label>
						    <input type="text" class="form-control" name="producer" id="producer" value="13621415454">
						  </div>
						  <div class="form-group">
						    <label for="exampleInputPassword1">生产商电话</label>
						    <input type="text" class="form-control" name="producerPhone" id="producerPhone" maxlength="11" value="13621415454">
						  </div>
						  <div class="form-group">
						    <label for="exampleInputPassword1">收购日期</label>
						    <input type="date" class="form-control" name="buyDate" id="buyDate">
						  </div>
						  <button type="button" class="btn btn-default" id="saveInfo">保存设备信息</button>
						  <!-- 
						  <button type="button" class="btn btn-default" id="getCode">生成二维码</button> -->
						  <button type="button" class="btn btn-default" id="printCode">打印二维码</button>
						</form>
					</div>
					<div class="col-md-3">
						<img >
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
	
	<script>
		<!--保存设备信息-->
		$("#saveInfo").click(function(){
			var params=$('form').serialize(); //序列化表单的值，与prototype中的form.serialize()相同
			$.ajax({
				url: "http://localhost:8080/GemGame/saveDeviceInfo",    //请求的url地址
			    dataType: "json",   //返回格式为json
			    async: true, //请求是否异步，默认为异步，这也是ajax重要特性
			    //data: { "id": "value" },    //参数值
			    data: params,
			    type: "post",   //请求方式
			    beforeSend: function() {
			        //请求前的处理
			    },
			    success: function(req) {
			        //请求成功时处理
			    	$("img").attr("src","showimg");
			    },
			    complete: function() {
			        //请求完成的处理
			        $("img").attr("src","showimg");
			    },
			    error: function() {
			        //请求出错处理
			        alert("");
			    }
			});
		});
		
		$(document).ready(function(){
			<!--保存设备信息-->
			$("#saveInfo").click(function(){
				alert("dsa");
				var params=$('form').serialize(); //序列化表单的值，与prototype中的form.serialize()相同
				$.ajax({
					url: "saveDeviceInfo",    //请求的url地址
				    dataType: "json",   //返回格式为json
				    async: true, //请求是否异步，默认为异步，这也是ajax重要特性
				    //data: { "id": "value" },    //参数值
				    data: params,
				    type: "post",   //请求方式
				    beforeSend: function() {
				        //请求前的处理
				    },
				    success: function(req) {
				        //请求成功时处理
				    },
				    complete: function() {
				        //请求完成的处理
				    },
				    error: function() {
				        //请求出错处理
				        alert("cuowu");
				    }
				});
			});
			<!--获取表单上的设备信息并生成二维码-->
			$("getCode").click(function(){
				
			});
			
			<!--打印二维码-->
			$("getCode").click(function(){
				$.ajax();
			});
		});
	</script>
</body>
</html>