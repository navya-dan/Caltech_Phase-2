<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.caltech.DAO.AdminLoginDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
AdminLoginDAO dao=new AdminLoginDAO();
String apwd=dao.getCredentials(user);
if(apwd!=null && pwd.equals(apwd)){
  session.setAttribute("sessionid", user);
  response.sendRedirect("adminSuccessful.jsp");
}
else{
	out.print("<h1><i>Login is not Successful</i></h1>");
}
%>
</body>
</html>