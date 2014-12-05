<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	table{
	position:relative;
	left:200px;
	top:250px;
	}
	</style>
	<script type="text/javascript">
	function loadimage() {
			document.getElementById("randImage").src = "image.jsp?" + Math.random();
		}
	function checkInfo(){
	if(loginform.username.value==""){
	    alert("用户名不能为空！");
	    return false;
	}else if(loginform.pwd.value==""){
		alert("密码不能为空！");
		return false;
	}else if(loginform.rand.value==""){
	    alert("请输入验证码！");
	    return false;
	}else
		return true;
	}
	</script>

  </head>
  
  <body>
    	<div style="background:url(images/login_bk.jpg);width:720;height:583;margin-left:275">
		<form method="post" name="loginform" onsubmit="return checkInfo()" action="toMain">
		<table border="0" width="300"class="login">
		<tr height="40" align="center">
			<td width="30%" align="right">用户名：</td>
			<td><input type="text" size="29" name="username"></td>
		</tr>
		<tr height="40" align="center">
			<td align="right">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
			<td align="left"><input type="password" size="30" name="pwd" ></td>
		</tr>
		<tr height="40" align="center">
			<td align="right">验证码：</td>
			<td align="left">
			<input type="text" size="10" name="rand">
			<img alt="code..." name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1">
			<a href="javascript:loadimage();"><font class=pt95>刷新</font></a>
			</td>
			
		</tr>
		<tr height="50" align="left">
			<td colspan="2" align="center"><input type="radio" name="usertype" value="rd_teacher">
			<span>教师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<input type="radio" name="usertype" value="rd_student" checked>
			<span>学生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<input type="radio" name="usertype" value="rd_manager">
			<span>管理员</span></td>
		</tr>
		<tr height="60">
			<td colspan="2" align="center">
				<input type="submit" value="登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置">
			</td>
		</tr>
	</table>
		
		</form>
	</div>
  </body>
</html>
