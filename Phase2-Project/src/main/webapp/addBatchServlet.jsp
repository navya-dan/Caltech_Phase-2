<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.caltech.DAO.BatchDAO"%>
<%@page import="com.caltech.pojo.Batch" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Batch b=new Batch();
BatchDAO dao= new BatchDAO();
b.setBid(Integer.parseInt(request.getParameter("bid")));
b.setBname(request.getParameter("bname"));
b.setBinstructor(request.getParameter("ins"));
b.setDate(request.getParameter("date"));
b.setTime(request.getParameter("time"));
if(dao.insert(b)>0){
	response.sendRedirect("successBatch.jsp");
}
%>
</body>
</html>