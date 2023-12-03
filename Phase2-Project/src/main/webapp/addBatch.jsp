<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Batch Registration Form</i></h1>
<form action="addBatchServlet.jsp">
Batch Id: <input type="text" name="bid"><br>
Batch Name: <Input type="text" name="bname"><br>
Instructor: <input type="text" name="ins"><br>
Date: <input type="date" name="date"><br>
Time: <input type="time" name="time"><br>
<input type="submit" value="register">
</form>
</body>
</html>