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
    
    <title>My JSP 'Adduser.jsp' starting page</title>
    
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
	.tupian{
	position:absolute;
	     left:800px;
         top:200px;
         }
	</style>
	
   
  </head>
  
  <body >

  <div class="banmian">
  <hr>
  <form  action="AddUser" method="post">
         <table border="1" cellspacing="" cellpadding="" align="center">
         <tr height="40" align="center">
			  <td width="30%" align="center" colspan="4">请选择用户类型：&nbsp;&nbsp;&nbsp;&nbsp;
			   <select name="usertype" id="kind"> 
		           <option value="1">教师</option> 
		             <option value="2">学生</option> 
	              </select> 
	              </td>
		    </tr>
           <tr height="40" align="center">
			  <td width="30%" align="right">工号：</td>
			  <td align="left"><input type="text" size="29" name="userid" ></td>
			  
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">姓名：</td>
			  <td align="left"><input type="text" size="29" name="username" ></td>
			  			  
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">性别：</td>
			  <td align="left"><input type="text" size="29" name="sex"></td>
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">籍贯：</td>
			  <td align="left"><input type="text" size="29" name="mnp"></td>
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">政治面貌：</td>
			  <td align="left"><input type="text" size="29" name="mpc"></td>
			  
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">出生日期：</td>
			  <td align="left"><input type="text" size="29" name="mdate" ></td>
			  <td  align="right">&nbsp;&nbsp;&nbsp;&nbsp;民族：</td>
			  <td align="left"><input type="text" size="29" name="mnation" ></td>
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">电话号码：</td>
			  <td align="left"><input type="text" size="29" name="mtel" ></td>
			  <td align="right">&nbsp;&nbsp;&nbsp;&nbsp;身份证号码：</td>
			  <td align="left"><input type="text" size="29" name="micn" ></td>
		    </tr> 
		    <tr height="40" align="center">
			  <td width="30%" align="right">家庭住址：</td>
			  <td colspan="3" align="left"><input type="text" size="90" name="mbp" ></td>
		    </tr>
		    <tr  height="60" align="center">
			  <td  colspan="4"><input type="submit" size="29" value="保存修改"></td>
		    </tr>
		    
         </table>
      </form>
      <form name="form1" METHOD="POST" ACTION="./do_upload.jsp" ENCTYPE="multipart/form-data" >
     <table  class="tupian">
     <tr>
     <td align="center"><img alt="" src="" width="120" height="140" id="preview" border="2"></td>
     </tr>
     <tr>
               
              <td > <input type="file" name="file1" size="30" onchange="PreviewImg(this)"> </td>       
              <td > <INPUT type='submit' value='上传' ></td>
       </tr>
      </table>
     </form>
  </div>
  </body>
</html>
