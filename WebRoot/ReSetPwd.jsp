<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="ManMain.jsp" flush="true" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ReSetPwd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	.banmian{
	margin-top:25px;
	margin-left:0;
	}
	body {background-color:#b0c4de;}
	.pt95{
	font-size:16px;
	}
	td{
	height:40;
	}
	</style>
  </head>
  
  <body>
    <div class="banmian">
    <hr>
    <form method="post" action="ReSetPwd" class="banmian">
    <table border="1" align="center">
   <tr>
   <td align="right">请选择角色：</td>
 	<td> <select name="changetype" id="kind">
		<option value="1">教师</option> 
		<option value="2">学生</option> 
	</select> 
	</td>
   
     <tr>
     <td align="right">请输入id：</td>
 	 <td><input class="pt95" type="text" name="userid"/></td>
  </tr>
 <tr>
 <td colspan="2" valign="bottom" align="center">
	 <input type="submit" value="确认修改"/></td>
	 </tr>
	 </table>
    
     </form>
     </div>
  </body>
</html>
