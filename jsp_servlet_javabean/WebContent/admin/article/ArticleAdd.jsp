<%@ page import="com.jsoft.jblog.dao.ArticleTypeDao"%>
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.jsoft.jblog.valuebean.ArticleTypeBean" %>
<% ArrayList typelist=(ArrayList)(new ArticleTypeDao().queryTypeList()); %>
<%-- <% ArrayList typelist=(ArrayList)session.getAttribute("artTypeList"); %> --%>
<html>
<head>
	<title>���ͺ�̨-��������</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td valign="top"><jsp:include page="../view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
                	<form action="ArticleServlet" method="post">
                	<input type="hidden" name="action" value="add">
                	<table border="0" width="100%" cellspacing="0" cellpadding="8">
                		<tr height="50"><td colspan="2">���������¡�</td></tr>
                		<tr>
                			<td align="center" width="20%">�������</td>
                			<td>
                				<select name="typeId" style="width:100">
                					<option value=""/>
                					<% 
                						if(typelist!=null&&typelist.size()!=0){
                							for(int i=0;i<typelist.size();i++){
                								ArticleTypeBean typeBean=(ArticleTypeBean)typelist.get(i);
                					%>
                					<option value="<%=typeBean.getId()%>"><%=typeBean.getTypeName() %></option>
                					<%
                							}
                						}
                					%>
                				</select>
                			</td>
                		</tr>
                		<tr>
                			<td align="center">���±��⣺</td>
                			<td><input type="text" name="title" size="77"></td>
                		</tr>
                		<tr>
                			<td align="center">������Դ��</td>
                			<td>
                				<select name="create" style="width:100">
                					<option value=""/>
                					<option value="ԭ��">ԭ��</option>
                					<option value="ժ��">ժ��</option>
                				</select>
                			</td>
                		</tr>
	               		<tr>
                			<td align="center">����������</td>
                			<td><input type="text" name="info" size="77"></td>
                		</tr>
                		<tr>
                			<td align="center" valign="top">�������ݣ�</td>
                			<td>
                				<textarea name="content" rows="8" cols="65"></textarea>
                			</td>
                		</tr>
                		<tr height="30">
                			<td colspan="2" align="center">
                				<input type="submit" class="btn_bg" value="����">
                				<input type="reset"  class="btn_bg" value="����">
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