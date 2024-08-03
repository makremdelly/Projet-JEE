package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CourseDAOImpl;

/**
 * Servlet implementation class Course
 */
@WebServlet({ "/Course", "/course" })
public class Course extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CourseDAOImpl courseDAOImpl;
	private RequestDispatcher rd;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Course() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config) throws ServletException {
    	courseDAOImpl = new CourseDAOImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idCourse = (String) request.getParameter("id");
		models.Course course = (models.Course) courseDAOImpl.getCourse(idCourse);
		if(course!=null) {
			if(course.getIdCourse().isEmpty()) {
				response.sendError(404);
			}else {
		request.setAttribute("course", course);
		rd = request.getRequestDispatcher("cours_info.jsp");
		rd.forward(request, response);}
		}else {
			response.sendError(404);
		}
		
	}

}
