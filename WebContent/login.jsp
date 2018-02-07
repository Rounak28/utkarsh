<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

form
{
 padding:100px;
}
div,input,submit{

width: 190px;
height:25px;
margin:10px;
border:white;
font-size:1em;
font: 20px arial, sans-serif;
font-variant: arial;
border-bottom: groove;

 }
</style>
</head>
<p></p>
<jsp:include page="header.jsp"></jsp:include>
<body>
<form method="post" action="Login">
<input type="text" name="email" placeholder="Email Id"/>
<p>
<input type="password" name="pass" placeholder="Password"/>
<p>
<input type="submit">
</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>