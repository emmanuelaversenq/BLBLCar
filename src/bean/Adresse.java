package bean;

import java.io.Serializable;

public class Adresse implements Serializable{
	
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



	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCp() {
		return cp;
	}

	public void setCp(String cp) {
		this.cp = cp;
	}


	
	
	
	
}
