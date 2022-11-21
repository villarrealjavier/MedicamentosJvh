package com.jacaranda;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class Carrito {


	private List<Item> listShopping = new ArrayList<>();
	private LocalDateTime date_purchase;
	
	public void addItem(Item item) {
		if(item!=null) {
			if(listShopping.indexOf(item)== -1) {
				listShopping.add(item);
				item.setQuantity(1);
				
			}else {
				item.setQuantity(item.getQuantity()+1);
			}
		}
	}

	public Carrito() {
		super();
		this.listShopping = null;
		this.date_purchase=LocalDateTime.now();
		
	}
	
	public Carrito(List<Item> listShopping, LocalDateTime date_purchase) {
		super();
		this.listShopping = listShopping;
		this.date_purchase=date_purchase;
		this.date_purchase=LocalDateTime.now();
		
	}

	public List<Item> getListShopping() {
		return listShopping;
	}

	public void setListShopping(List<Item> listShopping) {
		this.listShopping = listShopping;
	}

	public LocalDateTime getDate_purchase() {
		return date_purchase;
	}

	public void setDate_purchase(LocalDateTime date_purchase) {
		this.date_purchase = date_purchase;
	}
}
