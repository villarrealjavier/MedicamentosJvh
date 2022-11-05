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
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("<!DOCTYPE html>"
//				+ "<html>"
//				+ "<head>"
//				+ "<title>"
//				+ "Catalogo Medicinas"
//				+ "</title>"
//				+ "<meta charset='UTF-8'>"
//				+ "<body>"
//				+ "<div>"
//				+ "<table>"
//				+ "<tr>"
//				+ "<th>Id: </th>"
//				+ "<th>Name: </th>"
//				+ "<th>Description: </th>"
//				+ "<th>Price: </th>"
//				+ "</tr>"
//				+  Iterator<Medicine> iterador = CRUDMedicine.getMedicines();
//				+ while(iterador.hasNext()) {
//					+ Medicine m = iterador.next();
//					+ "<tr>"
//					+ "<th>" + m.getId() + "</th>"
//					+ "<th>" + m.getName()+ "</th>"
//					+ "<th>" + m.getDescription() + "</th>"
//					+ "<th>" + m.getPrice() + "</th>"
//					+ "</tr>" + }
//					
//				
//				+ "</table>"
//				+ "</div>"
//				+ "</body>"
//				
//				+ "</head>"
//				
//				+ "</html>");
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
