<%@page language="java" import="java.sql.*,java.util.*"%>
<head>
	<link href="TableStyles.css" rel="stylesheet">
</head>
<body>
<h1>Results</h1>
<%
	Driver DriverRecordset1 = (Driver) Class.forName("org.postgresql.Driver").newInstance();
	Properties props = new Properties();
	props.setProperty("user", "postgres");
	props.setProperty("password", "Cookie0295");
	String url = "jdbc:postgresql://localhost/Shelter";
	Connection Conn = DriverManager.getConnection(url, props);
	String tableName = request.getParameter("viewTable");
	Statement st = Conn.createStatement();
	String builder = "select * from " + tableName;
	ResultSet rs = st.executeQuery(builder);
	
	ResultSetMetaData rsmd = rs.getMetaData();
%>
	<table border = "1">
		<%
			for(int i = 1; i <= rsmd.getColumnCount();i++){
		%>
			<th><%=rsmd.getColumnName(i) %></th>
		<%
			}
		%>
	<%
		while (rs.next()) {
	%>
	<tr>
		<% for (int i = 1; i <= rsmd.getColumnCount(); i++) { %>
		<td><%=rs.getString(i)%>
		</td>
		<% } %>
	</tr>
	<%
		}
	%>
</table>
</body>
<%
	rs.close();
	Conn.close();
%>