<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
    <head>
    	<title>����-ҳͷ</title>
		<base href="<%=basePath%>">	
		<link type="text/css" rel="stylesheet" href="<%=path%>/css/style.css">	    	
    </head>
	<body background="<%=path%>/images/bg.jpg">
    	<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        	<tr>
            	<td background="images/top.jpg">
                	<table border="0" cellspacing="10" cellpadding="0" style="margin-top:145;margin-left:350">
                    	<tr>
                        	<td class="topTD"><a href="index.jsp" class="topA">������ҳ</a> |</td>
	                        <td class="topTD"><a href="front/article/ArticleIndex.jsp" class="topA">�ҵ�����</a> |</td>
    	                    <td class="topTD"><a href="PhotoServlet?action=list" class="topA">�ҵ����</a> |</td>
        	                <td class="topTD"><a href="FriendServlet?action=list" class="topA">�ҵĺ���</a> |</td>
            	            <td class="topTD"><a href="WordServlet?action=select" class="topA">��������</a> |</td>
            	            <td class="topTD"><a href="LogonServlet?action=islogon" class="topA">������</a></td>
                	    </tr>
	                </table>
    	        </td>
        	</tr>
	    </table> 
	</body>
</html>