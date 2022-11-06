package com.jacaranda;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Index() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("<!DOCTYPE html>"
				+ "<html>"
				+ "<head>"
				+ "<meta charset=\"UTF-8\">"
				+ "<title>"
				+ "Catalogo Medicinas"
				+ "</title>"
				+ "<link rel='stylesheet' type='text/css' href='css/styleTablePage.css'>"
				+ "</head>"
				+ "<body background='posibleFondo.png'>"
				+ "<div>"
				+ "<table border='2'>"
				+ "<tr>"
				+ "<th id='id'>Id: </th>"
				+ "<th id='name'>Name: </th>"
				+ "<th id='description'>Description: </th>"
				+ "<th id='price'>Price: </th>"
				+ "</tr>");
				Iterator<Medicine> iterador = CRUDMedicine.getMedicines().iterator();
				while(iterador.hasNext()) {
					 Medicine m = iterador.next();
							 
					response.getWriter().append("<tr>"
					+ "<td>" + m.getId() + "</td>"
					+ "<td>" + m.getName()+ "</td>"
					+ "<td>" + m.getDescription() + "</td>"
					+ "<td>" + m.getPrice() + "</td>"
					+ "</tr>"); 
					}
	
				response.getWriter().append( "</table>"
				+ "</div>"
				+ "</body>"
				+ "</head>"
				+ "</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
