<%@ page language="java" import="java.util.*,edu.fjnu.hm.sever.Notice,edu.fjnu.hm.dao.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
NoticeDaoSql dao=new NoticeDaoSql();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'noticeWeb.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div id="notice" >
<table width="1250px"  border="1">
  <tr>
    <th>公告标题</th>
    <th>公告内容</th>
    <th>发布人</th>
  </tr>
    <%for(Notice noti:dao.listNotice()){
 %>
  <tr>

    <td><%=noti.getRTitle()%></td>
    <td><%=noti.getRContent()%></td>
    <td><%=noti.getTId()%></td>

  </tr>
       <%
 } %>
 </table>
</div>
  </body>
</html>
