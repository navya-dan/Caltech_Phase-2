<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.caltech.DAO.BatchDAO"%>
<%@page import="com.caltech.pojo.Batch" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addBatch.jsp">
 <input type="submit" value="Add Batch">
</form>
<%
BatchDAO dao=new BatchDAO();
List<Batch> list=dao.getAllBatches();
%>
<table border="1">
<tr><th>Batch ID</th><th>Batch Name</th><th>Instructor</th><th>Date</th><th>Time</th>
<th>Edit</th>
<th>Delete</th></tr>
<%
for(Batch b:list){
%>	
<tr><th><%=b.getBid()%></th><th><%=b.getBname()%></th><th><%=b.getBinstructor()%></th><th><%=b.getDate()%></th><th><%=b.getTime()%></th>
<th><a href="editBatch.jsp?id=<%=b.getBid()%>">Edit with name</a></th>
<th><a href="deleteBatch.jsp?id=<%=b.getBid()%>">Delete</a></th></tr>
	
<%	
}
%>
</table>
</body>
</html>