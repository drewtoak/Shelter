<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery.min.js"></script>
<head><title>Delete</title></head>
<h1>Delete Entry</h1>

<script type="text/javascript">
$(document).ready(function () {
    $('#checkBtn').click(function() {
      checkedTexts = $("input[type=text]:checked").length;
      if(!checkedTexts) {
        alert("Please fill in all fields.");
        return false;
      }
    });
});
</script>

<body>
<%String table = "Animals";
table = request.getParameter("editTable");
if (table.equals("Animals")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Animals">
  Animal ID#:<br>
  <input type="text" name="a_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form>
<%}

if (table.equals("Employee")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Employee">
  Employee ID#:<br>
  <input type="text" name="w_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form>
<%} 

if (table.equals("Worker")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Worker">
  Worker ID#:<br>
  <input type="text" name="w_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form> <%} 

if (table.equals("Foster")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Foster">
  Foster Name:<br>
  <input type="text" name="f_name"><br>
  Address:<br>
  <input type="text" name="f_address"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form> <%} 

if (table.equals("Adopter")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Adopter">
  Adopter ID#:<br>
  <input type="text" name="adpt_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form> <%} 

if (table.equals("Supplies")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Supplies">
  Supply ID#:<br>
  <input type="text" name="s_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form> <%}

if (table.equals("Medical_Staff")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Medical_Staff">
  Medical Staff ID#:<br>
  <input type="text" name="m_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form> <%}

if (table.equals("Manages")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Manages">
  Manager ID#:<br>
  <input type="text" name="m_id"><br>
  Worker ID#:<br>
  <input type="text" name="w_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form> <%}

if (table.equals("Fosters")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Fosters">
  Foster Name:<br>
  <input type="text" name="f_name"><br>
  Foster Address:<br>
  <input type="text" name="f_address"><br>
  Animal ID#:<br>
  <input type="text" name="a_id"><br>
<input type="submit" value="Submit" id="checkBtn">
</form> <%}

if (table.equals("Uses")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Uses">
  Worker ID#:<br>
  <input type="text" name="w_id"><br>
  Supply ID#:<br>
  <input type="text" name="s_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form> <%}

if (table.equals("Adopts")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Adopts">
  Animal ID#:<br>
  <input type="text" name="a_id"><br>
  Adopter ID#:<br>
  <input type="text" name="adpt_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form> <%}

if (table.equals("Appointment")) { %>
<form action="DeleteQuery.jsp" method = "get">
  <input type="hidden" name="editTable" value="Appointment">
  Animal ID#:<br>
  <input type="text" name="a_id"><br>
  Medical Staff ID#:<br>
  <input type="text" name="m_id"><br>
  <input type="submit" value="Submit" id="checkBtn">
</form> <%}%>
</body>
</html>
