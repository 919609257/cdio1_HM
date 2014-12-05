<%@ page language="java" import="java.util.*,edu.fjnu.hm.sever.Notice,edu.fjnu.hm.dao.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
NoticeDaoSql dao=new NoticeDaoSql();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html >
<head>
 <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
 <title>作业管理系统</title>
 <style type="text/css">
 *{margin:0; padding: 0;}
 body { 
background-repeat: no-repeat;
background-attachment:fixed;
background-position: 0px 150px; 
 }
 #navcont { background: #fff; width: 100%; }
 #nav { font-family: helvetica; position:relative; width:3777px; height:56px; font-size:14px; color:#999; 
margin: 0 auto; }
 #nav ul { list-style-type:none; }
 #nav ul li { float:left; position: relative;}
 #nav ul li a { border-right:1px solid #e9e9e9; padding:20px; display:block; text-decoration:none; text-
align:center; color:#999;}
 #nav ul li a:hover {background: #12aeef url(http://files.jb51.net/demoimg/200912/shadow.png)  repeat-x;; 
color:#fff;} 
 #nav ul li ul {display: none;} 
 #nav ul li:hover ul {display: block; position: absolute; top:56px; min-width:190px; left:0;} 
 #nav ul li:hover ul li a {display:block; background:#12aeef; color:#ffffff; width: 110px; text-align: 
center; border-bottom: 1px solid #f2f2f2; border-right: none;}
 #nav ul li:hover ul li a:hover { background:#6dc7ec; color:#ffffff; }
 .borderleft {border-left: 1px solid #e9e9e9;}
 .top { border-top: 1px solid #f2f2f2;}
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
 <script type="text/javascript">
 function homework(){
 document.getElementById("display").src="http://localhost:8080/cdio1_HM/HomeWorkDown.jsp";
 }
 function resource(){
 document.getElementById("display").src="http://localhost:8080/cdio1_HM/Resourcedown.jsp";
 }
 function changeIf(href){
 document.getElementById("display").src=href;
 }
 </script>
</head>
<body>
<div>
<img src="images/logo_school.png" width="1365px" style="border:1px solid #C8C8C8"/>
</div>

<div id="navcont"> 
<div id="nav"> 
<ul>
 <li class="borderleft"><a href="http://localhost:8080/cdio1_HM/StuMain.jsp" target="_self">Home</a></li>
 <li><a href=javascript:void(0)>信息管理</a>
   <ul>
   <li class="top"><a href=javascript:void(0) onclick="LoadManager" target="_self">个人信息</a></li>
   <li><a href=javascript:void(0) onclick="changeIf('http://localhost:8080/cdio1_HM/ChangePwd1.jsp')">密码修改</a></li>
  </ul>
 </li> 
 <li><a href=javascript:void(0)>作业管理</a>
  <ul>
   <li class="top"><a href=javascript:void(0) onclick="homework()">查看作业</a></li>
   <li><a href=javascript:void(0)>查看已批改作业</a></li>
  </ul>
 </li> 
 <li><a href=javascript:void(0) onclick="resource()">资料下载</a>
 </li>
</ul>
</div>
</div>
<div id="iform" >
<iframe width="1360px" height="500px" src="http://localhost:8080/cdio1_HM/noticeWeb.jsp" id="display">
</iframe>
</div>
</body>
</html>
