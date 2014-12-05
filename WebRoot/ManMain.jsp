<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
<title>作业管理系统</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	background: #444;
}
h3{
	position:absolute;
	right:8px;
	top:8px;

}

#navcont {
	background: #fff;
	width: 100%;
}

#nav {
	font-family: helvetica;
	position: relative;
	width: 1335px;
	height: 56px;
	font-size: 14px;
	color: #999;
	margin: 0 ;
}

#nav ul {
	list-style-type: none;
}

#nav ul li {
	float: left;
	position: relative;
}

#nav ul li a {
	border-right: 1px solid #e9e9e9;
	padding: 20px;
	display: block;
	text-decoration: none;
	text- align: center;
	color: #999;
}

#nav ul li ul {
	display: none;
}

#nav ul li:hover ul {
	display: block;
	position: absolute;
	top: 56px;
	min-width: 190px;
	left: 0;
}

#nav ul li:hover ul li a {
	display: block;
	background: #12aeef;
	color: #ffffff;
	width: 110px;
	text-align: center;
	border-bottom: 1px solid #f2f2f2;
	border-right: none;
}

#nav ul li:hover ul li a:hover {
	background: #6dc7ec;
	color: #ffffff;
}

.borderleft {
	border-left: 1px solid #e9e9e9;
}

.top {
	border-top: 1px solid #f2f2f2;
}
/*  This piece of code is for a third level drop down menu and is not included in this tutorial  #nav ul 
li:hover ul li ul {display:none;}
 #nav ul li:hover ul li:hover ul {display:block; position: absolute; top:-1px; left: 151px;}*/
/* Ignore this last piece of code */
</style>
</head>
<body>
    <h3>欢迎您：<%=request.getSession().getAttribute("user") %> 管理员 | <a href="login.jsp">退出 </a></h3>
	<div>
		<img src="images/logo_school.png"
			width="1364px" style="border:1px solid #C8C8C8 " />
	</div>

	<div id="navcont">
		<div id="nav">
			<ul>
				<li class="borderleft">
				<a href="ManMain.jsp" target="_self">Home</a>
				</li>
				<li><a href="ManMain.jsp" target="_self">信息管理</a>
					<ul>
						<li class="top"><a href="LoadManager" target="_self">个人信息修改</a>
						</li>
						<li><a href="ChangePwd.jsp" target="_self">密码修改</a>
						</li>
					</ul></li>
				<li><a href="ManMain.jsp" target="_self">用户管理</a>
					<ul>
						<li class="top"><a href="Adduser.jsp" target="_self">添加用户</a>
						</li>
						<li><a href="DropUser.jsp" target="_self">删除用户</a>
						</li>
						<li><a href="ReSetPwd.jsp" target="_self">密码重置</a>
						</li>
						
					</ul></li>
			</ul>
		</div>
	</div>

</body>
</html>
