<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
center
{
  font-size:40px  
}
fieldset
{
padding:30px;
width: default;
height: default;
box-shadow:2px 2px 5px 4px BLACK;
}
input.zac{
width: 240px;
height:25px;
margin:10px;
border:white;
font-size:1em;
font: 20px arial, sans-serif;
font-variant: arial;
border-bottom: groove;
 }
 select
 {
 font-size:16px;
 border:white;
 }
</style>
<script>
var count=0;
function generateBox()
{
	count++;
//var param=document.getElementByID("m").value;	
 		document.getElementById("here"+count).innerHTML="<p><input class='zac' type='text' placeholder='Enter memeber name' name='m"+count+"'><p>";
 }
</script>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<fieldset>
<center>Entry</center>

<form action="Register" method="POST" enctype="multipart/form-data">
<input class="zac" name="fname" type="text" id="fname" placeholder="First Name">
<input class="zac" name="mname" type="text" id="mname" placeholder="Middle Name">
<input class="zac" name="lname" type="text" id="lname" placeholder="Last Name">
<p>
<select>
<option name="gender">Gender</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>
<p>
<input class="zac" name="address" type="text" id="address" placeholder="Address">
<p>
  <script language="Javascript" src="jquery.js"></script>
    <script type="text/JavaScript" src='state.js'></script>
      <div id="selection">
        <select id="listBox" name="State" onchange='selct_district(this.value)'></select>
        <p>
        <select id='secondlist' name="city"></select>
      </div>
      <div id="dumdiv" align="center" style=" font-size: 10px;color: #dadada;">
       <p>
        <a id="dum"></a>
      </div>
<p>
<input class="zac" type="text" name="pincode" placeholder="Pincode">
<p>
<input class="zac" name="email" type="email" id="emailid" placeholder="Email Address">
<p>
<input class="zac" name="phone" type="tel" id="phone" placeholder="Phone no.">
<p> 
Details of Family-
<p>
<p id="here1"></p>
<p id="here2"></p>
<p id="here3"></p>
<p id="here4"></p>
<button type="button" onclick="generateBox();">Add member</button>
<p>
<%
  //path=path+"images\\";
  String src="profile.jpg";
%>
<img src="images\<%=src%>" border="black"; style="width:100px; height:150px; margin:10px;">
<input type="file" name="file" accept="image/jpg" onchange="this.form.submit();">
</form>
</fieldset>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>