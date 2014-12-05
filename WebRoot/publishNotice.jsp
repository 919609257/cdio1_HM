<%@ page language="java" contentType="text/html;charset=utf-8" 
         import="edu.fjnu.hm.dao.*,java.sql.*" %>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>教师发布公告专栏</title>
<style>
body 
{
	background-image: url('images/home/publishNotice.jpg');
}
</style>
</head>
<body>
	<h4 aligen="center"  color="red" >全部公告预览</h4>
		<hr>
   <table border=1 bordercolor="#FF0000" bgcolor=#EFEFEF width=1000>
   <tr bgcolor=CCCCCC ALIGN=center>
   <td><b>公告号</b></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <td><b>公告标题</b></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <td><b>公告内容</b></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 	</tr>
	<%!
	   Dao db=new DaoFromDB();
	   ResultSet rs;
	   int x;
	%>
	<%
       rs=db.getAllNotice();
	 rs.beforeFirst();
	  while(rs.next()){
	%>
	<tr align=center>
	  <td><b><%=rs.getString("Rid")%></b></td>
	  <td><b><%=rs.getString("Rtitle")%></b></td>
	  <td><b><%=rs.getString("Rcontent")%></b></td>
	</tr>
	<%
	  }
	  rs.close();
	%>
  </table>	
	<h3>请于此处发布公告:</h3>
	<table>
	<form form method="post" action="dopublishNotice.jsp">
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公告号<input type="text" name="rid">
      工号<input type="text" name="tid">
      标题<input type="text" name="rtitle"><br><br>
	  公告内容<textarea name="rcontent" rows=20 cols=70></textarea>
		<br>
		<br> <input type="submit" value="发布">&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="取消">
	</form>
	</table>
	<h3>请输入您要删除的标题号:</h3>	
	<form form method="post" action="deleteNotice.jsp">
	    标题<input type="text" name="rid"><br><br>
	     <br> <input type="submit" value="删除">&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="取消">
	</form>
	
	
</body>
</html>