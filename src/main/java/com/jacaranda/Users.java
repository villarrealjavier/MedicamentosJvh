package com.jacaranda;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity (name = "Users")
public class Users {
	@Id
	private String user;
	private String pass;
	private boolean admin;
	private String namePerson;
	private String surname;
	private LocalDate fecha;
	private String genero;

//CONSTRUCTOR
public Users() {
	
}
public Users(String user, String pass, boolean admin, String namePerson, String surname, LocalDate fecha,
		String genero) {
	super();
	this.user = user;
	this.pass = pass;
	this.admin = admin;
	this.namePerson = namePerson;
	this.surname = surname;
	this.fecha = fecha;
	this.genero = genero;
}

//GETTERS AND SETTERS
public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public boolean isAdmin() {
	return admin;
}
public void setAdmin(boolean admin) {
	this.admin = admin;
}
public String getNamePerson() {
	return namePerson;
}
public void setNamePerson(String namePerson) {
	this.namePerson = namePerson;
}
public String getSurname() {
	return surname;
}
public void setSurname(String surname) {
	this.surname = surname;
}
public LocalDate getFecha() {
	return fecha;
}
public void setFecha(LocalDate fecha) {
	this.fecha = fecha;
}
public String getGenero() {
	return genero;
}
public void setGenero(String genero) {
	this.genero = genero;
}



}
