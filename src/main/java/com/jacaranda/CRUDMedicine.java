package com.jacaranda;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDMedicine {
	public static List<Medicine> getMedicines() {
	    List<Medicine> listMedicine=null;
	   
		try {
			
		    Session session = Conn.getSession();
		    Query<Medicine> query = session.createQuery("SELECT p FROM com.jacaranda.Medicine p" ,Medicine.class);
		    if(!query.getResultList().isEmpty()) {
		        listMedicine = query.getResultList();
		    
		    }
		}catch(Exception e) {
		    System.out.println(e.getMessage());
		}
		return listMedicine;
	}
}
