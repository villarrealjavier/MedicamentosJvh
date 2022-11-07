package com.jacaranda;

import java.util.ArrayList;

import org.hibernate.query.Query;
import org.hibernate.Session;

public class UtilUsers {
	// Obtiene un usuario en concreto partiendo del parametro name.
		public static Users getUser(String name ) {
			Session session = Conn.getSession();
				
			Users user = (Users) session.get(Users.class,name);
			return user;
			
		}
		
		// Obtiene una lista con los usuarios
		public static ArrayList<Users> getUsers(){
			Session session = Conn.getSession();
			
			Query<Users> query = session.createQuery("SELECT p FROM com.jacaranda.User p");
			ArrayList<Users> users = (ArrayList<Users>) query.getResultList();
			
			return users;
		}
		
		  //Comprueba si el usuario es valido en nuestra base de datos.
		public static boolean userAdminIsValid(String name, String pass) {
		    boolean valid = false;
		    String passEncriptada = EncriptarMD5.getMD5(pass);
			try {
				
			    Session session = Conn.getSession();
			    Query<Users> query = session.createQuery("SELECT p FROM com.jacaranda.Users p WHERE user='" + name + "'and password='"+passEncriptada+"'",Users.class);
			    if(!query.getResultList().isEmpty()) {
			        valid = true;
			    
			    }
			}catch(Exception e) {
			    System.out.println(e.getMessage());
			}
			return valid;
		}
		
		
		
	
}
