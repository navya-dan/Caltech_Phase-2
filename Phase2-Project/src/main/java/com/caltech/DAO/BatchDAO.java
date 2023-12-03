package com.caltech.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.caltech.dbutil.DbUtil;
import com.caltech.pojo.Batch;

public class BatchDAO {
	  public int insert(Batch b) throws ClassNotFoundException, SQLException {
		   Connection con=DbUtil.getDbCon();
		   String sql="insert into batch values(?,?,?,?,?)";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setInt(1, b.getBid());
		   ps.setString(2,b.getBname());
		   ps.setString(3,b.getBinstructor());
		   ps.setString(4, b.getDate());
		   ps.setString(5, b.getTime());
		   return ps.executeUpdate();
		   
	   }
	   public List<Batch> getAllBatches() throws ClassNotFoundException, SQLException {
		   Connection con=DbUtil.getDbCon();
		   String sql="select * from batch";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ResultSet rs= ps.executeQuery();
		   List<Batch> list=new ArrayList<>();
		   while(rs.next()) {
			   Batch p=new Batch();
			   p.setBid(rs.getInt(1));
			   p.setBname(rs.getString(2));
			   p.setBinstructor(rs.getString(3));
			   p.setDate(rs.getString(4));
			   p.setTime(rs.getString(5));
			   list.add(p);
		   }
		   return list;
	   }
	   public int update(Batch p) throws ClassNotFoundException, SQLException {
		   Connection con=DbUtil.getDbCon();
		   String sql="update batch set bname=? where bid=?";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setInt(2, p.getBid());
		   ps.setString(1,p.getBname());
		   return ps.executeUpdate();   
	   }
	   public int delete(Batch p) throws ClassNotFoundException, SQLException {
		   Connection con=DbUtil.getDbCon();
		   String sql="delete from batch where bid=?";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setInt(1, p.getBid());
		   return ps.executeUpdate();
		   
	   }
}
