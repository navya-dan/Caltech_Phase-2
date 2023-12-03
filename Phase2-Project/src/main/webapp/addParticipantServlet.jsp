<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.caltech.pojo.Participant" %>
<%@page import="com.caltech.DAO.ParticipantDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Participant p=new Participant();
ParticipantDAO dao= new ParticipantDAO();
p.setPid(Integer.parseInt(request.getParameter("pid")));
p.setPname(request.getParameter("pname"));
p.setPassword(request.getParameter("pwd"));
p.setEmail(request.getParameter("email"));
p.setAddress(request.getParameter("address"));
if(dao.insert(p)>0){
	response.sendRedirect("success.jsp");
}
%>
</body>
</html>