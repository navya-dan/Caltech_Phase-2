package com.caltech.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.caltech.dbutil.DbUtil;

public class AdminLoginDAO {
  public String getCredentials(String uname) throws ClassNotFoundException, SQLException {
	  Connection con=DbUtil.getDbCon();
	  String pwd=null;
	  String sql="select password from admin where userName=?";
	  PreparedStatement ps=con.prepareStatement(sql);
	  ps.setString(1, uname);
	  ResultSet rs=ps.executeQuery();
	  while(rs.next()) {
		  pwd=rs.getString(1);
	  }
	  return pwd;
  }
}
