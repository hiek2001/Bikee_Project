<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
   String msg = (String)request.getAttribute("msg");
   String loc = (String)request.getAttribute("loc");
   String script = (String)request.getAttribute("script");  /* 보류 */
   String referer = (String)request.getAttribute("referer");
   
%>
<body>
   <script>
   	
	location.href = "<%=referer %>";
	<%= script != null ? script : "" %>;
   </script>
</body>
</html>