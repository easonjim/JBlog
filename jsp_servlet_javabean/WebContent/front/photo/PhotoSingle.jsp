<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="com.jsoft.jblog.valuebean.PhotoBean" %>
<html>
<head><title>����-�鿴��Ƭ</title></head>
<body>
<%
   PhotoBean single=(PhotoBean)request.getAttribute("photoSingle");
   if(single==null)
	   out.print("�鿴ͼƬʧ�ܣ�");
   else{
%>
   <img src="<%=single.getPhotoAddr()%>" >
<% } %>
</body>
</html>