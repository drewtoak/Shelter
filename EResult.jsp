<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String editOption = request.getParameter("editOption");
String editTable = request.getParameter("editTable");
if (editOption.equals("Insert")) {%>
request.setAttribute("editTable",editTable);
<jsp:forward page="Insert.jsp" /> 
<%} 
if (editOption.equals("Delete")) { %>
request.setAttribute("editTable",editTable);
<jsp:forward page="Delete.jsp" /> 
<%} 
if (editOption.equals("Update")) {%>
request.setAttribute("editTable",editTable);
<jsp:forward page="Update.jsp" /> 
<%} %>
</body>
</html>