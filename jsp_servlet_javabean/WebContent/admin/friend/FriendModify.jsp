<%@ page language="java" contentType="text/html; charset=gb2312"%>
<jsp:useBean id="modifySingle" class="com.jsoft.jblog.valuebean.FriendBean" scope="request"/>
<html>
<head>
	<title>���ͺ�̨-�޸ĺ���</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td width="180" valign="top"><jsp:include page="../view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
                	<form action="FriendServlet" method="post">
                	<input type="hidden" name="action" value="modify">
                	<input type="hidden" name="type" value="doModify">                	
                	<input type="hidden" name="id" value="<%=modifySingle.getId()%>">
                	<table border="0" width="90%" height="300" cellspacing="0" cellpadding="8">
                		<tr height="60"><td colspan="2">���޸ĺ��ѡ�</td></tr>
                		<tr>
                			<td align="right" width="25%">����������</td>
                			<td><input type="text" name="name" value="<%=modifySingle.getName() %>" size="40"></td>
                		</tr>
                		<tr>
                			<td align="right">��&nbsp;&nbsp;��</td>
                			<td>
                				<%	if(modifySingle.getSex().equals("Ů")){ %>
								<input type="radio" name="sex" value="��" class="noborder">��
								<input type="radio" name="sex" value="Ů" class="noborder" checked>Ů
								<%	
									}
                					else{
                				%>
                				<input type="radio" name="sex" value="��" class="noborder" checked>��
								<input type="radio" name="sex" value="Ů" class="noborder">Ů
                				<%	} %>
                			</td>
                		</tr>
	               		<tr>
                			<td align="right">QQ���룺</td>
                			<td><input type="text" name="oicq" value="<%=modifySingle.getOicq()%>" size="40"></td>
                		</tr>
                		<tr>
                			<td align="right">BLOG��</td>
                			<td><input type="text" name="blog" value="<%=modifySingle.getBlog() %>" size="60"></td>
                		</tr>
                		<tr height="50">
                			<td colspan="2" align="center">
                				<input type="submit" value="����" class="btn_bg">
                				<input type="reset" value="����" class="btn_bg">
                				<input type="button" value="����" onClick="javascript:window.history.go(-1)" class="btn_bg">
                			</td>
                		</tr>
                	</table>
                	</form>
                </td>
            </tr>
            <tr><td colspan="2"><%@ include file="../view/AdminEnd.jsp" %></td></tr>
        </table>
    </center>
</body>
</html>