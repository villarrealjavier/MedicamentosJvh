package com.jacaranda;

import java.io.Serializable;

public class purchase_id implements Serializable{
	private int idMedicine;
	private String user;

	
	public purchase_id() {
		
	}
	
	
	public purchase_id(int idMedicine, String user, int cod) {
		super();
		this.idMedicine = idMedicine;
		this.user = user;
		
	}
	public int getIdMedicine() {
		return idMedicine;
	}
	public void setIdMedicine(int idMedicine) {
		this.idMedicine = idMedicine;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	
}
