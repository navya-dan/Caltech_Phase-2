<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.caltech.DAO.ParticipantDAO"%>
<%@page import="com.caltech.pojo.Participant" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<%
ParticipantDAO dao=new ParticipantDAO();
Participant p=new Participant();
p.setPid(Integer.parseInt(request.getParameter("id")));
p.setPname(request.getParameter("name"));
if(dao.update(p)>0){
	response.sendRedirect("successEdit.jsp");
}
%>
</body>
</html>