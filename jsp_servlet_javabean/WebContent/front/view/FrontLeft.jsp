<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.util.List" %>
<%@page import="com.jsoft.jblog.valuebean.MasterBean"%>
<%@page import="com.jsoft.jblog.valuebean.WordBean"%>
<%@page import="com.jsoft.jblog.valuebean.ArticleBean"%>
<%@page import="com.jsoft.jblog.valuebean.FriendBean"%>
<html>
    <head>
    	<title>����-����</title>
    </head>
<body>
    <center>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td valign="top">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr height="29"><td background="images/left_T.jpg" style="text-indent:45;padding-top:8"><b><font color="white">������Ϣ</font></b></td></tr>
                    <tr height="40">
                    	<td background="images/left_M.jpg" style="text-indent:30">
                    		����������<%=((MasterBean)session.getAttribute("master")).getMasterName() %>
                    	</td>
                    </tr>
                    <tr height="40">
                    	<td background="images/left_M.jpg" style="text-indent:30">�����Ա�<%=((MasterBean)session.getAttribute("master")).getMasterSex()%></td>
                    </tr> 
                    <tr height="40">
                    	<td background="images/left_M.jpg" style="text-indent:30">QQ���룺<%=((MasterBean)session.getAttribute("master")).getMasterOicq()%></td>
                    </tr>                    
                    <tr height="16"><td background="images/left_E.jpg" bgcolror="";></td></tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr height="29"><td background="images/left_T.jpg" style="text-indent:45;padding-top:8"><b><font color="white">��������</font></b></td></tr>
                    <%
                        List wordlist=(List)session.getAttribute("wordList");
                    	if(wordlist==null||wordlist.size()==0)
                    		out.print("<tr height='100'><td align='center' background='images/left_M.jpg'>û�����Կ���ʾ��</td></tr>");
                    	else{
                    		int i=0;
                    		while(i<wordlist.size()){
                    			WordBean wordSingle=(WordBean)wordlist.get(i);
                    %>
                    <tr height="25" valign="bottom">
                    	<td style="text-indent:25" background="images/left_M.jpg">
                    		<a href="WordServlet?action=select"><%=wordSingle.getWordTitle(15)%></a>
                    	</td>
                    </tr>
                    <%	
	                    		i++;
                    		}
                    	} 
                    %>
                    <tr height="16"><td background="images/left_E.jpg"></td></tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table width="100%" height="60" border="0" cellspacing="0" cellpadding="0">
                    <tr height="29"><td background="images/left_T.jpg" style="text-indent:45;padding-top:8"><b><font color="white">�����Ƽ�</font></b></td></tr>
                    <%
                        List artTJlist=(List)session.getAttribute("artTJList");
                    	if(artTJlist==null||artTJlist.size()==0)
                    		out.print("<tr height='100'><td align='center' background='images/left_M.jpg'>û���Ƽ����¿���ʾ��</td></tr>");
                    	else{
                    		int i=0;
                    		while(i<artTJlist.size()){
                    			ArticleBean articleSingle=(ArticleBean)artTJlist.get(i);
                    %>
                    <tr height="25" valign="bottom">
                    	<td style="text-indent:25" background="images/left_M.jpg">
                    		<a href="ArticleServlet?action=read&id=<%=articleSingle.getId()%>"><%=articleSingle.getTitle(15) %></a>
                    	</td>
                    </tr>
                    <%	
	                    		i++;
                    		}
                    	} 
                    %>
                    <tr height="16"><td background="images/left_E.jpg"></td></tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr height="29"><td background="images/left_T.jpg" style="text-indent:45;padding-top:8"><b><font color="white">���Ѳ���</font></b></td></tr>
                    <%
                        List friendlist=(List)session.getAttribute("friendList");
                    	if(artTJlist==null||friendlist.size()==0)
                    		out.print("<tr height='100'><td align='center' background='images/left_M.jpg'>����Ŀǰ��δ����κκ��ѣ�</td></tr>");
                    	else{
                    		int i=0;
                    		while(i<friendlist.size()){
                    			FriendBean friendSingle=(FriendBean)friendlist.get(i);
                    %>
                    <tr height="25" valign="bottom">
                    	<td style="text-indent:25" background="images/left_M.jpg">
                    		<a href="<%=friendSingle.getBlog() %>"><%=friendSingle.getName() %></a>
                    	</td>
                    </tr>
                    <%	
	                    		i++;
                    		}
                    	} 
                    %>
                    <tr height="16"><td background="images/left_E.jpg"></td></tr>
                </table>
            </td>
        </tr>
        <tr><td></td></tr>
    </table>
    </center> 
</body>
</html>