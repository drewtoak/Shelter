<%@page language="java" import="java.sql.*,java.util.*"%>

<%
	Driver DriverRecordset1 = (Driver) Class.forName("org.postgresql.Driver").newInstance();
	Properties props = new Properties();
	props.setProperty("user", "postgres");
	props.setProperty("password", "frumpy");
	String url = "jdbc:postgresql://localhost/Shelter";
	Connection Conn = DriverManager.getConnection(url, props);
	String editTable = request.getParameter("editTable");
	String attribute = request.getParameter("attribute");
	String newA = request.getParameter("newA");
	String pk = request.getParameter("pk");
	String primaryKey = "";
	boolean intA = true;
	int temp;
	String query;
	try {
		temp = Integer.parseInt(newA);
	}
	catch (Exception e) {
		intA = false;
	}
	if(editTable.equals("Worker")){
		primaryKey = "w_id";
	}
	if(editTable.equals("Employee")){
		primaryKey = "w_id";
	}
	if(editTable.equals("Animals")){
		primaryKey = "a_id";
	}
	if(editTable.equals("Foster")){
		primaryKey = "f_name";
	}
	if(editTable.equals("Adopter")){
		primaryKey = "adpt_id";
	}
	if(editTable.equals("Supplies")){
		primaryKey = "s_id";
	}
	if(editTable.equals("Medical_Staff")){
		primaryKey = "m_id";
	}
	if (intA) {
	 query = "UPDATE " + editTable
			+ " SET " + attribute + " = " + newA
			+ " WHERE " + primaryKey + " = " + pk;
	} else {
		 query = "UPDATE " + editTable
				+ " SET " + attribute + " = '" + newA + "' "
				+ " WHERE " + primaryKey + " = " + pk;
	}
	Statement st = Conn.createStatement();
	st.executeUpdate(query);
	
	Conn.close();
%>
<html><head><title>UPDATE COMPLETE</title></head>
	<h1> UPDATE COMPLETE</h1>
	</html>