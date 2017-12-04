<%@page language="java" import="java.sql.*,java.util.*"%>
<%	Driver DriverRecordset1 = (Driver) Class.forName("org.postgresql.Driver").newInstance();
	Properties props = new Properties();
	props.setProperty("user", "postgres");
	props.setProperty("password", "frumpy");
	String url = "jdbc:postgresql://localhost/Shelter";
	Connection Conn = DriverManager.getConnection(url, props);
	String tableName = request.getParameter("editTable");
	Statement st = Conn.createStatement();
	String query = "";
	String a_id = "null";
	String a_name = "null";
	String species = "null";
	String breed = "null";
	String age = "null";
	String vacc = "null";
	String fix = "null";
	String w_id = "null";
	String w_name = "null";
	String salary = "null";
	String position = "null";
	String w_address = "null";
	String duty = "null";
	String hours = "null";
	String f_name = "null";
	String f_address = "null";
	String preference = "null";
	String adpt_id = "null";
	String adpt_name = "null";
	String adpt_address = "null";
	String adpt_date = "null";
	String s_id = "null";
	String type = "null";
	String quant = "null";
	String cost = "null";
	String suppl = "null";
	String m_id = "null";
	String name = "null";
	String addr = "null";
	String phone = "null";
	String special = "null";
	String startd = "null";
	String endd = "null";
	String date = "null";
	String purpose = "null";
	
	switch (tableName) {
    case "Animals":
    		if (request.getParameter("a_id")  != null)
    			a_id = request.getParameter("a_id");
    		if (request.getParameter("a_name")  != null)
    			a_name = request.getParameter("a_name");
    		if (request.getParameter("species")  != null)
    			species = request.getParameter("species");
    		if (request.getParameter("breed")  != null)
    			breed = request.getParameter("breed");
    		if (request.getParameter("age")  != null)
    			age = request.getParameter("age");
    		if (request.getParameter("vacc")  != null)
    			vacc = request.getParameter("vacc");
    		if (request.getParameter("fix")  != null)
    			fix = request.getParameter("fix");
    		if (request.getParameter("w_id")  != null)
   	 		w_id = request.getParameter("w_id");
   	 	query = "insert into Animals("+ a_id + ", '" + a_name + "', '" + species + "', '" + breed + "', " + age + ", '" + vacc + "', '" + fix + "', " + w_id + ")"; 
        break;
        
    case "Employee":
    		if (request.getParameter("w_id")  != null)	
   	 		w_id = request.getParameter("w_id");
    		if (request.getParameter("w_name")  != null)
    			w_name = request.getParameter("w_name");
    		if (request.getParameter("salary")  != null)
    			salary = request.getParameter("salary");
    		if (request.getParameter("position")  != null)
    			position = request.getParameter("position");
   	 	String wQuery = "insert into Worker(" + w_id + ", '" + w_name + ", null, null, null)";
    		query = "insert into Employee("+ w_id + ", " + salary + ", '" + position + "')"; 
    		break;
    		
    case "Worker":
    		if (request.getParameter("w_id")  != null)	
   	 		w_id = request.getParameter("w_id");
    		if (request.getParameter("w_name")  != null)
    			w_name = request.getParameter("w_name");
    		if (request.getParameter("w_address")  != null)
    			w_address = request.getParameter("w_address");
    		if (request.getParameter("duty")  != null)
    			duty = request.getParameter("duty");
    		if (request.getParameter("hours")  != null)
    			hours = request.getParameter("hours");
    		query = "insert into Worker("+ w_id + ", '" + w_name + ", '" + w_address + "', '" + duty + "', " + hours + ")";
    		break;

    case "Foster":
    	if (request.getParameter("f_name")  != null)	
   	 		f_name = request.getParameter("f_name");
    		if (request.getParameter("f_address")  != null)
    			f_address = request.getParameter("f_address");
    		if (request.getParameter("preference")  != null)
    			preference = request.getParameter("preference");
    		query = "insert into Foster('"+ f_name + "', '" + f_address + "', '" + preference + "')";
        break;
        
    case "Adopter":
    	if (request.getParameter("adpt_id")  != null)	
   	 		adpt_id = request.getParameter("adpt_id");
    		if (request.getParameter("adpt_name")  != null)
    			adpt_name = request.getParameter("adpt_name");
    		if (request.getParameter("preference")  != null)
    			preference = request.getParameter("preference");
    		if (request.getParameter("adpt_address")  != null)
    			adpt_address = request.getParameter("adpt_address");
    		query = "insert into Adopter("+ adpt_id + ", '" + adpt_name + "', '" + adpt_address + "', '" + preference +"')"; 
        break;
        
    case "Supplies":
    		if (request.getParameter("s_id")  != null)	
   	 		s_id = request.getParameter("s_id");
    		if (request.getParameter("type")  != null)
    			type = request.getParameter("type");
    		if (request.getParameter("quant")  != null)
    			quant = request.getParameter("quant");
    		if (request.getParameter("cost")  != null)
    			cost = request.getParameter("cost");
    		if (request.getParameter("suppl")  != null)
    			suppl = request.getParameter("suppl");
    		query = "insert into Supplies("+ s_id + ", '" + type + "', " + quant + ", " + cost +", '" + suppl + "')"; 
            break;
            
    case "Medical_Staff":
    		if (request.getParameter("m_id")  != null)	
   	 		m_id = request.getParameter("m_id");
    		if (request.getParameter("name")  != null)
    			name = request.getParameter("name");
    		if (request.getParameter("addr")  != null)
    			addr = request.getParameter("addr");
    		if (request.getParameter("phone")  != null)
    			phone = request.getParameter("phone");
    		if (request.getParameter("special")  != null)
    			special = request.getParameter("special");
    		query = "insert into Medical_Staff("+ m_id + ", '" + name + "', '" + addr + "', " + phone +", '" + special + "')"; 
        break;
        
    case "Manages":
    		if (request.getParameter("m_id")  != null)	
   	 		m_id = request.getParameter("m_id");
    		if (request.getParameter("w_id")  != null)
    			w_id = request.getParameter("w_id");
    		if (request.getParameter("startd")  != null)
    			startd = request.getParameter("startd");
    		query = "insert into Manages("+ m_id + ", " + w_id + ", '" + startd + "')"; 
        break;
        
    case "Fosters":
    		if (request.getParameter("f_name")  != null)	
   	 		f_name = request.getParameter("f_name");
    		if (request.getParameter("f_address")  != null)
    			f_address = request.getParameter("f_address");
    		if (request.getParameter("a_id")  != null)
    			a_id = request.getParameter("a_id");
    		if (request.getParameter("startd")  != null)
    			startd = request.getParameter("startd");
    		if (request.getParameter("endd")  != null)
    			endd = request.getParameter("endd");
    		query = "insert into Fosters('"+ f_name + "', '" + f_address + "', " + a_id + ", '" + startd + "', '" + endd + "')"; 
        break;
        
    case "Uses":
    		if (request.getParameter("s_id")  != null)	
   	 		s_id = request.getParameter("s_id");
    		if (request.getParameter("w_id")  != null)
    			w_id = request.getParameter("w_id");
    		query = "insert into Uses("+ s_id + ", " + w_id + ")"; 
        break;
        
    case "Adopts":
   	 	if (request.getParameter("a_id")  != null)	
   	 		a_id = request.getParameter("a_id");
    		if (request.getParameter("adpt_id")  != null)
    			adpt_id = request.getParameter("adpt_id");
    		if (request.getParameter("adpt_date")  != null)
    			adpt_date = request.getParameter("adpt_date");
    		query = "insert into Adopts("+ a_id + ", " + adpt_id + ", '" + adpt_date + "')"; 
        break;
        
    case "Appointment":
    		if (request.getParameter("a_id")  != null)	
   	 		a_id = request.getParameter("a_id");
    		if (request.getParameter("m_id")  != null)
    			m_id = request.getParameter("m_id");
    		if (request.getParameter("date")  != null)
    			date = request.getParameter("date");
    		if (request.getParameter("purpose")  != null)
    			purpose = request.getParameter("purpose");
    		query = "insert into Appointment("+ a_id + ", " + m_id + ", '" + date + "', '" + purpose + "')"; 
        break;
}
	st.executeQuery(query);
	
	%>