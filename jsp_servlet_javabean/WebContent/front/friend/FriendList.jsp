<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.List" %>
<%@ page import="com.jsoft.jblog.valuebean.FriendBean" %>
<html>
<head>
	<title>��������-���к���</title>
</head>
<body>
    <center>
        <table width="778" height="600" border="0" cellspacing="0" cellpadding="0" bgcolor="#F0EAED">
            <tr height="281"><td colspan="2"><jsp:include page="../view/FrontTop.jsp" /></td></tr>
            <tr>
                <td width="230" valign="top"><jsp:include page="../view/FrontLeft.jsp"/></td>
                <td width="548" align="center" valign="top">
	                <table border="0" width="95%" style="margin-top:10" >
						<tr height="60"><td colspan="4">���ҵĺ��ѡ�</td></tr>                
                		<% 
					       	List friendlist=(List)request.getAttribute("friendList"); 
        		    		if(friendlist==null||friendlist.size()==0)
			    		       	out.print("<tr height='60'><td align='center'>����Ŀǰ��δ����κκ��ѣ�</td></tr>");
		            		else{                          
           						int i=0;
                       			while(i<friendlist.size()){
                       				FriendBean friendSingle=(FriendBean)friendlist.get(i);
                       				String sexImg="front/friend/pic/";
                       				if(friendSingle.getSex().equals("��"))
                       					sexImg+="man.jpg";
                       				else if(friendSingle.getSex().equals("Ů"))
                       					sexImg+="women.jpg";
	                    %>
 						<tr height="30">
 							<td align="center" width="10%"><img src="<%=sexImg%>" border="1 solid"></td>
 							<td align="center"><a href="FriendServlet?action=single&id=<%=friendSingle.getId()%>"><%=friendSingle.getName()%></a></td>
 							<td align="center" width="5%"><img src="front/friend/pic/hand.jpg"></td>
 							<td align="center" width="13%"><a href="<%=friendSingle.getBlog()%>">���Ѳ���</a></td>
 						</tr>
                        <%
                        			i++;
                        		}
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