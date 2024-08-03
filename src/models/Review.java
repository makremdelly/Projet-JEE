package models;

public class Review {
	
	private String idUser;
	private String idCourse;
	private String date;
	private int rate;
	private String content;
	

	public Review() {
		
	}


	public String getIdUser() {
		return idUser;
	}


	public void setIdUser(String idUser) {
		this.idUser = idUser;
	}


	public String getIdCourse() {
		return idCourse;
	}


	public void setIdCourse(String idCourse) {
		this.idCourse = idCourse;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public int getRate() {
		return rate;
	}


	public void setRate(int rate) {
		this.rate = rate;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}

	
}
