<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>
<head>
	<title>���ͺ�̨-��Ӻ���</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td width="180" valign="top"><jsp:include page="../view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
                	<form action="FriendServlet" method="post">
                	<input type="hidden" name="action" value="add">
                	<table border="0" width="90%" height="300" cellspacing="0" cellpadding="8">
                		<tr height="60"><td colspan="2">����Ӻ��ѡ�</td></tr>
                		<tr>
                			<td align="right" width="25%">����������</td>
                			<td><input type="text" name="name" size="40"></td>
                		</tr>
                		<tr>
                			<td align="right">��&nbsp;&nbsp;��</td>
                			<td>
								<input type="radio" name="sex" value="��" class="noborder" checked="checked">��
								<input type="radio" name="sex" value="Ů" class="noborder">Ů
                			</td>
                		</tr>
	               		<tr>
                			<td align="right">QQ���룺</td>
                			<td><input type="text" name="oicq" size="40"></td>
                		</tr>
                		<tr>
                			<td align="right">BLOG��</td>
                			<td><input type="text" name="blog" size="60"></td>
                		</tr>
                		<tr height="50">
                			<td colspan="2" align="center">
                				<input type="submit" class="btn_bg" value="����">
                				<input type="reset" class="btn_bg" value="����">
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