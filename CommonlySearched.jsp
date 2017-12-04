<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<title>Commonly Searched Queries</title>
<body>
<h1>Commonly Searched Queries</h1>

<form action = "commonExecute.jsp" method = "get">

<h2>1.</h2>
Find all worker names who use only supplies that cost less than
<input type="text" name="supplyCost">
<input type="submit" value="Find Workers" id="button1" name="button">

<h2>2.</h2>
Find the lowest salary of employees names who work more than <input type="text" name="hours">  hours.
<input type="submit" value="Find Lowest Salary" id="button2" name="button">

<h2>3.</h2>
Find names of all fosters that foster only animals that they prefer.
<input type="submit" value="Find Fosters" id="button3" name="button">

<h2>4.</h2>
Find the worker id and position of the employee that earns the most money in each position.
<input type="submit" value="Find Highest Salaries" id="button4" name="button">

<h2>5.</h2>
Find medical staff names who have the same address as another medical staff member.
<input type="submit" value="Find Medical Staff" id="button5" name="button">

<h2>6.</h2>
Find the phone numbers of medical staff who had appointments with every
<input type="text" name="species">
<input type="submit" value="Find Phone Numbers" id="button6" name="button">

<h2>7.</h2>
Find the animal species that have more than <input type="text" name="numAnimals"> animals in the shelter records.
<input type="submit" value="Find Animals" id="button7" name="button">

</form>
</body>
</html>