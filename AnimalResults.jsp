<%@page language="java" import="java.sql.*,java.util.*"%>
<head>
	<link href="TableStyles.css" rel="stylesheet">
	<script src="//code.jquery.com/jquery.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway:300,400" rel="stylesheet">
	<script>
	$.get("navBar.html", function(data){
	    $("#nav-placeholder").replaceWith(data);
	});
	</script>
</head>
<div id="nav-placeholder"></div>
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
	//----------------------------------------------SPECIES-------------------------------
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
	//----------------------------------------------AGE-------------------------------
	String[] animalAgeValues = request.getParameterValues("age");
	Set<String>animalAgeSet = new HashSet<String>(Arrays.asList(animalAgeValues));

	int integerAgeMin = 0;
	int integerAgeMax = Integer.MAX_VALUE;
	
	StringBuilder sbAge = new StringBuilder();
	boolean firstAge = true;

	if (animalAgeSet.contains("Baby")){
		if (firstAge == true){
			sbAge.append( " and (animals.age <= 2");
			firstAge = false;
		}
		else{
			sbAge.append( " or animals.age <= 2");
		}
	}
	if (animalAgeSet.contains("Adult")){
		if (firstAge == true){
			sbAge.append(" and (animals.age >= 3 and animals.age <=10");
			firstAge = false;
		}
		else{
			sbAge.append(" or animals.age >= 3 and animals.age <=10");
		}
	}
	if (animalAgeSet.contains("Senior")){
		if (firstAge == true){
			sbAge.append(" and (animals.age >= 11");
			firstAge = false;
		}
		else{
			sbAge.append(" or animals.age >= 11");
		}
	}
	
	String age = sbAge.toString();
	//-------------------------------------------------VACCINATIONS-------------------------------------------
	String[] animalVaccineValues = request.getParameterValues("vaccinated");
	Set<String>animalVaccineSet = new HashSet<String>(Arrays.asList(animalVaccineValues));
	
	StringBuilder sbVac = new StringBuilder();
	boolean firstVac = true;
	if (animalVaccineSet.contains("Vaccinated")){
		if (firstVac == true){
			sbVac.append( " and (animals.vaccinated = 'Y'");
			firstVac = false;
		}
		else{
			sbVac.append(" or animals.vaccinated = 'Y'");
		}
	}
	if (animalVaccineSet.contains("NotVaccinated")){
		if (firstVac == true){
			sbVac.append(" and (animals.vaccinated = 'N'");
			firstVac = false;
		}
		else{
			sbVac.append(" or animals.vaccinated = 'N'");
		}
	}
	
	String vaccines = sbVac.toString();
	//-------------------------------------------------FIXED-------------------------------------------
	String[] animalFixedValues = request.getParameterValues("fixed");
	Set<String>animalFixedSet = new HashSet<String>(Arrays.asList(animalFixedValues));
	
	StringBuilder sbFix = new StringBuilder();
	boolean firstFix = true;
	if (animalFixedSet.contains("Fixed")){
		if (firstFix == true){
			sbFix.append( " and (animals.fixed = 'Y'");
			firstFix = false;
		}
		else{
			sbFix.append(" or animals.fixed = 'Y'");
		}
	}
	if (animalFixedSet.contains("NotFixed")){
		if (firstFix == true){
			sbFix.append(" and (animals.fixed = 'N'");
			firstFix = false;
		}
		else{
			sbFix.append(" or animals.fixed = 'N'");
		}
	}
	
	String fixed = sbFix.toString();
	
	Statement st = Conn.createStatement();
	String builder = "select * from animals where " + "(" + species + ")" + age + ")" + vaccines + ")" + fixed + ")";
			// select animals.a_id, animals.a_name, animals.species, animals.breed, animals.age, animals.age, animals.vaccinated, animals.fixed, animals.w_id
			//from animals, fosters, adopts where animals.a_id = fosters.a_aid and animals.a_id = adopts.a_id 
			//except 
			//select animals.a_id from fosters
	System.out.println("BILDER " + builder);
	ResultSet rs = st.executeQuery(builder);
	
	ResultSetMetaData rsmd = rs.getMetaData();
%>
	<table border = "0.5">
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