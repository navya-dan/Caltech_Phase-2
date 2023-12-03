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
ParticipantDAO dao=new ParticipantDAO();
Participant p=new Participant();
p.setPid(Integer.parseInt(request.getParameter("id")));

if(dao.delete(p)>0){
	response.sendRedirect("successDelete.jsp");
}
%>
</body>
</html>