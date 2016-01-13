package bean;

import java.io.Serializable;

public class User implements Serializable{


	private String name;
	private String firstname;
	private String email;
	private Adresse adress;
	private boolean passenger;
	private boolean driver;
	private String login;
	private String pwd;
	
	
	String getName() {
		return name;
	}

	void setName(String name) {
		this.name = name;
	}

	String getFirstname() {
		return firstname;
	}

	void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	String getEmail() {
		return email;
	}

	void setEmail(String email) {
		this.email = email;
	}

	Adresse getAdress() {
		return adress;
	}

	void setAdress(Adresse adress) {
		this.adress = adress;
	}

	boolean isPassager() {
		return passenger;
	}

	void setPassager(boolean passenger) {
		this.passenger = passenger;
	}

	boolean isDriver() {
		return driver;
	}

	void setDriver(boolean driver) {
		this.driver = driver;
	}

	public String getLogin() {
		return login;
	}

	public void setLoggin(String login) {
		this.login = login;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	

}
