<%@ page contentType="text/html; charset=GBK" %>
<%@ page language="java" import="com.jspsmart.upload.*,java.io.*"%>
<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%
long timeset=System.currentTimeMillis();//生成时间戳，作为文件名
String info="";
mySmartUpload.initialize(pageContext);
String fileName="";
mySmartUpload.upload();
String filesession="";

com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);
if (!myFile.isMissing()) {
  String uploadfilename = "";
  uploadfilename  =   myFile.getFileName();
  int location = uploadfilename.lastIndexOf(".");
  String suffixFilename = uploadfilename.substring(location + 1,uploadfilename.length());
  uploadfilename  =   timeset + "." + suffixFilename;
  fileName=uploadfilename;
  myFile.saveAs("./images/header/" + uploadfilename);
  request.getSession().setAttribute("mimage", uploadfilename);
  response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.print("<script>alert('上传成功');location.href='manSave';</script>"); 
		out.println("</HTML>");
		out.flush();
		out.close();
}
%>

