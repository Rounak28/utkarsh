<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Dao.Dao" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
{
	
	//String user=(String)session.getAttribute("email");
	Dao d=new Dao();
	Connection con=d.connect();
	PreparedStatement ps =con.prepareStatement("select * from registers");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		String fname = rs.getString (1);
		String lname = rs.getString (2);
	    String pass = rs.getString (4);
		String phone = rs.getString (5);
	
%>

<form action="Profile_update">
<input  name="fname"   type="text"  id="fname" value="<%=fname%>" placeholder="First Name">
<input  name="lname"  type="text" id="lname" value="<%=lname%>" placeholder="Last Name">
<input  name="email" type="hidden" id="emailid" value="<%=email%>" placeholder="Email Address">
<input  name="pass"  type="tel" id="pass" value="<%=pass%>" placeholder="Password">
<input  name="phone"  type="tel" id="phone" value="<%=phone%>" placeholder="Phone">
<input type="submit" value="Update">
<p>
</form>
<% 
}
}
catch (Exception e){
	e.printStackTrace();
}
%>
</body>
</html>