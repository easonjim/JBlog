<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.jsoft.jblog.valuebean.ArticleBean" %>
<%@ page import="com.jsoft.jblog.valuebean.ArticleTypeBean" %>
<html>
<head>
	<title>���ͺ�̨��ҳ</title>
</head>
<body>
    <center>
        <table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="word-break:break-all">
            <tr><td colspan="2"><%@ include file="../view/AdminTop.jsp" %></td></tr>
            <tr>
                <td ><jsp:include page="/admin/view/AdminLeft.jsp"/></td>
                <td align="center" valign="top">
                	<table width="560" border="0" cellspacing="0" cellpadding="0" rules="none">
						<tr height="60"><td colspan="4">��������¡�</td></tr>
						<tr>
							<td align="right" colspan="4">
								<form action="ArticleServlet" method="post">
									<input type="hidden" name="action" value="adminSelectList">
									�������
									<select name="typeId">
										<option value=""></option>
										<%
            	            				ArrayList typelist=(ArrayList)session.getAttribute("artTypeList");
		        	                		if(typelist==null||typelist.size()==0){
        		    	            	%>
        		        	        	<option value="">û��������ʾ</option>
        		            	    	<%
		                        			}
		                        			else{
		                        				for(int i=0;i<typelist.size();i++){
		                        					ArticleTypeBean single=(ArticleTypeBean)typelist.get(i);
			                        	%>
			                        	<option value="<%=single.getId() %>"><%=single.getTypeName() %></option>
			                        	<%
		    	                    			}
		        	                		}
        		    	            	%>
									</select>
									<input type="submit" value="��ʾ" class="btn_bg">	
								</form>
							</td>
						</tr>
						<tr height="30" bgcolor="#F5F4F4">
							<td width="55%" style="text-indent:20">���±���</td>
							<td align="center" width="30%">����ʱ��</td>
							<td align="center"width="15%" colspan="2">����</td>
						</tr>
						<%
							ArrayList articlelist=(ArrayList)request.getAttribute("articleList");
							if(articlelist==null||articlelist.size()==0){
						%>
						<tr height="80"><td colspan="4" align="center"><li>û�����¿���ʾ��</li></td></tr>
						<%	
							} 
							else{
    							for(int i=0;i<articlelist.size();i++){
    								ArticleBean single=(ArticleBean)articlelist.get(i);    							
						%>
						<tr height="35">
							<td style="text-indent:20"><a href="ArticleServlet?action=adminSelectSingle&id=<%=single.getId()%>" class="word_purple "><%=single.getTitle(22)%></a></td>
							<td align="center"><%=single.getSdTime() %></td>
							<td align="center"><a href="ArticleServlet?action=modify&id=<%=single.getId() %>&typeId=<%=single.getTypeId()%>" class="word_purple ">���޸�</a></td>
							<td align="center"><a href="ArticleServlet?action=delete&id=<%=single.getId() %>&typeId=<%=single.getTypeId()%>" class="word_purple ">��ɾ��</a></td>							
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