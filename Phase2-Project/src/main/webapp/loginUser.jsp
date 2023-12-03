<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.caltech.DAO.ParticipantDAO"%>
<%@page import="com.caltech.pojo.Participant" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
ParticipantDAO dao=new ParticipantDAO();
String upwd=dao.getCredentials(uname);
if(upwd!=null && pwd.equals(upwd)){
  session.setAttribute("sessionid",uname);
  response.sendRedirect("loginSuccessful.jsp");
}
else{
	out.print("<h1><i>Login is not Successful</i></h1>");
}
%>
</body>
</html>