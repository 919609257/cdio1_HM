<%@ page language="java" import="java.util.*,edu.fjnu.hm.dao.*,edu.fjnu.hm.sever.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
DBHelp db=new DBHelp();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Resourcedown.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function download(href){
	window.location.href =href;
	}
	</script>
  </head>
  
  <body>
      <div>
    <%for(HFile file:db.getFile()){ 
    %>
    <div >
    <%=file.getRTitle() %>
    <button onclick="download('<%=file.getRUrl()%>')" >下载</button>
    </div>
    <%} %>
    </div>
  </body>
</html>
