package extra.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
* DataBaseConnection.java
* Permet de se connecter et de se d�connecter � une base de donn�e mysql
* Permet de v�rifier le login d'un utilisateur
* Permet d'ajouter un nouveau utilisateur
*/

public class DataBaseConnection {
	
	public static String url;
	public static String dataBaseHot = "localhost";
	public static String dataBasePort = "3306";
	public static String dataBaseName = "jeedb";
	public static String dataBaseUser = "root";
	public static String dataBasePassword = "";
	
	public static Connection con;
	
	

	/**
	 * Returns la connexion de notre base de donn�es
	 * @return cn
     */
	public static Connection getConnected()   {
		try{
			url = "jdbc:mysql://"+dataBaseHot+":"+dataBasePort+"/"+dataBaseName;
			
			Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, dataBaseUser, dataBasePassword);
		}
		catch(Exception e){
			System.out.println("Connection failed : "+e);
			return null;
		}
		
		return con;
	}
	 
	/**
	 * Permet de se d�connecter de la base de donn�es
     */
	public static void releaseConnection()  {
		try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		

}
