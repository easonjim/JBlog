<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="com.jsoft.jblog.valuebean.FriendBean" %>
<html>
<head>
	<title>����-�鿴����</title>
</head>
<body>
    <center>
        <table width="778" height="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#F0EAED">
            <tr height="281"><td colspan="2"><jsp:include page="../view/FrontTop.jsp"/></td></tr>
            <tr>
                <td width="230" valign="top"><jsp:include page="../view/FrontLeft.jsp"/></td>
                <td width="548" align="center" valign="top">
                	<%
                		FriendBean single=(FriendBean)request.getAttribute("friendSingle");
                		if(single==null)
                			out.print("�鿴������Ϣʧ�ܣ�");
                		else{
                	%>
                	<table border="10" bordercolor="lightgrey" rules="none" width="95%" height="300" cellspacing="0" cellpadding="0" style="margin-top:30" >
                		<tr>
                			<td width="30%" align="right">�����ǳƣ�</td>
                			<td style="text-indent:30"><%=single.getName()%></td>
                		</tr>
                		<tr>
                			<td align="right">�Ա�</td>
                			<td style="text-indent:30"><%=single.getSex()%></td>
                		</tr>
                		<tr>
                			<td align="right">QQ���룺</td>
                			<td style="text-indent:30"><%=single.getOicq()%></td>
                		</tr>
                		<tr>
                			<td align="right">���Ѳ��ͣ�</td>
                			<td style="text-indent:30"><a href="#"><%=single.getBlog()%></a></td>
                		</tr>
                	</table>
                	<%	} %>
                	<br>
                	<a href="javascript:window.history.go(-1)">����</a>
                </td>
            </tr>
            <tr height="100"><td colspan="2"><%@ include file="../view/FrontEnd.jsp" %></td></tr>
        </table>
    </center>
</body>
</html>