package com.jacaranda;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Medicine {
	@Id
	private String id;
	private String name;
	private String description;
	private Double price;
	@ManyToOne
	@JoinColumn (name="category")
	private Category category;
	
	
	public Medicine() {
		
	}
	
	public Medicine(String id, String name, String description, Double price,Category category) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.category=category;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	protected Category getCategory() {
		return category;
	}

	protected void setCategory(Category category) {
		this.category = category;
	}
	
}
