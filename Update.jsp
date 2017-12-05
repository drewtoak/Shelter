<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>Update</title></head>
<h1>Update Existing Entry</h1>
<body>

<% 
String editTable = "Animals";
editTable = request.getParameter("editTable");
if (editTable.equals("Animals")) {
%>

<form action="UpdateQuery.jsp" method = "get">
<input type="hidden" name="editTable" value = "Animals">
Please choose which attribute you would like to change <br>
<select name = "attribute">
	<option value="a_name">Name</option>
    		<option value="species">Species</option>
    		<option value="breed">Breed</option>
    		<option value="age">Age</option>
    		<option value="vaccinated">Vaccinated (Y/N)</option>
    		<option value="fixed">Fixed (Y/N)</option>
    		<option value="w_id">Responsible Worker ID#</option>
</select>
	<br>NEW ATTRIBUTE VALUE <br>
	<input type="text" name="newA"><br>
  FOR Animal ID# (REQUIRED):<br>
  <input type="text" name="pk"><br>
<input type="submit" value="Submit">
</form>
<%}

if (editTable.equals("Employee")) {%>
<form action="UpdateQuery.jsp" method = "get">
<input type="hidden" name="editTable" value = "Employee">
Please choose which attribute you would like to change <br>
 <select name = "attribute">
	<option value="w_name">Name</option>
    		<option value="salary">Salary ($)</option>
    		<option value="position">Position</option>
</select>
	<br>NEW ATTRIBUTE VALUE <br>
	<input type="text" name="newA"><br>
  FOR Employee ID# (REQUIRED):<br>
  <input type="text" name="pk"><br>
<input type="submit" value="Submit">
</form>
<%} 

if (editTable.equals("Worker")) {%>
<form action="UpdateQuery.jsp" method = "get">
<input type="hidden" name="editTable" value = "Worker">
Please choose which attribute you would like to change <br>
 <select name = "attribute">
	<option value="w_name">Name</option>
    		<option value="w_address">Address</option>
    		<option value="duties">Duty</option>
    		<option value="hours">Hours</option>
    		
</select>
	<br>NEW ATTRIBUTE VALUE <br>
	<input type="text" name="newA"><br>
  FOR Worker ID# (REQUIRED):<br>
  <input type="text" name="pk"><br>
<input type="submit" value="Submit">
</form> <%} 

if (editTable.equals("Foster")) {%>
<form action="UpdateQuery.jsp" method = "get">
<input type="hidden" name="editTable" value = "Foster">
Please choose which attribute you would like to change <br>
 <select name = "attribute">
	<option value="preference">Preference</option>	
</select>
	<br>NEW ATTRIBUTE VALUE <br>
	<input type="text" name="newA"><br>
  FOR Foster Name (REQUIRED):<br>
  <input type="text" name="f_name"><br>
  FOR Address (REQUIRED):<br>
  <input type="text" name="f_address"><br>
<input type="submit" value="Submit">
</form> <%} 

if (editTable.equals("Adopter")) { %>
<form action="UpdateQuery.jsp" method = "get">
<input type="hidden" name="editTable" value = "Adopter">
Please choose which attribute you would like to change <br>
<select name = "attribute">
		<option value="adpt_name">Adopter Name</option>	
		<option value="adpt_address">Adopter Address</option>	
		<option value="preference">Preference</option>	
</select>
	<br>NEW ATTRIBUTE VALUE <br>
	<input type="text" name="newA"><br>
  FOR Adopter ID# (REQUIRED):<br>
  <input type="text" name="adpt_id"><br>
<input type="submit" value="Submit">
</form> <%} 

if (editTable.equals("Supplies")) { %>
<form action="UpdateQuery.jsp" method = "get">
<input type="hidden" name="editTable" value = "Supplies">
Please choose which attribute you would like to change <br>
<select name = "attribute">
		<option value="type">Type</option>	
		<option value="quantity">Quantity</option>	
		<option value="cost">Cost</option>	
		<option value="supplier">Supplier</option>	
</select>
	<br>NEW ATTRIBUTE VALUE <br>
	<input type="text" name="newA"><br>
  FOR Supply ID# (REQUIRED):<br>
  <input type="text" name="s_id"><br>
<input type="submit" value="Submit">
</form> <%}

if (editTable.equals("Medical_Staff")) { 
%>
<form action="UpdateQuery.jsp" method = "get">
<input type="hidden" name="editTable" value = "Medical_Staff">
	Please choose which attribute you would like to change <br>
<select name = "attribute">
		<option value="name">Medical_Staff Name</option>	
		<option value="address">Address</option>	
		<option value="phone">Phone</option>	
		<option value="specialization">Specialization</option>	
</select>
	<br>NEW ATTRIBUTE VALUE <br>
	<input type="text" name="newA"><br>
  FOR Medical Staff ID# (REQUIRED):<br>
  <input type="text" name="m_id"><br>
<input type="submit" value="Submit">
</form> <%}%>
</html>