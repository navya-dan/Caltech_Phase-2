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
BatchDAO dao=new BatchDAO();
Batch p=new Batch();
p.setBid(Integer.parseInt(request.getParameter("id")));
if(dao.delete(p)>0){
	response.sendRedirect("successBatchDelete.jsp");
}
%>
</body>
</html>