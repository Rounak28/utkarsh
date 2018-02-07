package controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import com.oreilly.servlet.MultipartRequest;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.Model;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String path=getServletContext().getRealPath("");
		path=path+"images\\";
		MultipartRequest mr=new MultipartRequest(request,path,10*1024*1024);
		String fname=request.getParameter("fname");  
		String mname=mr.getParameter("mname");  
		String lname=mr.getParameter("lname"); 
		String gender=mr.getParameter("gender");
		String address=mr.getParameter("address"); 
		String state=mr.getParameter("state"); 
		String city=mr.getParameter("city");
		String pincode=mr.getParameter("pincode"); 
		String email=mr.getParameter("email");  
		String pass=mr.getParameter("pass");  
		String phone=mr.getParameter("phone");	
		String member1=mr.getParameter("m1");
		String member2=mr.getParameter("m2");
		String member3=mr.getParameter("m2");
		String member4=mr.getParameter("m2");
		System.out.println(email);
		
		//System.out.println(path);
		String upath=path+email+".jpg";
		File f=mr.getFile("file");
		File newFile=new File(upath);
		newFile.delete();
		f.renameTo(newFile);
		
	f.renameTo(newFile);
	//System.out.println(f.getPath());
		Model m= new Model();
		m.setFname(fname);
		m.setLname(lname);
		m.setEmail(email);
		m.setPhone(phone);
		m.setPass(pass);
	    m.setAddress(address);
	    m.setCity(city);
	    m.setGender(gender);
	    m.setMname(mname);
	    m.setState(state);
	    m.setPincode(pincode);
		try {
			if(m.register())
			{
				response.sendRedirect("profile.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
