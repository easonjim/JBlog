<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
    <head>
    	<title>���ͺ�̨-ҳͷ</title>
    	<base href="<%=basePath%>">
		<link type="text/css" rel="stylesheet" href="<%=path%>/css/style_admin.css">	    	
    </head>
<body background="<%=path%>/images/bg.jpg">
    <table width="100%" height="89" border="0" cellpadding="0" cellspacing="0" >
        <tr>
          <td height="65" colspan="2" background="images/admin_top.jpg">&nbsp;</td>
        </tr>
        <tr>
          <td width="98%" height="24" align="right" bgcolor="#B278A0" class="word_white ">
          	  <a href="index.jsp" class="topA">��ǰ̨��ҳ��</a>
	       	  <a href="LogonServlet?action=logout" class="topA">���˳���¼��</a>
          </td>
          <td width="2%" align="right" bgcolor="#B278A0">&nbsp;</td>
        </tr>
</table> 
</body>
</html>