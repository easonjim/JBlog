<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>
<head>
	<title>���ͺ�̨-�ϴ���Ƭ</title>
</head>
<body>
    <center>
        <table width="778"  border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td ><jsp:include page="../view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
                    <form action="PhotoServlet?action=upload" method="POST" enctype="multipart/form-data">
                	<table border="0" width="100%" cellspacing="0" cellpadding="8">
                		<tr height="60"><td colspan="2">���ϴ���Ƭ��</td></tr>
                		<tr>
                			<td align="center">ѡ����Ƭ��</td>
                			<td><input type="file" name="path" size="50"></td>
                		</tr>
	               		<tr>
                			<td align="center">��Ƭ������</td>
                			<td><input type="text" name="info" size="63"></td>
                		</tr>
                		<tr height="50">
                			<td colspan="2" align="center">
                				<input type="submit" value="�ϴ�" class="btn_bg">
                				<input type="reset" value="����" class="btn_bg">
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