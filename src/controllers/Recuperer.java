package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAOImpl;
import extra.gmail.GmailSMTP;
import models.User;

/**
 * Servlet implementation class Recuperer
 */
@WebServlet({ "/Recuperer", "/recuperer" })
public class Recuperer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAOImpl userDAOImpl;
	private RequestDispatcher rd;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Recuperer() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		userDAOImpl = new UserDAOImpl();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		rd = request.getRequestDispatcher("recuperer.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = (String) request.getParameter("email");
		User user = userDAOImpl.getUserByEmail(email);
		
		if (user != null) {
			if (!user.getIdUser().isEmpty()) {
				GmailSMTP gmailSMTP = new GmailSMTP("frfrfr@..fr", "rgegre");
				gmailSMTP.sendMail(email, "Mot de passe oublié",
						"Bonjour" + user.getFullName() + ",\n\nVotre mot de passe est : " + user.getPassword());
				
				request.setAttribute("SUCCESS", extra.values.Strings.SUCCESS_PASSWORD_SENT);
			} else {
				request.setAttribute("ERROR", extra.values.Strings.ERROR_EMAIL_INCORRECT);
			}
		} else {
			request.setAttribute("ERROR", extra.values.Strings.ERROR_DB_PROBLEM);
		}
		
		rd = request.getRequestDispatcher("recuperer.jsp");
		rd.forward(request, response);

	}

}
