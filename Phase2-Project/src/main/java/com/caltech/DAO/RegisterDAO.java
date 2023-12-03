package com.caltech.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.caltech.dbutil.DbUtil;

public class RegisterDAO {
 public int register(int bid,int pid) throws ClassNotFoundException, SQLException {
	   Connection con=DbUtil.getDbCon();
	   String sql="insert into batchRegister (pid, bid) values(?,?)";
	   PreparedStatement ps=con.prepareStatement(sql);
	   ps.setInt(1, pid);
	   ps.setInt(2,bid);
	   return ps.executeUpdate();
 }
}
