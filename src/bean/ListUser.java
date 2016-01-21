package bean;

import java.util.ArrayList;
import java.util.List;

public class ListUser {
	
	// TODO : JPA Persistence des données
	public List<User> listUser = new ArrayList<User>();
	
	private static ListUser lu;
	
	private ListUser() {}
	
	public static ListUser getInstance() {
		if (lu == null) lu = new ListUser();
		return lu;
	}
	
	public List<User> getListPassenger() {
		List<User> result = new ArrayList<User>();
		for (int i = 0; i < listUser.size(); i++) {
			if (listUser.get(i).isPassenger()) {
				result.add(listUser.get(i));
			}
		}
		return result;
	}
	
	public User searchUser(String login) {
		User result = null;
		
		for (int i = 0; i < listUser.size(); i++) {
			if (login.equals(listUser.get(i).getLogin())) {
				result = listUser.get(i);
				break;
			}
		}
		return result;
	}

}
