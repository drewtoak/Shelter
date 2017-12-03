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
	String[] speciesValues = request.getParameterValues("species");
	StringBuilder sb = new StringBuilder();
	for (int index = 0; index < speciesValues.length; index++){
		sb.append("animals.species = ");
		sb.append("'" + speciesValues[index] + "'");
		if (index + 1 < speciesValues.length){
			sb.append(" or ");
		}
	}
	String species = sb.toString();
	System.out.println("She");
	String[] animalAgeValues = request.getParameterValues("age");
	System.out.println(animalAgeValues.length);
	Set<String> animalAgeSet;
	if (animalAgeValues.length != 0){
		animalAgeSet = new HashSet<String>(Arrays.asList(animalAgeValues));
	}
	else{
		animalAgeSet = new HashSet<String>();
	}
	int integerAgeMin = 0;
	int integerAgeMax = Integer.MAX_VALUE;
	
	StringBuilder sbAge = new StringBuilder();
	boolean firstAge = true;
	System.out.println(Arrays.toString(animalAgeValues));
	if (animalAgeSet.isEmpty()){
		sbAge.append(" and animals.age >= 0 and animals.age <=500");
	}
	if (animalAgeSet.contains("Baby")){
		System.out.println(firstAge);
		if (firstAge == true){
			sbAge.append( " and animals.age <= 2");
			firstAge = false;
		}
		else{
			sbAge.append( " or animals.age <= 2");
		}
	}
	if (animalAgeSet.contains("Adult")){
		System.out.println(firstAge + "adult");
		if (firstAge == true){
			sbAge.append(" and animals.age >= 3 and animals.age <=10");
			firstAge = false;
		}
		else{
			sbAge.append(" or animals.age >= 3 and animals.age <=10");
		}
	}
	if (animalAgeSet.contains("Senior")){
		System.out.println(firstAge);
		if (firstAge == true){
			sbAge.append(" and animals.age >= 11");
			firstAge = false;
		}
		else{
			sbAge.append(" or animals.age >= 11");
		}
	}
	
	String age = sbAge.toString();
	System.out.println(age);
	Statement st = Conn.createStatement();
	String builder = "select * from animals where " + "(" + species + ")" + age;
	System.out.println(builder);
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