package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.Course;
import models.User;

public class CourseDAOImpl implements CourseDAO{
	
	public static Connection con;
	
	public CourseDAOImpl() {
		con = extra.db.DataBaseConnection.getConnected();
	}

	@Override
	public Course getCourse(String id) {
		PreparedStatement ps;
		ResultSet rs;
		Course course = new Course();
		 try {
			  ps=con.prepareStatement("SELECT * from courses where idCourse= ?");
			  ps.setString(1, id);
			  rs=ps.executeQuery();
			  if(rs.next()) {
				 course.setIdCourse(rs.getString(1));
				 course.setTitle(rs.getString(2));
				 course.setPhoto(rs.getString(3));
				 course.setStartDate(rs.getString(4));
				 course.setDuration(rs.getInt(5));
				 course.setPrice(rs.getFloat(6));
				 course.setDescription(rs.getString(7));
				 course.setTeacher(rs.getString(8));
				  return course;
			  }else {
				  course.setIdCourse("");
				  return course;
			  }
				  
		}catch(Exception e) {
				System.out.println("Connection error : GET USER BY ID");
			}
			
		return null;
	
	}

	@Override
	public List<Course> getAllCourses() {
		PreparedStatement ps;
		ResultSet rs;
		List<Course> coursesList = new ArrayList<Course>();
		 try {
			  ps=con.prepareStatement("SELECT * from courses");
			 
			  rs=ps.executeQuery();
			  while(rs.next()) {
				Course course = this.getCourse(rs.getString(1));
				coursesList.add(course);
			  }
			  
				  
		}catch(Exception e) {
				System.out.println("Connection error : GET USER BY ID");
			}
			
		return coursesList;
	}

	@Override
	public int addCourse(Course course) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateCourse(Course course) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCourse(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
