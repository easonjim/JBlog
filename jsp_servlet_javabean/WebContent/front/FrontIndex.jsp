<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.List" %>
<%@ page import="com.jsoft.jblog.valuebean.*" %>
<html>
<head>
	<title>������ҳ</title>
</head>
<body>
    <center>
        <table width="778" height="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#F0EAED" style="word-break:break-all">
            <tr height="281"><td colspan="2"><jsp:include page="view/FrontTop.jsp"/></td></tr>
            <tr>
                <td width="230" valign="top"><jsp:include page="view/FrontLeft.jsp"/></td>
                <td width="548" align="center" valign="top">
                    <!-- ��ʾ �ҵ����� -->
                    <table border="0" width="94%" rules="none" cellspacing="0" cellpadding="8" style="margin-top:8">
                        <tr height="40">
                        	<td>���ҵ����¡�</td>
                        	<td align="right"><a href="front/article/ArticleIndex.jsp">����..</a></td>
                        </tr>
                        <%
                           	List articleList=(List)request.getAttribute("articleList");
                        	if(articleList==null||articleList.size()==0){
                        %>
                        <tr height="100"><td align="center"><li>����Ŀǰ��δ�����κ����£�</li></td></tr>
                        <%  
                        	}
                        	else{
                         		int i=0;
                        		while(i<articleList.size()){
                        			ArticleBean articleSingle=(ArticleBean)articleList.get(i);
                        %>
 						<tr>
 							<td class="tdg" colspan="2">
 								��
	 							<a href="ArticleServlet?action=read&id=<%=articleSingle.getId()%>">
 									<b><%=articleSingle.getTitle()%></b>
 								</a>
 								[<%=articleSingle.getCreate()%>]
 							</td>
 						</tr>
 						<tr height="60"><td class="tdg" colspan="2" valign="top"><%=articleSingle.getContent(50) %></td></tr>
 						<tr><td style="text-indent:20" colspan="2"><a href="ArticleServlet?action=read&id=<%=articleSingle.getId()%>">�Ķ�ȫ��</a></td></tr>
 						<tr>
 							<td align="right" colspan="2">
 								����ʱ�䣺<%=articleSingle.getSdTime() %> |
 								���ۣ�<%=articleSingle.getReview() %> |
 								�Ķ���<%=articleSingle.getCount() %> ��
 							</td>
 						</tr>
		                <tr height="1"><td background="images/line.jpg" colspan="2"></td></tr>
                        <%
                        			i++;
                        		}
                        	}
                        %>
                    </table>                    
                    <!-- ��ʾ �ҵ���Ƭ -->
                    <table border="0" width="94%" rules="none" cellspacing="8" style="margin-top:10" >
						<tr height="40">
							<td colspan="2">���ҵ���᡿</td>
							<td colspan="2" align="right"><a href="PhotoServlet?action=list">����..</a>
						</tr>
						<%
                           	List photoList=(List)request.getAttribute("photoList");
                        	if(photoList==null||photoList.size()==0){
                        %>
                        <tr height="100"><td align="center"><li>����Ŀǰ��δ�ϴ��κ���Ƭ��</li></td></tr>
                        <%  
                        	}
                        	else{
                         		int i=0;
                        		while(i<photoList.size()){
                        			PhotoBean photoSingle=(PhotoBean)photoList.get(i);
                        			if(i%4==0)
                        				out.print("<tr align='center' height='90'>");
			                        out.print("<td width='25%' style='border:1 solid'><a href='PhotoServlet?action=single&id="+photoSingle.getId()+"' target='_blank'><img src='"+photoSingle.getPhotoAddr()+"' title='"+photoSingle.getPhotoInfo()+"' border='0' width='120' height='90'></a></td>");
                        			if((i+1)%4==0)
                        				out.print("</tr>");
                        			i++;
                        		}
                        	}
                        %>
                    </table>
                </td>
            </tr>
            <tr height="100"><td colspan="2"><%@ include file="view/FrontEnd.jsp" %></td></tr>
        </table>
    </center>
</body>
</html>