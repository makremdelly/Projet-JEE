package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAOImpl;
import models.User;

/**
 * Servlet implementation class Inscription
 */
@WebServlet({ "/Inscription", "/inscription" })
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAOImpl userDAOImpl;
	private RequestDispatcher rd;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Inscription() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		userDAOImpl = new UserDAOImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		rd = request.getRequestDispatcher("inscription.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		User user = new User();
		user.setFullName(request.getParameter("nom"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		user.setCategory("student");
		HttpSession session = request.getSession();
		

		User user2 = userDAOImpl.getUserByEmail(user.getEmail());
		
		if(user2!=null) { // n'existe pas
			if(user2.getIdUser().isEmpty()) {// n'existe pas
				int statut = userDAOImpl.addUser(user);
				if(statut==1) {
					session.setAttribute("user", user);
					rd = request.getRequestDispatcher("index.jsp");
				}else {
					request.setAttribute("ERROR", extra.values.Strings.ERROR_DB_PROBLEM);
					rd = request.getRequestDispatcher("inscription.jsp");
				}
				
			}else { // User existe
				request.setAttribute("ERROR", extra.values.Strings.ERROR_EMAIL_EXIST);
				rd = request.getRequestDispatcher("inscription.jsp");
			}
			
		}else { // DATABASE ERROR
			request.setAttribute("ERROR", extra.values.Strings.ERROR_DB_PROBLEM);
			rd = request.getRequestDispatcher("inscription.jsp");
		}
			

		rd.forward(request, response);

		
		
	}

}
