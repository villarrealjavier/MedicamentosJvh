package com.jacaranda;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDMedicine {
//	public static ArrayList<Medicine> getMedicine(Category c){
//		Session session = Conn.getSession();
//		
//		ArrayList<Medicine> list = (ArrayList<Medicine>) c.getListMedicine();
//		
//		
//		return list;
//	}
//	
//	public static ArrayList<Medicine> getMedicines() {
//		Session session = Conn.getSession();
//		String hql = "SELECT id, name, description, price, category FROM Medicine a";
//		Query<Medicine> query = session.createNativeQuery(hql, Medicine.class);
//		ArrayList<Medicine> listMedicines = (ArrayList<Medicine>) query.getResultList();
//		return listMedicines;          
//	}
	
	public static List<Medicine> getMedicines() {
	   Session session= Conn.getSession();
	   Query<Medicine> query = session.createQuery("SELECT p FROM com.jacaranda.Medicine p");
	   ArrayList<Medicine> listMedicina = (ArrayList<Medicine>) query.getResultList();
		return listMedicina;
	}
}
