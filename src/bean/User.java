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

	public boolean isPassager() {
		return passenger;
	}

	public void setPassager(boolean passenger) {
		this.passenger = passenger;
	}

	public boolean isDriver() {
		return driver;
	}

	public void setDriver(boolean driver) {
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
