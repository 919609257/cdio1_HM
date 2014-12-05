<%@ page language="java" contentType="text/html; charset=utf-8"  import="edu.fjnu.hm.dao.*,java.sql.*,edu.fjnu.hm.sever.*,java.util.*"
pageEncoding="utf-8" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312 ">
<title>处理教师发布的公告</title>
</head>
<body>
     
       <%
       request.setCharacterEncoding("utf-8");
       Notice notice=(Notice)session.getAttribute("currentNotice");
      String rid=request.getParameter("rid");
       String tid=request.getParameter("tid");
       String rtitle=request.getParameter("rtitle");
       String rcontent=request.getParameter("rcontent");
       Dao db=new DaoFromDB();
       Notice not=new Notice();
       not.setRId(rid);
       not.setTId(tid);
       not.setRTitle(rtitle);
       not.setRContent(rcontent);
       if(db.addNotice(not))
         out.println("<h3>"+"公告发布成功"+"</h3>");
       else
    	 out.println("<h3>"+"公告发布失败"+"</h3>");
       %>
     
</body>
</html>