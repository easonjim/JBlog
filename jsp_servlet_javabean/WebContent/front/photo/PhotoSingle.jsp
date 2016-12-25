<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="com.jsoft.jblog.valuebean.PhotoBean" %>
<html>
<head><title>博客-查看相片</title></head>
<body>
<%
   PhotoBean single=(PhotoBean)request.getAttribute("photoSingle");
   if(single==null)
	   out.print("查看图片失败！");
   else{
%>
   <img src="<%=single.getPhotoAddr()%>" >
<% } %>
</body>
</html>