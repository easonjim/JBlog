<%@ page language="java" contentType="text/html; charset=gb2312"%>
<jsp:useBean id="typeSingle" class="com.jsoft.jblog.valuebean.ArticleTypeBean" scope="request"/>
<html>
<head>
	<title>���ͺ�̨-�޸����</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td valign="top"><jsp:include page="../view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
                	<form action="ArticleServlet" method="post">
                	<input type="hidden" name="action" value="typeModify">
                	<input type="hidden" name="type" value="doModify">
                	<input type="hidden" name="typeId" value="<%=typeSingle.getId() %>">
                	<table border="0" width="99%" cellspacing="0" cellpadding="8">
                		<tr height="60"><td colspan="2">���޸����</td></tr>
                		<tr>
                			<td align="center" width="20%">����ID��</td>
                			<td><%=typeSingle.getId() %></td>
                		</tr>
                		<tr>
                			<td align="center">������ƣ�</td>
                			<td><input type="text" name="typeName" value="<%=typeSingle.getTypeName() %>" size="50"></td>
                		</tr>
                   		<tr>
                			<td align="center">���������</td>
                			<td><input type="text" name="typeInfo" value="<%=typeSingle.getTypeInfo()%>" size="50"></td>
                		</tr>
                		<tr height="50">
                			<td colspan="2" align="center">
                				<input type="submit" value="�޸�" class="btn_bg">
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