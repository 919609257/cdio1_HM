<%@ page language="java" import="java.util.*,edu.fjnu.hm.sever.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.getAttribute("manager");
Manager man=(Manager)request.getAttribute("manager");
%>
<jsp:include page="ManMain.jsp" flush="true" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="http://localhost:8080/cdio1_HM/">
    
    <title>My JSP 'userInfo.jsp' starting page</title>
    
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
         top:170px;
	}
	</style>
	<script type="text/javascript">  
    //��ȡ�ϴ�ͼƬ�ı���·��   
    function getPath(obj){   
        if(obj) {   
            if(navigator.userAgent.indexOf("MSIE")>0) {  
                obj.select();   
                //IE��ȡ��ͼƬ�ı���·��   
                return document.selection.createRange().text;  
            } else if(isFirefox=navigator.userAgent.indexOf("Firefox")>0) {  
                 if (obj.files) {  // Firefox��ȡ�õ���ͼƬ������   
                    return files.item(0).getAsDataURL();   
                 }   
                 return obj.value;   
             }  
             return obj.value;   
        }   
    }     
          
    function PreviewImg(img) {  
          
        var imgPath = getPath(img);  
          
        //Ԥ��ͼƬ��div  
        var newPreview = document.getElementById("preview");  
          
        //�����ϴ���ͼƬ��ʽ  
            newPreview.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";    
            newPreview.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgPath;  
            newPreview.style.width = "120px";    
            newPreview.style.height = "140px";       
  
    }  
    // -->  
</script>
	
   
  </head>
  
  <body >

  <div class="banmian">
  <hr>
  <form  action="manSave" method="post" >
         <table border="1" cellspacing="" cellpadding="" align="center">
           <tr height="40" align="center">
			  <td width="30%" align="right">���ţ�</td>
			  <td><input type="text" size="29" name="userid"  disabled value=<%=request.getSession().getAttribute("username")%>></td>
			
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">������</td>
			  <td><input type="text" size="29" name="username" value=<%=man.getMName() %>></td>	  
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">�Ա�</td>
			  <td><input type="text" size="29" name="sex" value=<%=man.getMSex() %>></td>
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">���᣺</td>
			  <td><input type="text" size="29" name="mnp" value=<%=man.getMNP() %>></td>
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">������ò��</td>
			  <td><input type="text" size="29" name="mpc" value=<%=man.getMPC() %>></td>
			  
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">�������ڣ�</td>
			  <td><input type="text" size="29" name="mdate" value=<%=man.getDatetime() %>></td>
			  <td  align="right">&nbsp;&nbsp;&nbsp;&nbsp;���壺</td>
			  <td align="left"><input type="text" name="mnation" value=<%=man.getMNation() %>></td>
		    </tr>
		    <tr height="40" align="center">
			  <td width="30%" align="right">�绰���룺</td>
			  <td><input type="text" size="29" name="mtel" value=<%=man.getMTel() %>></td>
			  <td align="right">&nbsp;&nbsp;&nbsp;&nbsp;���֤���룺</td>
			  <td align="left"><input type="text" size="29" name="micn" value=<%=man.getMICN() %>></td>
		    </tr> 
		    <tr height="40" align="center">
			  <td width="30%" align="right">��ͥסַ��</td>
			  <td colspan="3"><input type="text" size="90" name="mbp" value=<%=man.getMBP() %>></td>
		    </tr>
		    <tr  height="60" align="center">
			  <td  colspan="4"><input type="submit" size="29" value="�����޸�"></td>
		    </tr>
		    
         </table>
      </form>
     <form name="form1" METHOD="POST" ACTION="./do_upload.jsp" ENCTYPE="multipart/form-data" >
     <table  class="tupian">
     <tr>
     <td align="center"><img alt="" src="./images/header/<%=man.getMImage()%>" width="120" height="140" id="preview" border="2"></td>
     </tr>
     <tr>
               
              <td > <input type="file" name="file1" size="30" onchange="PreviewImg(this)"> </td>       
              <td > <INPUT type='submit' value='�ϴ�' ></td>
       </tr>
      </table>
     </form>
  </div>
  </body>
  </html>
