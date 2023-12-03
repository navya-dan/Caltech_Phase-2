package com.caltech.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
   public static final String DRIVER_CLASS="com.mysql.cj.jdbc.Driver";
   public static final String DB_URL="jdbc:mysql://localhost:3306/db1";
   public static final String USERNAME="root";
   public static final String PASSWORD="root";
   
   public static Connection getDbCon()throws ClassNotFoundException, SQLException {
	   Class.forName(DRIVER_CLASS);
	   
	   Connection con=DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
	   return con;
   }
}
