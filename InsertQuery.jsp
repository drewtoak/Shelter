<%@page language="java" import="java.sql.*,java.util.*"%>
<%	Driver DriverRecordset1 = (Driver) Class.forName("org.postgresql.Driver").newInstance();
	Properties props = new Properties();
	props.setProperty("user", "postgres");
	props.setProperty("password", "frumpy");
	String url = "jdbc:postgresql://localhost/Shelter";
	Connection Conn = DriverManager.getConnection(url, props);
	String tableName = request.getParameter("editTable");
	Statement st = Conn.createStatement();
	
	//THIS ISNT 100% RIGHT I KNOW NEEDS NEW STUFF
	switch (tableName) {
    case "Monday":
        tableName = "Start of work week";
        break;
    case "Tuesday":
    case "Wednesday":
    case "Thursday":
        tableName = "Midweek";
        break;
    case "Friday":
        tableName = "End of work week";
        break;
    case "Saturday":
    case "Sunday":
        tableName = "Weekend";
        break;
    default:
        throw new IllegalArgumentException("Invalid day of the week: " + tableName);
}
	
	
	%>