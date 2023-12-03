<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Registration Form</i></h1>
<form action="addParticipantServlet.jsp">
Participant Id: <input type="text" name="pid"><br>
Username: <Input type="text" name="pname"><br>
Password: <input type="password" name="pwd"><br>
Email: <input type="text" name="email"><br>
Address: <input type="text" name="address"><br>
<input type="submit" value="register">
</form>
</body>
</html>