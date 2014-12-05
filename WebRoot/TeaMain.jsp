<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Login.html</title>
<style>
body 
{
	background-image: url('images/teacherHome.jpg');
}
</style>
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

 <script type="text/javascript">
    
 </script>

<!-- <style type="text/css">
 {
	margin: 0;
	padding: 0;
}

body {
	background: #aaa;
}

#navcont {
	background: #fff;
	width: 100%;
}

#nav {
	font-family: helvetica;
	position: relative;
	width: 377px;
	height: 56px;
	font-size: 14px;
	color: #999;
	margin: 0 auto;
}

#nav ul {
	list-style-type: none;
}
--->
<style type="text/css">
 {
	margin: 0;
	padding: 0;
}
#nav ul li {
	float: left;
	position: relative;
}

#nav ul li a {
	border-right: 1px solid #e9e9e9;
	padding: 30px;
	display: block;
	text-decoration: none;
	text- align: center;
	color: blue;
}

#nav ul li a:hover {
	<!--background: #12aeef url(http://files.jb51.net/demoimg/200912/shadow.png)-->
		repeat-x;
	color: #fff;
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
#threestyles {
	width: 500px;
	height: 300px;
	margin: 0px auto;
	border: 2px solid #666;
	margin-top: 30px;
}
</style>
</head>

<body>
	<h1 align="center" color="black">教师管理子系统</h1>
	<br>

	<div id="navcont" >
		<div id="nav">
			<ul>
				<li class="borderleft"><a href="http://www.jb51.net"
					target="_self" >信息管理</a>
				</li>
				<li><a href="http://www.jb51.net" target="_self">作业管理</a>
					<ul>
						<li class="top"><a href="http://www.jb51.net" target="_blank">作业发布</a>
						</li>
						<li><a href="http://www.jb51.net" target="_self">作业批改</a>
						</li>
					</ul></li>
			    <li><a href="http://www.jb51.net" target="_self">公告管理</a>
			        <ul>
						<li class="top"><a href="publishNotice.jsp" target="_self">公告内容管理</a>
						</li>
					</ul>
			    </li>
				<li><a href="http://www.jb51.net" target="_self">资源管理</a>
					<ul>
						<li class="top"><a href="http://www.moocs.org.cn/" target="_self">学习资源</a>
						</li>
					</ul></li>
			</ul>
		</div>
	</div>




</body>
</html>
