<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.jsoft.jblog.valuebean.PhotoBean" %>

<html>
<head>
	<title>���ͺ�̨-���������Ƭ</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td width="180"><jsp:include page="/admin/view/AdminLeft.jsp"/></td>
                <td width="598" align="center" valign="top">
                	<table border="0" width="95%" cellspacing="0" style="margin-top:10" >
						<tr height="60"><td colspan="4">�������᡿</td></tr>
						<%
							ArrayList photoList=(ArrayList)request.getAttribute("photoList");
                        	if(photoList==null||photoList.size()==0){
                        %>
                        <tr height="100"><td align="center" colspan="4"><li>����Ŀǰ��δ�ϴ��κ���Ƭ��</li></td></tr>
                        <%  
                        	}
                        	else{
                        %>                        
                        <tr align="center" height="50">
                        	<td align="left" ><b>��Ƭ����</b></td>
                       		<td><b>�ϴ�ʱ��</b></td>
                        	<td colspan="2"><b>����</b></td>
                        <tr>
                        <% 		
                        		for(int i=0;i<photoList.size();i++){	
                        			PhotoBean single=(PhotoBean)photoList.get(i);
                        %>
                        <tr height="30">
                           	<td><%=single.getPhotoInfo()%></td>
                           	<td align="center" width="30%"><%=single.getPhotoTime()%></td>
                           	<td align="center" width="15%"><a href="PhotoServlet?action=single&id=<%=single.getId()%>" target="_blank">�鿴��Ƭ</a></td>
                           	<td align="center" width="10%"><a href="PhotoServlet?action=delete&id=<%=single.getId()%>">��ɾ��</a></td>
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