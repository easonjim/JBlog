<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>
<head>
	<title>��������-�ɹ���ʾ</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0">
            <tr><td colspan="2"><jsp:include page="view/AdminTop.jsp" /></td></tr>
            <tr bgcolor="#F0EAED">
                <td width="180" valign="top" valign="top"><jsp:include page="view/AdminLeft.jsp"/></td>
                <td width="598" align="center" valign="top">
                	<table border="10" bordercolor="lightgrey" rules="none" width="80%" height="200" cellspacing="0" cellpadding="0" style="margin-top:30" >
                  		<tr height="50"><td style="text-indent:20">������ʾ</td></tr>
                  		<tr><td align="center"><%=request.getAttribute("messages") %></td></tr>
                  		<tr><td align="center"><%=request.getAttribute("href") %></td></tr>
            		</table>            		
                </td>
            </tr>
            <tr><td colspan="2"><%@ include file="view/AdminEnd.jsp" %></td></tr>
        </table>
    </center>
</body>
</html>