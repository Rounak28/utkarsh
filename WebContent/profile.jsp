<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="<%=session.getMaxInactiveInterval()%>;URL=./Logout.jsp">
<title>Insert title here</title>

<script>
//javascript:window.history.forward(1);
</script>
<%
 response.setHeader("Pragma", "no-cache");
 response.setHeader("Cache-Control","no-store");
 response.setHeader("Expires","0");
 response.setDateHeader("Expiers",-1);
%>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<% 
%>
</body>
</html>