import java.awt.Component;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Properties;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class ViewTab{
	
	private JComponent viewTab;
	private static JTable table = new JTable();
	private static String[][] rowArray = new String[0][0];
	private static String[] column = new String[0];
	private static String selectedDropDown = Tables.Animals.getTable();
	static Connection conn = null;
	static Statement stat = null;
	
	public static void connectToDatabase() {
		try {
			Class.forName("org.postgresql.Driver");
			
			String url = "jdbc:postgresql://localhost/Shelter";
			Properties props = new Properties();
			props.setProperty("user", "postgres");
			props.setProperty("password", "123456");
			conn = DriverManager.getConnection(url, props);
			
			stat = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	public ViewTab() {
		connectToDatabase();
		this.viewTab = makeDropDown();		
	}
	
	protected static JComponent makeDropDown() {
		JPanel panel = new JPanel(true);
		JComboBox dropDown = new JComboBox(initializeOptions());
		JLabel label = new JLabel("Select");
		panel.add(label,Component.LEFT_ALIGNMENT);
		
		JButton button = new JButton("Submit");
		button.doClick();
		dropDown.setEnabled(true);
		panel.add(dropDown);
		panel.add(button);		
		
		dropDown.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent event) {
				JComboBox<String> combo = (JComboBox<String>) event.getSource();
				selectedDropDown = (String) combo.getSelectedItem();
			}
		});
		
		button.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent event) {
				try {
					ResultSet rs = stat.executeQuery("Select * from " + selectedDropDown);
					ResultSetMetaData rsmd = rs.getMetaData();
					column = new String[rsmd.getColumnCount()];
					int colLen = rsmd.getColumnCount();
//					int rowLen = 0;
//					if (rs.last()) {
//						rowLen = rs.getRow();
//						rs.beforeFirst();
//					}
					//System.out.println(rowLen);
//					String[][] rows = new String[colLen][rowLen];
					ArrayList<String[]> rows = new ArrayList<String[]>();
					for (int col = 1; col <= colLen; col++) {
						column[col - 1] = rsmd.getColumnName(col);
					}
					while(rs.next()) {
						String[] row = new String[colLen];
						for (int col = 1; col <= colLen; col++) {
							String result = rs.getString(col);
							row[col - 1] = result;
						}
						rows.add(row);
					}
					rowArray = new String[rows.size()][colLen];
					for (int r = 0; r < rows.size(); r++) {
						String[] temp = rows.get(r);
						rowArray[r] = temp;
						//System.out.println(Arrays.toString(rowArray[r]));
					}
					//panel.repaint();
					panel.remove(table);
					table = new JTable(rowArray, column);
					
					panel.add(table);
					panel.repaint();
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}
			}
		});
		
		return panel;
	}
	
    protected JComponent makeTextField(String Fieldtext, String labelText) {
		JTextField field = new JTextField(Fieldtext);
		JLabel label = new JLabel(labelText);
		
		return null;
    }
    
    public static String [] initializeOptions() {
        String[] tables = {Tables.Animals.getTable(), 
       		 Tables.Adopter.getTable(), Tables.Adopts.getTable(),
       		 Tables.Appointment.getTable(), Tables.Employee.getTable(),
       		 Tables.Foster.getTable(), Tables.Fosters.getTable(), 
       		 Tables.Manages.getTable(), Tables.MedicalStaff.getTable(), 
       		 Tables.Supplies.getTable(), Tables.Uses.getTable(), 
       		 Tables.Worker.getTable()};
        return tables;
    }
    
	public JComponent getViewTab() {
		return this.viewTab;
	}
	
	public static String getSelectedDropDown() {
		return selectedDropDown;
	}
	
	
}
