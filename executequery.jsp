<%@page language="java" import="java.sql.*,java.util.*"%>

<%
	Driver DriverRecordset1 = (Driver) Class.forName("org.postgresql.Driver").newInstance();
	Properties props = new Properties();
	props.setProperty("user", "postgres");
	props.setProperty("password", "123456");
	String url = "jdbc:postgresql://localhost/studiodb";
	Connection Conn = DriverManager.getConnection(url, props);
	String query = request.getParameter("query");
	Statement st = Conn.createStatement();
	ResultSet rs = st.executeQuery(query);
	ResultSetMetaData metaData = rs.getMetaData();
%>



<table border = "1">
	<%
		int j = 0;
		while (rs.next() && j < 5) {
	%>
	<tr>
		<% for (int i = 1; i <= metaData.getColumnCount(); i++) { %>
		<td><%=rs.getString(i)%>
		</td>
		<% } %>
	</tr>
	<%
			j++;
		}
	%>
</table>

<%
	rs.close();
	Conn.close();
%>
