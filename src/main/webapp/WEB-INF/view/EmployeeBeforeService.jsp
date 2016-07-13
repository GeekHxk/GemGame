<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%    
	String path = request.getContextPath();    
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta content="" name="description" />
<meta content="webthemez" name="author" />
<title>维修信息</title>
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
				Empty Page <small>Create new page.</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">Empty</a></li>
				<li class="active">Data</li>
			</ol>
		</div>
		<div id="page-inner">
			<c:forEach var="repair" items="${listRepair }" >
			<!-- row -->
			<div class="row">
				<div class="col-md-8">
					<div class="alert alert-info" role="alert">${repair.companyName } ${repair.repairName }</div>
				</div>
				<div class="col-md-4">
					<!-- 地区选择 -->
					<select class="selectpicker">
					  <option value ="volvo">南京</option>
					  <option value ="saab">苏州</option>
					  <option value="opel">上海</option>
					  <option value="audi">北京</option>
					</select>
					
					<!-- 分配维修员按钮 -->
					<button id="fenpei" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">分配维修员 </button>
					
					<!-- 弹出框选择维修人员 -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">维修人员</h4>
								</div>
								<div class="modal-body">
									 <div class="table-responsive">
		                                <table id="tableSer" class="table table-striped table-bordered table-hover">
		                                    <thead>
		                                        <tr>
		                                            <th>选择</th>
		                                            <th>编号</th>
		                                            <th>姓名</th>
		                                            <th>电话</th>
		                                            <th>所在地</th>
		                                        </tr>
		                                    </thead>
		                                    <tbody>
		                                    </tbody>
		                                </table>
				                     </div>
				                     <!-- End  Kitchen Sink -->
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
									<button type="button" class="btn btn-primary" id="queding">确定</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>	
			<!-- row -->
			</c:forEach>
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
	
	<script type="text/javascript">
	
	
		//分配維修員工		
		$("#fenpei").click(function(){
			var selectText = $(this).siblings(".selectpicker").find("option:selected").text();
			alert(selectText);
			$('#tableSer').children('tbody').empty();
			$.ajax({
				url: "http://localhost:8080/GemGame/getServiceManByArea?area="+selectText+"&state=休闲中",    //请求的url地址
			    dataType: "json",   //返回格式为json
			    async: true, //请求是否异步，默认为异步，这也是ajax重要特性
			    //data: { "id": "value" },    //参数值
			    //data: params,
			    type: "get",   //请求方式
			    beforeSend: function() {
			        //请求前的处理
			    },
			    success: function(data) {
			    	var tbody = "";
			        $.each(data, function (index, el) {
			          var tr = "<tr><td><input type=\"radio\" name=\"optionsRadios\" id=\"optionsRadios1\" value='"+el.number+"'></td>";
			          tr += "<td>" + el.number + "</td>";
			          tr += "<td>" + el.name + "</td>";
			          tr += "<td>" + el.phone + "</td>";
			          tr += "<td>" + el.area + "</td>";
			          tr += "</tr>";
			          tbody += tr;
			        });
			        $('#tableSer').children('tbody').append(tbody);
			    },
			    complete: function() {
			        //请求完成的处理
			    },
			    error: function() {
			        //请求出错处理
			        alert("錯誤");
			    }
			});
		})
		
		//确定维修员工
		$("#queding").click(function(){
			var temp = $("input:radio:checked").val();
			location.href("http://localhost:8080/GemGame/addServiceManToRepair?number="+temp);
		})
		
		
	</script>
</body>
</html>