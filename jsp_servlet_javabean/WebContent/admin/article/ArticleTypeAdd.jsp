<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>
<head>
	<title>���ͺ�̨-����������</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td><jsp:include page="../view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
                    <form action="ArticleServlet" method="post">
                	<input type="hidden" name="action" value="typeAdd">
                	<table border="0" width="80%" cellspacing="0" cellpadding="8">
                		<tr height="60"><td colspan="2">������������</td></tr>
                		<tr>
                			<td align="center">������ƣ�</td>
                			<td><input type="text" name="typeName" size="50"></td>
                		</tr>
	               		<tr>
                			<td align="center">���������</td>
                			<td><input type="text" name="typeInfo" size="50"></td>
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