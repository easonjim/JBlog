<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.List" %>
<%@ page import="com.jsoft.jblog.valuebean.PhotoBean" %>

<html>
<head>
	<title>��������-������Ƭ</title>
</head>
<body>
    <center>
        <table width="778" height="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#F0EAED">
            <tr height="281"><td colspan="2"><jsp:include page="../view/FrontTop.jsp" /></td></tr>
            <tr>
                <td width="230" valign="top"><jsp:include page="../view/FrontLeft.jsp"/></td>
                <td width="548" align="center" valign="top">
                    <table border="0" width="95%" cellspacing="0" style="margin-top:10" >
						<tr height="60"><td align="center">���ҵ���᡿</td></tr>
						<%
                           	List photoList=(List)request.getAttribute("photoList");
                        	if(photoList==null||photoList.size()==0){
                        %>
                        <tr height="100"><td align="center"><li>����Ŀǰ��δ�ϴ��κ���Ƭ��</li></td></tr>
                        <%  
                        	}
                        	else{
                  				out.print("<tr height='120'>");
                  				out.print("<td width='25%' style='padding-left:10'>");
                         		int i=0;
                        		while(i<photoList.size()){
                        			PhotoBean photoSingle=(PhotoBean)photoList.get(i);
                        			out.print("<a href='PhotoServlet?action=single&id="+photoSingle.getId()+"' target='_blank'><img src='"+photoSingle.getPhotoAddr()+"' border='0' width='120' height='120' title='"+photoSingle.getPhotoInfo()+"' style='border:1 solid;border-color:black'></a> ");
                        			i++;
                        		}
                        		out.println("</td>");
                        		out.println("</tr>");
                        	}
                        %>
                    </table>
                </td>
            </tr>
            <tr height="100"><td colspan="2"><%@ include file="../view/FrontEnd.jsp" %></td></tr>
        </table>
    </center>
</body>
</html>