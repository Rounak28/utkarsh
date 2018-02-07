package model;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import Dao.Dao;

public class Model {
private String fname;
private String mname;
private String lname;
private String gender;
private String address;
private String state;
private String city;
private String pincode;
private String phone;
private String pass;
private String email;

private String m1;
private String m2;
private String m3;
private String m4;

public String getMname() {
	return mname;
}
public void setMname(String mname) {
	this.mname = mname;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getPincode() {
	return pincode;
}
public void setPincode(String pincode) {
	this.pincode = pincode;
}
public String getM1() {
	return m1;
}
public void setM1(String m1) {
	this.m1 = m1;
}
public String getM2() {
	return m2;
}
public void setM2(String m2) {
	this.m2 = m2;
}
public String getM3() {
	return m3;
}
public void setM3(String m3) {
	this.m3 = m3;
}
public String getM4() {
	return m4;
}
public void setM4(String m4) {
	this.m4 = m4;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

public boolean register() throws SQLException
{
	
	Dao d=new Dao();
	Connection con = (Connection) d.connect();
	PreparedStatement ps = con.prepareStatement("insert into register(firstname,lastname) values('"+this.fname+"','"+this.lname+"')");
	int rs=ps.executeUpdate();	
	
	if(rs!=0)
	{
		//String un=fname+lname;
	 return true;	
	}
	else{
		//response.sendRedirect("https://google.com/");
		
	}
	return false;
	
}

public boolean login(HttpServletRequest request) throws SQLException
{
	HttpSession session =request.getSession();
	Dao d=new Dao();
	Connection con = d.connect();
	if(con==null) 
	{System.out.println("connection is null");}
	else {
	PreparedStatement ps = con.prepareStatement("select * from admin where email='"+email+"' and password='"+pass+"'");
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		
		//Cookie c=new Cookie("email",e);
		//response.addCookie(c);
		
		session.setAttribute("admin_session", email);
		//session.getAttribute("fname",fname);
	    //session.setMaxInactiveInterval(10);	
		//response.sendRedirect("profile.jsp?msg=success");
		return true;
	}
	}
	return false;
}
}
