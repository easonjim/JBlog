<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.jsoft.jblog.valuebean.FriendBean" %>
<html>
<head>
	<title>���ͺ�̨-������к���</title>
</head>
<body>
    <center>
        <table width="778"  border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td ><jsp:include page="/admin/view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
					<%
                		FriendBean single=(FriendBean)request.getAttribute("friendSingle");
                		if(single==null)
                			out.print("�鿴������Ϣʧ�ܣ�");
                		else{
                	%>
                	<table border="0" rules="none" width="530" height="197" cellspacing="0" cellpadding="0" style="margin-top:30" >
                		<tr>
                			<td width="30%" align="right">�����ǳƣ�</td>
                			<td style="text-indent:30"><%=single.getName()%></td>
                		</tr>
                		<tr>
                			<td align="right">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
                			<td style="text-indent:30"><%=single.getSex()%></td>
                		</tr>
                		<tr>
                			<td align="right">QQ&nbsp;��&nbsp;�룺</td>
                			<td style="text-indent:30"><%=single.getOicq()%></td>
                		</tr>
                		<tr>
                			<td align="right">���Ѳ��ͣ�</td>
                			<td style="text-indent:30"><a href="#" class="word_purple"><%=single.getBlog()%></a></td>
                		</tr>
                	</table>
                	<%	} %>
                	<br>
                	<input type="button" value="��&nbsp;��" class="btn_bg" onClick="javascript:window.history.go(-1)">
                </td>
            </tr>
            <tr><td colspan="2"><%@ include file="../view/AdminEnd.jsp" %></td></tr>
        </table>
    </center>
</body>
</html>