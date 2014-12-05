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
    
    <title>My JSP 'DropUser.jsp' starting page</title>
    
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
	</style>

  </head>
  
  <body>
  <div class="banmian">
  <hr>
  <form method="post" action="DropSingleUser">
  <table border="1" align="center"class="banmian">
                  <tr>
                  <td align="right">  请选择角色：</td>
 	<td> <select name="usertype" id="kind"> 
		<option value="1">教师</option> 
		<option value="2">学生</option> 
	</select> 
   </td>
   </tr>
   
     <tr>
     <td align="right">请输入id：</td>
 	 <td><input type="text" name="userid" class="pt95"/></td>
   </tr>
 <tr>
	 <td colspan="2" align="center" height="60" valign="bottom"><input type="submit" value="删&nbsp;&nbsp;&nbsp;&nbsp;除" class="pt95"/></td>
	 </tr>
	 </table>
  </form>
  </div>
  <hr class="banmian">
  <div class="banmian">
  
  <form method="post" action="DropBatchUser">
  <table border="1" align="center"class="banmian">
 <tr>
 <td align="right">请输入学号范围：</td>
 	<td><input type="text" name="startnum" class="pt95"/></td>
 	<td >-</td>
 	<td><input type="text" name="endnum" class="pt95"/></td>
  </tr>
  <tr>
  <td colspan="4" align="center" height="60" valign="bottom">   
	 <input type="submit" value="批量删除" class="pt95"/></td>
	 </tr>
	 </table>
  </form>
  </div>
  </body>
</html>
