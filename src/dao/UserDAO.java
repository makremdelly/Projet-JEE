package dao;

import models.User;

public interface UserDAO {

	public int verifyLogin(String email, String password);

	public int addUser(User user);

	public User getUserById(String id);

	public User getUserByEmail(String email);

	public int updateUser(User user);

	public int deleteUser(String id);

}
