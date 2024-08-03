package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import models.User;

public class UserDAOImpl implements UserDAO{
	public static Connection con;
	
	public UserDAOImpl() {
		con = extra.db.DataBaseConnection.getConnected();
	}

	@Override
	public int verifyLogin(String email, String password) {
		PreparedStatement ps;
		ResultSet rs;

		 try {
			  ps=con.prepareStatement("SELECT * from users where email= ? and password= ?");
			  ps.setString(1, email);
			  ps.setString(2, password);
			  rs=ps.executeQuery();
			  if(rs.next())
				  return 1;
			  else
				  return 0;
		}catch(Exception e) {
				System.out.println("Connection error : verifyLogin");
			}
			
		return -1;
	}
	

	@Override
	public int addUser(User user) {
		PreparedStatement ps;

		try {
			ps=con.prepareStatement("INSERT INTO users Values (NULL, ?, ?, ?,"
					+ "?, ?, NOW(), ?)");
			
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getFullName());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getPhoto());
			ps.setString(5, user.getAboutMe());
			ps.setString(6, user.getCategory());
			int i=ps.executeUpdate();
			if (i>0)
				return 1;
			else
				return 0;
		}catch(Exception e){
			System.out.println("Connection error : ADD USER" +e );
		}
		return -1;		
	}

	@Override
	public User getUserById(String id) {
		PreparedStatement ps;
		ResultSet rs;
		User user = new User();
		 try {
			  ps=con.prepareStatement("SELECT * from users where idUser= ?");
			  ps.setString(1, id);
			  rs=ps.executeQuery();
			  if(rs.next()) {
				  user.setIdUser(rs.getString(1));
				  user.setEmail(rs.getString(2));
				  user.setFullName(rs.getString(3));
				  user.setPassword(rs.getString(4));
				  user.setPhoto(rs.getString(5));
				  user.setAboutMe(rs.getString(6));
				  user.setRegisterDate(rs.getString(7));
				  user.setCategory(rs.getString(8));
				  return user;
			  }else {
				  user.setIdUser("");
				  return user;
			  }
				  
		}catch(Exception e) {
				System.out.println("Connection error : GET USER BY ID");
			}
			
		return null;
	}

	@Override
	public User getUserByEmail(String email) {
		PreparedStatement ps;
		ResultSet rs;
		User user = new User();
		 try {
			  ps=con.prepareStatement("SELECT * from users where email= ?");
			  ps.setString(1, email);
			  rs=ps.executeQuery();
			  if(rs.next()) {
				  user.setIdUser(rs.getString(1));
				  user.setEmail(rs.getString(2));
				  user.setFullName(rs.getString(3));
				  user.setPassword(rs.getString(4));
				  user.setPhoto(rs.getString(5));
				  user.setAboutMe(rs.getString(6));
				  user.setRegisterDate(rs.getString(7));
				  user.setCategory(rs.getString(8));
				  return user;
			  } else {
				  user.setIdUser("");
				  return user;
			  }
				  
		}catch(Exception e) {
				System.out.println("Connection error : GET USER BY EMAIL");
			}
			
		return null;
	}

	@Override
	public int updateUser(User user) {
		PreparedStatement ps;

		try {
			ps=con.prepareStatement("update users set idUser=?, email=?,"
					+ "fullName=?, password=?, photo=?, registerDate=?,"
					+ "aboutMe=?, category=?");
			
			ps.setString(1, user.getIdUser());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getFullName());
			ps.setString(4, user.getPassword());
			ps.setString(5, user.getPhoto());
			ps.setString(6, user.getRegisterDate());
			ps.setString(7, user.getAboutMe());
			ps.setString(8, user.getCategory());
			int i=ps.executeUpdate();
			if (i>0)
				return 1;
			else
				return 0;
		}catch(Exception e){
			System.out.println("Connection error : UPDATE USER" +e );
		}
		return -1;		
	}

	@Override
	public int deleteUser(String id) {
		PreparedStatement ps;

		try {
			ps=con.prepareStatement("delete from users where iduser=?");
			
			ps.setString(1, id);

			int i=ps.executeUpdate();
			if (i>0)
				return 1;
			else
				return 0;
		}catch(Exception e){
			System.out.println("Connection error : DELETE USER" + e);
		}
		return -1;		
	}

}
