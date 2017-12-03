
public enum Tables {
	Animals("animals"), 
	Worker("worker"), 
	Employee("employee"), 
	Manages("manages"), 
	Foster("foster"), 
	Fosters("fosters"), 
	Adopter("adopter"), 
	Adopts("adopts"), 
	Supplies("supplies"), 
	Uses("uses"), 
	MedicalStaff("medical_staff"), 
	Appointment("appointment");
	
	private String table;
	
	Tables(String table) {
		this.table = table;
	}
	
	public String getTable() {
		return table;
	}
}
