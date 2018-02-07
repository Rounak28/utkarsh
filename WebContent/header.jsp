<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="images/motivation-wallpaper-15.jpg">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
header{
box-shadow:2px 2px 1px 1px #8d7672;
text-decoration:none;
word-spacing:2em;
text-color:blue;
padding:20px;
margin-bottom:20px;
background-color:#8d7672;

}

a
{
color:white;
text-decoration:none;
font-style:bold;
}

a:hover
{
color:black;
}

</style>
<script>
/* function show()
 {
 //document.getElementById('show_register').className=document.getElementById('show_register').className='visible_reg';
	// document.getElementById('show_register').remove('hidden');
	 Element = Document.GetElementByID("show_register");
	 Element.RemoveAttribute("class");
	 var attribute=document.createAttribute("class");
	 attribute.nodeValue="visible_reg";
	 Element.setAttributeNode(attribute);
 }*/
</script>
</head>
<header>
<a href="images/images.png" tag="logo"/>
<a href="">About</a>
<%if(session.getAttribute("admin_session")!=null)
{%>
	<a href="customerEntry.jsp">EntryCustomers</a>
	<a href="customerdetails.jsp">Customers</a>
	<a href="logout.jsp">Logout</a>	
<%}
else
{%>
<a href="login.jsp">Login</a>
<%
}
%>
</header>

<a href="">Help</a>
<body>

<!--   <div class="hidden" id="show_register">
<iframe src="register.jsp"></iframe>
</div> -->
</body>
</html>