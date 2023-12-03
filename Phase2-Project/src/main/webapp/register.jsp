<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.caltech.DAO.ParticipantDAO"%>
<%@page import="com.caltech.DAO.RegisterDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int bid=Integer.parseInt(request.getParameter("id"));
String uname=(String)session.getAttribute("sessionid");
ParticipantDAO dao=new ParticipantDAO();
int pid=dao.getPid(uname);
RegisterDAO rdao=new RegisterDAO();
if(rdao.register(bid, pid)>0){
	response.sendRedirect("successRegister.jsp");
}
%>
</body>
</html>