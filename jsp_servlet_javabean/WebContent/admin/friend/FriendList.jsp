<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.jsoft.jblog.valuebean.FriendBean" %>
<html>
<head>
	<title>���ͺ�̨-������к���</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td width="180"><jsp:include page="/admin/view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
                	<table border="0" width="540" cellspacing="0" cellpadding="0" rules="none">
						<tr height="60"><td colspan="5">��������к��ѡ�</td></tr>
						<tr height="30" bgcolor="#F5F4F4">
							<td width="30%" style="text-indent:20">��������</td>
							<td align="center" width="25%">�Ա�</td>
							<td align="center" width="25%">OICQ</td>
							<td align="center"width="20%" colspan="2">����</td>
						</tr>
						<%
							ArrayList friendList=(ArrayList)request.getAttribute("friendList");
							if(friendList==null||friendList.size()==0){
						%>
						<tr height="80"><td colspan="5" align="center"><li>û�к��ѿ���ʾ��</li></td></tr>
						<%	
							} 
							else{
    							for(int i=0;i<friendList.size();i++){
    								FriendBean single=(FriendBean)friendList.get(i);    							
						%>
						<tr height="35">
							<td style="text-indent:20"><a href="FriendServlet?action=adminSingle&id=<%=single.getId() %>" class="word_purple "><%=single.getName()%></a></td>
							<td align="center"><%=single.getSex() %></td>
							<td align="center"><%=single.getOicq() %></td>
							<td align="center"><a href="FriendServlet?action=modify&id=<%=single.getId() %>" class="word_purple ">���޸�</a></td>
							<td align="center"><a href="FriendServlet?action=delete&id=<%=single.getId() %>" class="word_purple ">��ɾ��</a></td>							
						</tr>
						<%
    							}
							}
						%>
						
                	</table>
                </td>
            </tr>
            <tr><td colspan="2"><%@ include file="../view/AdminEnd.jsp" %></td></tr>
        </table>
    </center>
</body>
</html>