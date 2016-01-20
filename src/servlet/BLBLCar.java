package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Adresse;
import bean.User;

/**
 * Servlet implementation class BLBLCar
 */
@WebServlet("/BLBLCar")
public class BLBLCar extends HttpServlet {
	
	// JPA Persistence des données
	private List<User> listUser = new ArrayList<User>();
	
	private static final long serialVersionUID = 1L;
	
	//public static String VIEW_PAGES_URL = "/WEB-INF/index.jsp";
	public static final String FIELD_LOGIN = "login";
	public static final String FIELD_PWD = "pwd";
	public Map<String, String> errors = new HashMap<String, String>();
	public Map<String, String> form = new HashMap<String, String>();
	public String actionMessage = "Succès de l'identification";
	public String msgInscription = "";
	public Boolean errorIdentification=false;
	public Boolean errorInscription=false;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BLBLCar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String errMsg=null;
		String login = request.getParameter(FIELD_LOGIN);
		String pwd = request.getParameter(FIELD_PWD);
		
		errors = new HashMap<String, String>();
		errorInscription=false;
		
		User cnxUser = (login == null || login.equals("") ? null : SearchUser(login));
		if (cnxUser == null) {
			errMsg = "login incorrect";
			errors.put(FIELD_LOGIN, errMsg);
			actionMessage = "Echec de l'identification";
			errorIdentification=true;
		} else {
			if (!pwd.equals(cnxUser.getPwd())) {
				errMsg = "mot de passe incorect";
				errors.put(FIELD_PWD, errMsg);
				actionMessage = "Echec de l'identification";
				errorIdentification=true;
			}
		}
		
		request.setAttribute("actionMessage", actionMessage);
		request.setAttribute("errorStatus",errorIdentification);
		
		User user = new User();
		user.setAdress(new Adresse("", "", ""));
		String pwdConfirm = request.getParameter("pwdConfirm");
		
		user.setLogin(request.getParameter("loginIns"));
		user.setPwd(request.getParameter("pwdIns"));
		user.setName(request.getParameter("name"));
		user.setFirstname(request.getParameter("firstname"));
		user.setEmail(request.getParameter("email"));
		
		user.getAdress().setStreet(request.getParameter("street"));
		user.getAdress().setCity(request.getParameter("city"));
		user.getAdress().setCp(request.getParameter("cp"));
		
		user.setDriver(request.getParameter("driver") != null);
		user.setPassenger(request.getParameter("passenger") != null);
		
		if (user.getLogin() == null || user.getLogin().length() == 0) {
			errors.put("user.login", "L'identifiant utilisateur est obligatoire");
			errorInscription=true;
		}
		if (user.getPwd() == null || user.getPwd().length() == 0) {
			errors.put("user.pwd", "Le mot de passe est obligatoire");
			errorInscription=true;
		}
		if (user.getPwd() != null) {
			if (!user.getPwd().equals(pwdConfirm)) {
				errors.put("pwdConfirm", "La confirmation du mot de passe n'est pas valide");
				errorInscription=true;
			}
		}
		if (user.getName() == null || user.getName().length() == 0) {
			errors.put("user.name", "Le nom est obligatoire");
			errorInscription=true;
		}
		if (user.getFirstname() == null || user.getFirstname().length() == 0) {
			errors.put("user.firstname", "Le prénom est obligatoire");
			errorInscription=true;
		}
		errMsg = validateEmail(user.getEmail());
		if(errMsg!=null) {
			errors.put("user.email", errMsg);
			errorInscription=true;
		}
		if (!user.isDriver() && !user.isPassenger()) {
			errors.put("driverPassenger", "Vous devez vous inscrire comme conducteur, passager, ou les deux");
			errorInscription=true;
		}
		
		if (user.getAdress().getStreet() == null || user.getAdress().getStreet().length() == 0) {
			errors.put("adress.street", "Le nom de la rue est obligatoire");
			errorInscription=true;			
		}
		if (user.getAdress().getCity() == null || user.getAdress().getCity().length() == 0) {
			errors.put("adress.city", "La ville est obligatoire");
			errorInscription=true;			
		}		
		
		msgInscription = (errorInscription ? "Echec de l'inscription" : "Succès de l'inscription");
		
		if (!errorInscription) {
			listUser.add(user);
		}
	
		request.setAttribute("user", user);	
		request.setAttribute("adress", user.getAdress());	
		request.setAttribute("pwdConfirm", pwdConfirm);	
		request.setAttribute("msgInscription", msgInscription);
		request.setAttribute("errorInscription", errorInscription);	
		
		request.setAttribute("form", form);
		request.setAttribute("errors", errors);
		
		doGet(request, response);

	}
	
	private String validateEmail( String email ) { 
		if ( email != null && email.trim().length() != 0 ) {
			if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
				return "Veuillez saisir une adresse mail valide";
			} else {
				return null;
			}
		} else {
			return "L'adresse mail est obligatoire";
		}
	}
	
	private User SearchUser(String login) {
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
