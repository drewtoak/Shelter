import javax.swing.*;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.event.KeyEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.Properties;
 
public class ShelterGui extends JPanel {
//	static Connection conn = null;
//	static Statement stat = null;
//	public static void connectToDatabase() {
//		try {
//			Class.forName("org.postgresql.Driver");
//			
//			String url = "jdbc:postgresql://localhost/Shelter";
//			Properties props = new Properties();
//			props.setProperty("user", "postgres");
//			props.setProperty("password", "123456");
//			conn = DriverManager.getConnection(url, props);
//			
//			stat = conn.createStatement();
//
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//	}

    public ShelterGui() {
        super(new GridLayout(1, 1));
        //connectToDatabase();
        JTabbedPane tabbedPane = new JTabbedPane();
         
        JComponent panel1 = makeTextPanel("Panel #1");
        tabbedPane.addTab("Home", panel1);
         
        JComponent panel2 = makeTextPanel("Panel #2");
        tabbedPane.addTab("Edit", panel2);
        
        ViewTab viewTab = new ViewTab();
        tabbedPane.addTab("View", viewTab.getViewTab());
         
        JComponent panel4 = makeTextPanel(
                "Panel #4 (has a preferred size of 410 x 50).");
        panel4.setPreferredSize(new Dimension(410, 50));
        tabbedPane.addTab("Animals", panel4);
         
        //Add the tabbed pane to this panel.
        add(tabbedPane);
        //The following line enables to use scrolling tabs.
        tabbedPane.setTabLayoutPolicy(JTabbedPane.SCROLL_TAB_LAYOUT);
    }
     
    protected JComponent makeTextPanel(String text) {
        JPanel panel = new JPanel(false);
        JLabel filler = new JLabel(text);
        filler.setHorizontalAlignment(JLabel.CENTER);
        panel.setLayout(new GridLayout(1, 1));
        panel.add(filler);
        return panel;
    }
    
    protected JTextField makeTextField(String text) {
    		return new JTextField(text);
    }
     
    /** Returns an ImageIcon, or null if the path was invalid. */
    protected static ImageIcon createImageIcon(String path) {
        java.net.URL imgURL = ShelterGui.class.getResource(path);
        if (imgURL != null) {
            return new ImageIcon(imgURL);
        } else {
            System.err.println("Couldn't find file: " + path);
            return null;
        }
    }
     
    /**
     * Create the GUI and show it.  For thread safety,
     * this method should be invoked from
     * the event dispatch thread.
     */
    private static void createAndShowGUI() {
        //Create and set up the window.
        JFrame frame = new JFrame("Dr. Xiao's Rescue Shelter");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
         
        //Add content to the window.
        frame.add(new ShelterGui(), BorderLayout.CENTER);
         
        //Display the window.
        frame.pack();
        frame.setVisible(true);
    }
    
//    public static void returnViewQuery(String query) {
//    		try {
//			ResultSet rs = stat.executeQuery("Select * from " + query);
//			ResultSetMetaData rsmd = rs.getMetaData();
//			while(rs.next()) {
//				for (int i = 1; i <= rsmd.getColumnCount(); i++) {
//					String result = rs.getString(i);
//					System.out.println(result);
//				}
//			}
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//    }
     
    public static void main(String[] args) {
        //Schedule a job for the event dispatch thread:
        //creating and showing this application's GUI.
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                //Turn off metal's use of bold fonts
        UIManager.put("swing.boldMetal", Boolean.FALSE);
        createAndShowGUI();
//        returnViewQuery(ViewTab.getSelectedDropDown());
            }
        });
    }
}
