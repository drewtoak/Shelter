<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><title>Edit</title></head>
<body>
<h1>Select your Table and an Edit Option</h1>
<form action = "EResult.jsp" method = "get">
<select name = "editTable">
	<option value="Animals">Animals</option>
    		<option value="Employee">Employee</option>
    		<option value="Worker">Worker</option>
    		<option value="Foster">Foster</option>
    		<option value="Adopter">Adopter</option>
    		<option value="Supplies">Supplies</option>
    		<option value="Medical_Staff">Medical_Staff</option>
    		<option value="Manages">Manages</option>
    		<option value="Fosters">Fosters</option>
    		<option value="Uses">Uses</option>
    		<option value="Adopts">Adopts</option>
    		<option value="Appointment">Appointment</option>
</select>
<select name = "editOption">
	<option value="Insert">Insert</option>
    		<option value="Delete">Delete</option>
    		<option value="Update">Update</option>
</select>
<input type="submit" value="Submit">
</form>
</html>
