package bean;

import java.util.ArrayList;
import java.util.List;

public class ListUser {
	
	private static ListUser instance;
	private List<User> liste = new ArrayList<User>();
	private User currentUser = null;
	
	public User getCurrentUser() {
		return currentUser;
	}

	public void setCurrentUser(User currentUser) {
		this.currentUser = currentUser;
	}

	private ListUser() {}
	
	public static ListUser getInstance() {
		if (instance == null) instance = new ListUser();
		return instance;
	}
	
	public void addUser(User user) {
		liste.add(user);
	}
	
	public List<User> getListPassenger() {
		List<User> result = new ArrayList<User>();
		for (int i = 0; i < liste.size(); i++) {
			if (liste.get(i).isPassenger()) {
				result.add(liste.get(i));
			}
		}
		return result;
	}
	
	public User searchUser(String login) {
		User result = null;
		
		for (int i = 0; i < liste.size(); i++) {
			if (login.equals(liste.get(i).getLogin())) {
				result = liste.get(i);
				break;
			}
		}
		return result;
	}

}
