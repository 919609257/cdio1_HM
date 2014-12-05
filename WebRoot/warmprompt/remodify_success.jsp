<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
if(request.getSession().getAttribute("usertype").equals("rd_student"))
out.print("<script>alert('保存成功！');location.href='../ChangePwd1.jsp';</script>"); 
else if(request.getSession().getAttribute("usertype").equals("rd_manager"))
out.print("<script>alert('保存成功！');location.href='../ManMain.jsp';</script>");
else if (request.getSession().getAttribute("usertype").equals("rd_teacher"))
out.print("<script>alert('保存成功！');location.href='../TeaMain.jsp';</script>");
else 
response.sendRedirect("login.jsp");
%>
