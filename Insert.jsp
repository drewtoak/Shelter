<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>Insert</title></head>
<h1>Insert New Entry</h1>
<body>

<% 
String editTable = "Animals";
editTable = request.getParameter("editTable");
request.setAttribute("editTable", editTable);
if (editTable.equals("Animals")) {
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
  <input type="text" name="vacc"><br>
  Fixed (Y/N):<br>
  <input type="text" name="fix"><br>
  Responsible Worker ID#:<br>
  <input type="text" name="w_id">
<input type="submit" value="Submit">
</form>
<%}

if (editTable.equals("Employee")) {%>
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

if (editTable.equals("Worker")) {%>
<form action="InsertQuery.jsp" method = "get">
  Worker ID#:<br>
  <input type="text" name="w_id"><br>
  Name:<br>
  <input type="text" name="w_name"><br>
  Address:<br>
  <input type="text" name="w_address"><br>
  Duty:<br>
  <input type="text" name="duty"><br>
  Hours:<br>
  <input type="text" name="hours"><br>
<input type="submit" value="Submit">
</form> <%} 

if (editTable.equals("Foster")) {%>
<form action="InsertQuery.jsp" method = "get">
  Foster Name:<br>
  <input type="text" name="f_name"><br>
  Address:<br>
  <input type="text" name="f_address"><br>
  Preference:<br>
  <input type="text" name="preference"><br>
<input type="submit" value="Submit">
</form> <%} 

if (editTable.equals("Adopter")) { %>
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

if (editTable.equals("Supplies")) { %>
<form action="InsertQuery.jsp" method = "get">
  Supply ID#:<br>
  <input type="text" name="s_id"><br>
  Type:<br>
  <input type="text" name="type"><br>
  Quantity:<br>
  <input type="text" name="quant"><br>
  Cost ($):<br>
  <input type="text" name="cost"><br>
  Supplier:<br>
  <input type="text" name="suppl"><br>
<input type="submit" value="Submit">
</form> <%}

if (editTable.equals("Medical_Staff")) { 
%>
<form action="InsertQuery.jsp" method = "get">
  Medical Staff ID#:<br>
  <input type="text" name="m_id"><br>
  Name:<br>
  <input type="text" name="name"><br>
  Address:<br>
  <input type="text" name="addr"><br>
  Phone (no spaces or dashes):<br>
  <input type="text" name="phone"><br>
  Specialization:<br>
  <input type="text" name="special"><br>
<input type="submit" value="Submit">
</form> <%}

if (editTable.equals("Manages")) { 
%>
<form action="InsertQuery.jsp" method = "get">
  Manager ID#:<br>
  <input type="text" name="m_id"><br>
  Worker ID#:<br>
  <input type="text" name="w_id"><br>
  Start date (mm/dd/yy):<br>
  <input type="text" name="startd"><br>
<input type="submit" value="Submit">
</form> <%}

if (editTable.equals("Fosters")) {%>
<form action="InsertQuery.jsp" method = "get">
  Foster Name:<br>
  <input type="text" name="f_name"><br>
  Foster Address:<br>
  <input type="text" name="f_address"><br>
  Animal ID#:<br>
  <input type="text" name="a_id"><br>\
  Start date (mm/dd/yy):<br>
  <input type="text" name="startd"><br>
  End date (mm/dd/yy):<br>
  <input type="text" name="endd"><br>
<input type="submit" value="Submit">
</form> <%}

if (editTable.equals("Uses")) { 
%>
<form action="InsertQuery.jsp" method = "get">
  Worker ID#:<br>
  <input type="text" name="w_id"><br>
  Supply ID#:<br>
  <input type="text" name="s_id"><br>
<input type="submit" value="Submit">
</form> <%}

if (editTable.equals("Adopts")) { 
%>
<form action="InsertQuery.jsp" method = "get">
  Animal ID#:<br>
  <input type="text" name="a_id"><br>
  Adopter ID#:<br>
  <input type="text" name="adpt_id"><br>
  Adoption date (mm/dd/yy):<br>
  <input type="text" name="adpt_date"><br>
<input type="submit" value="Submit">
</form> <%}

if (editTable.equals("Appointment")) { 
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
