package bean;

public class Adresse {
	
	private String street;
	private String city;
	private String cp;
	
	public Adresse(){
		this("","","");
	}
	
	
	
	public Adresse(String street, String city, String cp) {
		super();
		this.street = street;
		this.city = city;
		this.cp = cp;
	}



	String getStreet() {
		return street;
	}

	void setStreet(String street) {
		this.street = street;
	}

	String getCity() {
		return city;
	}

	void setCity(String city) {
		this.city = city;
	}

	String getCp() {
		return cp;
	}

	void setCp(String cp) {
		this.cp = cp;
	}


	
	
	
	
}
