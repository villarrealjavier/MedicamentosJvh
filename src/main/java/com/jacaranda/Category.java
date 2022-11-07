package com.jacaranda;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
	@Id
	@Column(name="id")
	private String idCat;
	private String name;
	private String description;
	
	@OneToMany(mappedBy="category", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Medicine> listMedicine;
	
	public Category() {
		
	}
	
	public Category(String id, String name, String description) {
		super();
		this.idCat = id;
		this.name = name;
		this.description = description;
	}



	protected String getId() {
		return idCat;
	}



	protected void setId(String id) {
		this.idCat = id;
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

	protected List<Medicine> getListMedicine() {
		return listMedicine;
	}

	protected void setListMedicine(List<Medicine> listMedicine) {
		this.listMedicine = listMedicine;
	}
	
	
	
	
}
