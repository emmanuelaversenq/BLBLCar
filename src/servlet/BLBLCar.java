package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BLBLCar
 */
@WebServlet("/BLBLCar")
public class BLBLCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//public static String VIEW_PAGES_URL = "/WEB-INF/index.jsp";
	public static final String FIELD_LOGIN = "login";
	public static final String FIELD_PWD = "pwd";
	public Map<String, String> errors = new HashMap<String, String>();
	public Map<String, String> form = new HashMap<String, String>();
	public String actionMessage = "Succès de l'identification";
	public Boolean errorStatus=false;
       
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
		
		String loginval="ksah";
		String motdepasse="1111111111";
		
		 if (!login.equals(loginval)){
		 errMsg = "login incorrecte";
		 }
		
		if (errMsg != null) {
			errors.put(FIELD_LOGIN, errMsg);
			actionMessage = "Echec de l'identification";
			errorStatus=true;
		}
		
		if (errMsg == null) {
			form.put(FIELD_LOGIN, login);
		}
		
		if (!pwd.equals(motdepasse)){
		errMsg = "mot de passe incorecte";
		}
		
		if (errMsg != null) {
			errors.put(FIELD_PWD, errMsg);
			actionMessage = "Echec de l'identification";
			errorStatus=true;
		}
		
		request.setAttribute("form", form);
		request.setAttribute("errors", errors);
		request.setAttribute("actionMessage", actionMessage);
		request.setAttribute("errorStatus",errorStatus);
		
		doGet(request, response);
	}

}
