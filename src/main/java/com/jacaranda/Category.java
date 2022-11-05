package com.jacaranda;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
@Entity
public class Category {
	@Id
	private int id;
	private String name;
	private String description;
	
	@ManyToMany
	List<Medicine> listMedicine;
	
	public Category() {
		
	}
	
	public Category(int id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
	}



	protected int getId() {
		return id;
	}



	protected void setId(int id) {
		this.id = id;
	}



	protected String getName() {
		return name;
	}



	protected void setName(String name) {
		this.name = name;
	}



	protected String getDescription() {
		return description;
	}



	protected void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
}
