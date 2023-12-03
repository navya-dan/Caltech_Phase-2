package com.caltech.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.caltech.dbutil.DbUtil;
import com.caltech.pojo.Participant;

public class ParticipantDAO {
   public int insert(Participant p) throws ClassNotFoundException, SQLException {
	   Connection con=DbUtil.getDbCon();
	   String sql="insert into participant values(?,?,?,?,?)";
	   PreparedStatement ps=con.prepareStatement(sql);
	   ps.setInt(1, p.getPid());
	   ps.setString(2,p.getPname());
	   ps.setString(3,p.getPassword());
	   ps.setString(4, p.getEmail());
	   ps.setString(5, p.getAddress());
	   return ps.executeUpdate();
	   
   }
   public List<Participant> getAllParticipants() throws ClassNotFoundException, SQLException {
	   Connection con=DbUtil.getDbCon();
	   String sql="select * from participant";
	   PreparedStatement ps=con.prepareStatement(sql);
	   ResultSet rs= ps.executeQuery();
	   List<Participant> list=new ArrayList<>();
	   while(rs.next()) {
		   Participant p=new Participant();
		   p.setPid(rs.getInt(1));
		   p.setPname(rs.getString(2));
		   p.setPassword(rs.getString(3));
		   p.setEmail(rs.getString(4));
		   p.setAddress(rs.getString(5));
		   list.add(p);
	   }
	   return list;
   }
   public int update(Participant p) throws ClassNotFoundException, SQLException {
	   Connection con=DbUtil.getDbCon();
	   String sql="update participant set pname=? where pid=?";
	   PreparedStatement ps=con.prepareStatement(sql);
	   ps.setInt(2, p.getPid());
	   ps.setString(1,p.getPname());
	   return ps.executeUpdate();   
   }
   public int delete(Participant p) throws ClassNotFoundException, SQLException {
	   Connection con=DbUtil.getDbCon();
	   String sql="delete from participant where pid=?";
	   PreparedStatement ps=con.prepareStatement(sql);
	   ps.setInt(1, p.getPid());
	   return ps.executeUpdate();
	   
   }
   public String getCredentials(String uname) throws ClassNotFoundException, SQLException {
	   Connection con=DbUtil.getDbCon();
		  String pwd=null;
		  String sql="select password from participant where pname=?";
		  PreparedStatement ps=con.prepareStatement(sql);
		  ps.setString(1, uname);
		  ResultSet rs=ps.executeQuery();
		  while(rs.next()) {
			  pwd=rs.getString(1);
		  }
		  return pwd;
   }
   public int getPid(String uname) throws ClassNotFoundException, SQLException {
	   Connection con=DbUtil.getDbCon();
		  int pid = 0;
		  String sql="select pid from participant where pname=?";
		  PreparedStatement ps=con.prepareStatement(sql);
		  ps.setString(1, uname);
		  ResultSet rs=ps.executeQuery();
		  while(rs.next()) {
			  pid=Integer.parseInt(rs.getString(1));
		  }
		  return pid;
   }
}
