<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="editBatchServlet.jsp">
<input type="hidden" name="id" value=<%=request.getParameter("id")%>>
Batch Name: <input type="text" name="name"><br>
<input type="submit" value="edit">
</form>
</body>
</html>