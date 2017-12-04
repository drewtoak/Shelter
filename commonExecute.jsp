<%@page language="java" import="java.sql.*,java.util.*"%>

<%
	Driver DriverRecordset1 = (Driver) Class.forName("org.postgresql.Driver").newInstance();
	Properties props = new Properties();
	props.setProperty("user", "postgres");
	props.setProperty("password", "123456");
	String url = "jdbc:postgresql://localhost/Shelter";
	Connection Conn = DriverManager.getConnection(url, props);
	String button = request.getParameter("button");
	String supplyCost = "";
	if(request.getParameter("supplyCost") != null){
		supplyCost = request.getParameter("supplyCost");
	}
	String hours = "";
	if(request.getParameter("hours") != null){
		hours = request.getParameter("hours");
	}
	String species = "";
	if(request.getParameter("species") != null){
		species = request.getParameter("species");
	}
	String numAnimals = "";
	if(request.getParameter("numAnimals") != null){
		numAnimals = request.getParameter("numAnimals");
	}
	String Q1 = "SELECT w.w_name "
				+ "FROM worker w, uses u, supplies s "
				+ "WHERE w.w_id = u.w_id AND s.s_id = u.s_id AND s.cost < " + supplyCost
				+ " EXCEPT(SELECT w2.w_name "
						+ "FROM worker w2, uses u2, supplies s2 "
						+ "WHERE w2.w_id = u2.w_id AND s2.s_id = u2.s_id AND s2.cost > " + supplyCost + " ) ";
	String Q2 = "SELECT w.w_name, e.salary "
				+ "FROM Employee e, Worker w "
				+ "WHERE e.w_id = w.w_id "
				+ "AND w.hours > " + hours
				+ " AND e.salary = (SELECT min(e.salary) FROM Employee e, Worker w WHERE e.w_id = w.w_id "
				+ "AND w.hours >= " + hours +")";
	String Q3 = "SELECT DISTINCT f.f_name "
				+ "FROM Foster f, Fosters fs, Animals a "
				+ "WHERE f.f_address = fs.f_address AND f.f_name = fs.f_name AND a.a_id = fs.a_id AND f.preference = a.species "
				+ "AND NOT EXISTS(SELECT f2.f_address, f2.f_name "
							   + "FROM Foster f2, Fosters fs2, Animals a2 "
							   + "WHERE f2.f_address = fs2.f_address AND f2.f_name = fs2.f_name AND a2.a_id = fs2.a_id AND f2.preference <> a2.species)";
	String Q4 = "SELECT w.w_name, e1.position "
				+ "FROM Employee e1, Worker w "
				+ "WHERE w.w_id = e1.w_id and "
				+ "e1.salary >= ALL (SELECT e2.salary "
								  + "FROM Employee e2 "
								  + "WHERE e1.position =  e2.position)";
	String Q5 = "SELECT m2.name "
				+ "FROM Medical_Staff m1, Medical_Staff m2 "
				+ "WHERE m1.address = m2.address AND m1.m_id <> m2.m_id";
	String Q6 = "SELECT m.phone "
				+ "FROM Medical_Staff m "
				+ "WHERE NOT EXISTS ( "
								+ "(SELECT Appointment.a_id "
								+ "FROM Appointment, Animals "
								+ "WHERE Appointment.a_id = Animals.a_id AND Animals.species = '" + species + "') "
								+ "EXCEPT "
								+ "(SELECT a2.a_id "
								+ "FROM Appointment a2 "
								+ "WHERE a2.m_id = m.m_id))";
	String Q7 = "SELECT Animals.species "
				+ "FROM Animals "
				+ "GROUP BY Animals.species "
				+ "HAVING count(distinct Animals.a_id) > " + numAnimals;
				
	Statement st = Conn.createStatement();
	ResultSet rs;
	System.out.println(button);
	if(button.equals("Find Workers")){
		rs = st.executeQuery(Q1);
	}
	else if(button.equals("Find Lowest Salary")){
		rs = st.executeQuery(Q2);
	}
	else if(button.equals("Find Fosters")){
		rs = st.executeQuery(Q3);
	}
	else if(button.equals("Find Highest Salaries")){
		rs = st.executeQuery(Q4);
	}
	else if(button.equals("Find Medical Staff")){
		rs = st.executeQuery(Q5);
	}
	else if(button.equals("Find Phone Numbers")){
		rs = st.executeQuery(Q6);
	}
	else{
		rs = st.executeQuery(Q7);
	}	
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