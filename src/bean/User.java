package bean;

import java.io.Serializable;

public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String login;
	private String pwd;
	private String name;
	private String firstname;
	private String email;
	private Adresse adress;
	private boolean passenger;
	private boolean driver;
	
	public boolean isPassenger() {
		return passenger;
	}

	public void setPassenger(boolean passenger) {
		this.passenger = passenger;
	}

	public boolean isDriver() {
		return driver;
	}

	public void setDriver(boolean driver) {
		this.driver = driver;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public User() {
		login = "";
		pwd = "";
		name = "";
		firstname = "";
		email = "";
		adress = null;
		passenger = false;
		driver = false;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Adresse getAdress() {
		return adress;
	}

	public void setAdress(Adresse adress) {
		this.adress = adress;
	}

	public String getLogin() {
		return login;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	

}
