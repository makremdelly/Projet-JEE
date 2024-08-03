package dao;

import java.util.List;

import models.Course;

public interface CourseDAO {

	public Course getCourse(String id);
	public List<Course> getAllCourses();
	public int addCourse(Course course);
	public int updateCourse(Course course);
	public int deleteCourse(String id);

}
