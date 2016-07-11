<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="assets/css/bootstrap.css" />
</head>


<style>
.form-2 {
	/* Size and position */
	width: 340px;
	margin: 60px auto 30px;
	padding: 15px;
	position: relative;
	/* Styles */
	background: #fffaf6;
	border-radius: 4px;
	color: #7e7975;
	box-shadow: 0 2px 2px rgba(0, 0, 0, 0.2), 0 1px 5px rgba(0, 0, 0, 0.2),
		0 0 0 12px rgba(255, 255, 255, 0.4);
}

.form-2 h1 {
	font-size: 15px;
	font-weight: bold;
	color: #bdb5aa;
	padding-bottom: 8px;
	border-bottom: 1px solid #EBE6E2;
	text-shadow: 0 2px 0 rgba(255, 255, 255, 0.8);
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.8);
}

.form-2 h1 .log-in, .form-2 h1 .sign-up {
	display: inline-block;
	text-transform: uppercase;
}

.form-2 h1 .log-in {
	color: #6c6763;
	padding-right: 2px;
}

.form-2 h1 .sign-up {
	color: #ffb347;
	padding-left: 2px;
}

.form-2 .float {
	width: 50%;
	float: left;
	padding-top: 15px;
	border-top: 1px solid rgba(255, 255, 255, 1);
}

.form-2 .float:first-of-type {
	padding-right: 5px;
}

.form-2 .float:last-of-type {
	padding-left: 5px;
}

.form-2 label {
	display: block;
	padding: 0 0 5px 2px;
	cursor: pointer;
	text-transform: uppercase;
	font-weight: 400;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.8);
	font-size: 11px;
}

.form-2 label i {
	margin-right: 5px; /* Gap between icon and text */
	display: inline-block;
	width: 10px;
}

.form-2 input[type=text], .form-2 input[type=password] {
	font-family: 'Lato', Calibri, Arial, sans-serif;
	font-size: 13px;
	font-weight: 400;
	display: block;
	width: 100%;
	padding: 5px;
	margin-bottom: 5px;
	border: 3px solid #ebe6e2;
	border-radius: 5px;
	-webkit-transition: all 0.3s ease-out;
	-moz-transition: all 0.3s ease-out;
	-ms-transition: all 0.3s ease-out;
	-o-transition: all 0.3s ease-out;
	transition: all 0.3s ease-out;
}

.form-2 input[type=text]:hover, .form-2 input[type=password]:hover {
	border-color: #CCC;
}

.form-2 label:hover ~ input {
	border-color: #CCC;
}

.form-2 input[type=text]:focus, .form-2 input[type=password]:focus {
	border-color: #BBB;
	outline: none; /* Remove Chrome's outline */
}

.form-2 input[type=submit], .form-2 .log-twitter {
	/* Size and position */
	width: 49%;
	height: 38px;
	float: left;
	position: relative;
	/* Styles */
	box-shadow: inset 0 1px rgba(255, 255, 255, 0.3);
	border-radius: 3px;
	cursor: pointer;
	/* Font styles */
	font-family: 'Lato', Calibri, Arial, sans-serif;
	font-size: 14px;
	line-height: 38px; /* Same as height */
	text-align: center;
	font-weight: bold;
}

.form-2 input[type=submit] {
	margin-left: 1%;
	background: #fbd568; /* Fallback */
	background: -moz-linear-gradient(#fbd568, #ffb347);
	background: -ms-linear-gradient(#fbd568, #ffb347);
	background: -o-linear-gradient(#fbd568, #ffb347);
	background: -webkit-gradient(linear, 0 0, 0 100%, from(#fbd568),
		to(#ffb347));
	background: -webkit-linear-gradient(#fbd568, #ffb347);
	background: linear-gradient(#fbd568, #ffb347);
	border: 1px solid #f4ab4c;
	color: #996319;
	text-shadow: 0 1px rgba(255, 255, 255, 0.3);
}

.form-2 .log-twitter {
	margin-right: 1%;
	background: #34a5cf; /* Fallback */
	background: -moz-linear-gradient(#34a5cf, #2a8ac4);
	background: -ms-linear-gradient(#34a5cf, #2a8ac4);
	background: -o-linear-gradient(#34a5cf, #2a8ac4);
	background: -webkit-gradient(linear, 0 0, 0 100%, from(#34a5cf),
		to(#2a8ac4));
	background: -webkit-linear-gradient(#34a5cf, #2a8ac4);
	background: linear-gradient(#34a5cf, #2a8ac4);
	border: 1px solid #2b8bc7;
	color: #ffffff;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.3);
	text-decoration: none;
}

.form-2 input[type=submit]:hover, .form-2 .log-twitter:hover {
	box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 20px 40px
		rgba(255, 255, 255, 0.15);
}

.form-2 input[type=submit]:active, .form-2 .log-twitter:active {
	top: 1px;
}

/* Fallback fro broswers that don't support box shadows */
.no-boxshadow .form-2 input[type=submit]:hover {
	background: #ffb347;
}

.no-boxshadow .form-2 .log-twitter:hover {
	background: #2a8ac4;
}

.form-2 p:last-of-type {
	clear: both;
}

.form-2 .opt {
	text-align: right;
	margin-right: 3px;
}

.form-2 label[for=showPassword] {
	display: inline-block;
	margin-bottom: 10px;
	font-size: 11px;
	font-weight: 400;
	text-transform: capitalize;
}

.form-2 input[type=checkbox] {
	vertical-align: middle;
	margin: -1px 5px 0 1px;
}
</style>

<body>
	<div id="formbackground"
		style="position: absolute; width: 100%; height: 100%; z-index: -1">
		<img src="img/bg3.jpg" height="100%" width="100%" />
	</div>
	</br>
	</br>
	<center>
		<h1>用户登录</h1>
	</center>
	</br>
	</br>

	<section class="main">
		<form class="form-2">
			<h1>
				<span class="log-in">登录</span> / <span class="sign-up">注册</span>
			</h1>
			<p class="float">
				<label for="login"><i class="icon-user"></i>用户名</label> <input
					type="text" name="login" placeholder="手机/邮箱/用户名">
			</p>
			<p class="float">
				<label for="password"><i class="icon-lock"></i>密码</label> <input
					type="password" name="password" placeholder="密码"
					class="showpassword">
			</p>

			<p>
				<input name="Fruit" type="radio" value="" />超级管理员 <input
					name="Fruit" type="radio" value="" />公司管理员 <input name="Fruit"
					type="radio" value="" />员工
			</p>
			<p class="clearfix">
				 <input type="submit" name="submit" value="注册">
				 <a href="#" class="log-twitter">登录</a>
			</p>
		</form>
		​​
	</section>

</body>

</html>