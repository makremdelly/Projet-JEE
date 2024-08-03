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
 * Servlet implementation class Login
 */
@WebServlet({ "/Login", "/login", "/Connexion", "/connexion" })
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAOImpl userDAOImpl;
	private RequestDispatcher rd;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		userDAOImpl = new UserDAOImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		rd = request.getRequestDispatcher("connexion.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = (String) request.getParameter("login");
		String password = (String) request.getParameter("mdp");

		HttpSession session = request.getSession();

		int statut = userDAOImpl.verifyLogin(email, password);

		if (statut == 1) {
			User user = userDAOImpl.getUserByEmail(email);
			session.setAttribute("user", user);
			
			rd = request.getRequestDispatcher("index.jsp");

		} else if (statut == 0) {
			request.setAttribute("ERROR", extra.values.Strings.ERROR_LOGIN);
			rd = request.getRequestDispatcher("connexion.jsp");
		} else {
			request.setAttribute("ERROR", extra.values.Strings.ERROR_DB_PROBLEM);
			rd = request.getRequestDispatcher("connexion.jsp");
		}

		
		rd.forward(request, response);

	}

}
