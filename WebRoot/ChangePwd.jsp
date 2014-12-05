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
    
    <title>My JSP 'ChangePwd.jsp' starting page</title>
    
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
	<script type="text/javascript">
	function isEmpty(){
	if(pwdform.oldpwd.value==""){
	    alert("请输入旧密码");
	    return false;
	}else if(pwdform.newpwd1.value==""){
		alert("请输入新密码");
		return false;
	}else if(pwdform.newpwd2.value==""){
	    alert("请输入确认密码！");
	    return false;
	}else
		return true;
	}
	
	</script>
	
   
  </head>
  
  <body class="xiabanian">

  <div class="banmian">
  <hr>
   <form method="post" action="ChangePwd" name=pwdform  onsubmit="return isEmpty()">
    <table  align="center" class="banmian" >
      <tr>
        <td align="right" height="40">请输入旧密码：</td>
        <td align="left" height="40"><input type="password" size="30" class="pt95" name="oldpwd"><td>
      </tr>
      <tr>
         <td align="right" height="40">请输入新密码：</td>
         <td align="left" height="40"><input type="password" size="30" class="pt95" name="newpwd1"></td>
      </tr>
      <tr>
         <td align="right" height="40">请再次输入新密码：</td>
         <td align="left" height="40"><input type="password" size="30" name="newpwd2"class="pt95"></td>
      </tr>
       <tr>
         <td align="center" colspan="3" height="40px" valign="bottom"><input type="submit" size="20" class="pt95" value="    保        存    "/></td>
       </tr>
   </table>
  </form>
  </div>
  </body>
   
</html>
