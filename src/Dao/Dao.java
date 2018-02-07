package Dao;

import java.sql.*;

import com.sun.corba.se.pept.transport.Connection;

public class Dao {

	 public java.sql.Connection connect(){
			try{
				
				Class.forName("com.ibm.db2.jcc.DB2Driver");
				java.sql.Connection con=null;
				con=DriverManager.getConnection("jdbc:db2://localhost:50000/utkarsh","ronakrky","killall");
				if(con!=null)
					return con;
			}
			catch(Exception e)
			{
				
			}
			return null;
			}
}
