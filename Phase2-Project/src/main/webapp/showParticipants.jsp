<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.caltech.DAO.ParticipantDAO"%>
<%@page import="com.caltech.pojo.Participant" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addParticipant.jsp">
 <input type="submit" value="Add Participant">
</form>
<%
ParticipantDAO dao=new ParticipantDAO();
Participant p=new Participant();
List<Participant> list=dao.getAllParticipants();
%>
<table border="1">
<tr><th>Participant ID</th><th>Participant Name</th><th>Password</th><th>Participant Email</th><th>Participant Address</th>
<th>Edit</th>
<th>Delete</th></tr>
<%
for(Participant pr:list){
%>	
<tr><th><%=pr.getPid()%></th><th><%=pr.getPname()%></th><th><%=pr.getPassword()%></th><th><%=pr.getEmail()%></th><th><%=pr.getAddress()%></th>
<th><a href="editParticipant.jsp?id=<%=pr.getPid()%>">Edit with name</a></th>
<th><a href="deleteParticipant.jsp?id=<%=pr.getPid()%>">Delete</a></th></tr>
	
<%	
}
%>

</table>
</body>
</html>