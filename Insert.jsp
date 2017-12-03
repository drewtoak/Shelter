<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>Insert</title></head>
<h1>Insert New Entry</h1>
<body>
<%String table = "Animals";
table = request.getParameter("editTable");
System.out.print(table);
if (table.equals("Animals")) {
request.setAttribute("editTable", table);
%>
<form action="InsertQuery.jsp" method = "get">
  Animal ID#:<br>
  <input type="text" name="a_id"><br>
  Name:<br>
  <input type="text" name="a_name"><br>
  Species:<br>
  <input type="text" name="species"><br>
  Breed:<br>
  <input type="text" name="breed"><br>
  Age:<br>
  <input type="text" name="age"><br>
  Vaccinated (Y/N):<br>
  <input type="text" name="vaccinated"><br>
  Fixed (Y/N):<br>
  <input type="text" name="fixed"><br>
  Responsible Worker ID#:<br>
  <input type="text" name="w_id">
<input type="submit" value="Submit">
</form>
<%}

if (table.equals("Employee")) {
	request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Employee ID#:<br>
  <input type="text" name="w_id"><br>
  Name:<br>
  <input type="text" name="w_name"><br>
   Salary ($):<br>
  <input type="text" name="salary"><br>
  Position:<br>
  <input type="text" name="position"><br>
<input type="submit" value="Submit">
</form>
<%} 

if (table.equals("Worker")) {
	request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Worker ID#:<br>
  <input type="text" name="w_id"><br>
  Name:<br>
  <input type="text" name="w_name"><br>
  Address:<br>
  <input type="text" name="w_address"><br>
  Duties:<br>
  <input type="text" name="duties"><br>
  Hours:<br>
  <input type="text" name="hours"><br>
<input type="submit" value="Submit">
</form> <%} 

if (table.equals("Foster")) {
	request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Foster Name:<br>
  <input type="text" name="f_name"><br>
  Address:<br>
  <input type="text" name="f_address"><br>
  Preference:<br>
  <input type="text" name="preference"><br>
<input type="submit" value="Submit">
</form> <%} 

if (table.equals("Adopter")) { 
request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Adopter ID#:<br>
  <input type="text" name="adpt_id"><br>
  Name:<br>
  <input type="text" name="adpt_name"><br>
  Address:<br>
  <input type="text" name="adpt_address"><br>
  Preference:<br>
  <input type="text" name="preference"><br>
<input type="submit" value="Submit">
</form> <%} 

if (table.equals("Supplies")) { 
request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Supply ID#:<br>
  <input type="text" name="s_id"><br>
  Type:<br>
  <input type="text" name="type"><br>
  Quantity:<br>
  <input type="text" name="quantity"><br>
  Cost ($):<br>
  <input type="text" name="cost"><br>
  Supplier:<br>
  <input type="text" name="supplier"><br>
<input type="submit" value="Submit">
</form> <%}

if (table.equals("Medical_Staff")) { 
request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Medical Staff ID#:<br>
  <input type="text" name="m_id"><br>
  Name:<br>
  <input type="text" name="name"><br>
  Address:<br>
  <input type="text" name="address"><br>
  Phone (no spaces or dashes):<br>
  <input type="text" name="phone"><br>
  Specialization:<br>
  <input type="text" name="specialization"><br>
<input type="submit" value="Submit">
</form> <%}

if (table.equals("Manages")) { 
request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Manager ID#:<br>
  <input type="text" name="m_id"><br>
  Worker ID#:<br>
  <input type="text" name="w_id"><br>
  Start date (mm/dd/yy):<br>
  <input type="text" name="startd"><br>
<input type="submit" value="Submit">
</form> <%}

if (table.equals("Fosters")) {
	request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Foster Name:<br>
  <input type="text" name="f_name"><br>
  Foster Address:<br>
  <input type="text" name="f_address"><br>
  Animal ID#:<br>
  <input type="text" name="a_id"><br>\
  Start date (mm/dd/yy):<br>
  <input type="text" name="start_date"><br>
  End date (mm/dd/yy):<br>
  <input type="text" name="end_date"><br>
<input type="submit" value="Submit">
</form> <%}

if (table.equals("Uses")) { 
request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Worker ID#:<br>
  <input type="text" name="w_id"><br>
  Supply ID#:<br>
  <input type="text" name="s_id"><br>
<input type="submit" value="Submit">
</form> <%}

if (table.equals("Adopts")) { 
request.setAttribute("editTable", table);%>
<form action="InsertQuery.jsp" method = "get">
  Animal ID#:<br>
  <input type="text" name="a_id"><br>
  Adopter ID#:<br>
  <input type="text" name="adpt_id"><br>
  Adoption date (mm/dd/yy):<br>
  <input type="text" name="adpt_date"><br>
<input type="submit" value="Submit">
</form> <%}

if (table.equals("Appointment")) { 
	request.setAttribute("editTable", table);
%>
<form action="InsertQuery.jsp" method = "get">
  Animal ID#:<br>
  <input type="text" name="a_id"><br>
  Medical Staff ID#:<br>
  <input type="text" name="m_id"><br>
  date (mm/dd/yy):<br>
  <input type="text" name="date"><br>
  Purpose: <br>
  <input type="text" name="purpose"><br>
<input type="submit" value="Submit">
</form> <%}%>
</body>
</html>