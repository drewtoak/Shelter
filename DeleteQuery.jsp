<%@page language="java" import="java.sql.*,java.util.*"%>
<%	Driver DriverRecordset1 = (Driver) Class.forName("org.postgresql.Driver").newInstance();
	Properties props = new Properties();
	props.setProperty("user", "postgres");
	props.setProperty("password", "123456");
	String url = "jdbc:postgresql://localhost/Shelter";
	Connection Conn = DriverManager.getConnection(url, props);
	String tableName = request.getParameter("editTable");
	Statement st = Conn.createStatement();
	
	switch (tableName) {
    case "Animals":
        String a_id = request.getParameter("a_id");
        st.executeUpdate("Delete From animals Where a_id = " + a_id);
        st.executeUpdate("Delete From adopts Where a_id = " + a_id);
        st.executeUpdate("Delete From fosters Where a_id = " + a_id);
        st.executeUpdate("Delete From appointment Where a_id = " + a_id);
        break;
    case "Employee":
    		String e_id = request.getParameter("w_id");
    		st.executeUpdate("Delete From employee Where w_id = " + e_id);
    		break;
    case "Worker":
    		String w_id = request.getParameter("w_id");
    		st.executeUpdate("Delete From worker Where w_id = " + w_id);
    		st.executeUpdate("Delete From employee Where w_id = " + w_id);
    		st.executeUpdate("Delete From uses Where w_id = " + w_id);
    		break;
    case "Adopter":
        String adpt_id = request.getParameter("adpt_id");
        st.executeUpdate("Delete From adopter Where adpt_id = " + adpt_id);
        st.executeUpdate("Delete From adopts Where adpt_id = " + adpt_id);
        break;
    case "Foster":
        String f_name = request.getParameter("f_name");
        String f_address = request.getParameter("f_address");
        st.executeUpdate("Delete From foster Where f_name = '" + f_name + "' And f_address = '" + f_address + "'");
        st.executeUpdate("Delete From fosters Where f_name = '" + f_name + "' And f_address = '" + f_address + "'");
        break;
    case "Fosters":
    		String ff_name = request.getParameter("f_name");
    		String ff_address = request.getParameter("f_address");
    		String af_id = request.getParameter("a_id");
    		st.executeUpdate("Delete From fosters Where f_name = '" + ff_name + "' And f_address = '" + ff_address + 
    				"' And a_id = " + af_id);
    		break;
    case "Adopts":
        String adpts_id = request.getParameter("adpt_id");
        String ad_id = request.getParameter("a_id");
        st.executeUpdate("Delete From foster Where adpt_id = " + adpts_id + 
				" And a_id = " + ad_id);
        break;
    case "Supplies":
    		String s_id = request.getParameter("s_id");
    		st.executeUpdate("Delete From foster Where s_id = " + s_id);
    		st.executeUpdate("Delete From uses Where s_id = " + s_id);
    		break;
    case "Medical_Staff":
    		String m_id = request.getParameter("m_id");
    		st.executeUpdate("Delete From foster Where m_id = " + m_id);
    		st.executeUpdate("Delete From appointment Where m_id = " + m_id);
    		break;
    case "Manages":
    		String mng_id = request.getParameter("mng_id");
    		String wm_id = request.getParameter("w_id");
    		st.executeUpdate("Delete From manages Where mng_id = " + mng_id + 
    				" And w_id = " + wm_id);
    		break;
    case "Uses":
    		String wu_id = request.getParameter("w_id");
    		String su_id = request.getParameter("s_id");
    		st.executeUpdate("Delete From uses Where w_id = " + wu_id +
    				" And s_id = " + su_id);
    		break;
    case "Appointment":
    		String ma_id = request.getParameter("m_id");
    		String aa_id = request.getParameter("a_id");
    		st.executeUpdate("Delete From appointment Where m_id = " + ma_id +
    				" And a_id = " + aa_id);
    		break;
} %>
<html><head><title>Delete Complete</title></head>
<h1>DELETE COMPLETE</h1>
</html>
