<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.jsoft.jblog.valuebean.ArticleTypeBean" %>
<%
	ArrayList typelist=(ArrayList)session.getAttribute("artTypeList");
%>
<jsp:useBean id="modifySingle" class="com.jsoft.jblog.valuebean.ArticleBean" scope="request"/>
<html>
<head>
	<title>���ͺ�̨-�޸�����</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td  valign="top"><jsp:include page="../view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
                	<form action="ArticleServlet" method="post">
                	<input type="hidden" name="action" value="modify">
                	<input type="hidden" name="type" value="doModify">
                	<input type="hidden" name="id" value="<%=modifySingle.getId() %>">
                	<table border="0" width="100%" cellspacing="0" cellpadding="8">
                		<tr height="30"><td colspan="2">���޸����¡�</td></tr>
                		<tr>
                			<td align="center" width="20%">����ID��</td>
                			<td><%=modifySingle.getId() %></td>
                		</tr>
                		<tr>
                			<td align="center">�������</td>
                			<td>
                				<select name="typeId" style="width:100">
                					<option value=""></option>
                					<% 
                						if(typelist!=null&&typelist.size()!=0){
                							for(int i=0;i<typelist.size();i++){
                								ArticleTypeBean typeBean=(ArticleTypeBean)typelist.get(i);
                								if(typeBean.getId()==modifySingle.getTypeId()){
                					%>
                					<option value="<%=typeBean.getId()%>" selected><%=typeBean.getTypeName() %></option>
                					<%
                								}
                								else{
                									
                					%>
                					<option value="<%=typeBean.getId()%>"><%=typeBean.getTypeName() %></option>
                					<%
                								}
                							}
                						}
                					%>
                				</select>
                			</td>
                		</tr>
                		<tr>
                			<td align="center">���±��⣺</td>
                			<td><input type="text" name="title" value="<%=modifySingle.getTitle() %>" size="77"></td>
                		</tr>
                		<tr>
                			<td align="center">������Դ��</td>
                			<td>
                				<select name="create" style="width:100">
                					<option value=""/>
                					<%	if(modifySingle.getCreate().equals("ԭ��")){ %>
                					<option value="ԭ��" selected>ԭ��</option>
                					<option value="ժ��">ժ��</option>
                					<%	
                						}
	                					if(modifySingle.getCreate().equals("ժ��")){
	                				%>
	                				<option value="ԭ��">ԭ��</option>
                					<option value="ժ��" selected>ժ��</option>		
	                				<%	} %>
                				</select>
                			</td>
                		</tr>
	               		<tr>
                			<td align="center">����������</td>
                			<td><input type="text" name="info" value="<%=modifySingle.getInfo()%>" size="77"></td>
                		</tr>
                		<tr>
                			<td align="center" valign="top">�������ݣ�</td>
                			<td>
                				<textarea name="content" rows="7" cols="65"><%=modifySingle.getContent() %></textarea>
                			</td>
                		</tr>
                		<tr height="25">
                			<td colspan="2" align="center">
                				<input type="submit" value="����" class="btn_bg">
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