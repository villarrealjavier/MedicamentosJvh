package com.jacaranda;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

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
		String usuario = request.getParameter("user");
	   	String password = request.getParameter("password");
	            	
	    
	    
	    if(usuario !=null && password !=null){
	    	if(UtilUsers.userIsValid(usuario, password)){
	    		HttpSession userSession = request.getSession();
	    		userSession.setAttribute("login", "True");
	    		userSession.setAttribute("usuario", usuario);
	         	
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
	    				+ "<div>");
	         	if(UtilUsers.userAdminIAdmin(usuario, password)) {
	         		response.getWriter().append("<div>"
	         				+  "<a href='#'><img src='images/iconoSinFondo.png' width='160px' height='120px' id='logo'></a>"
	         				+ "<br>"
	         				+ "<a href='addProduct.jsp'><input type='button' name='add' id='add' value='Add Products' align='right'></a>"
	         				
	         				+ "<br>"
	         				+ "</div>"
	         				+ "<br>");
	         	}
	         	
	    				response.getWriter().append("<table border='2'>"
	    				+ "<tr>"
	    				+ "<th id='id'>Id: </th>"
	    				+ "<th id='name'>Name: </th>"
	    				+ "<th id='description'>Description: </th>"
	    				+ "<th id='price'>Price: </th>"
	    				+ "<th id='price'>Name Category: </th>"
	    				+ "</tr>");
	    				List<Medicine> lista = null;
	    				lista = CRUDMedicine.getMedicines();
	    				Iterator<Medicine> iterador = lista.iterator();
	    				while(iterador.hasNext()) {
	    					 Medicine m = iterador.next();
	    							 
	    					response.getWriter().append("<tr>"
	    					+ "<td>" + m.getId() + "</td>"
	    					+ "<td>" + m.getName()+ "</td>"
	    					+ "<td>" + m.getDescription() + "</td>"
	    					+ "<td>" + m.getPrice() + "</td>"
	    					+ "<td>" + m.getCategory().getName() + "</td>"
	    					+ "</tr>"); 
	    					}
	    	
	    				response.getWriter().append( "</table>"
	    				+ "</div>"
	    				+ "</body>"
	    				+ "</head>"
	    				+ "</html>");
	    		
	            		
	    	} else { 
	       		response.getWriter().append(paginaError());
	  	 	}
		 }
		
	}

	private String paginaError() {
		return "<!DOCTYPE html>\n"
				+ "<html>\n"
				+ "<head>\n"
				+ "<meta charset=\"ISO-8859-1\">\n"
				+ "<title>Error 404</title>\n"
				+ "		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/error.css\">\n"
				+ " \n"
				+ "</head>\n"
				+ "<body background=\"images/errorPagina.png\">\n"
				+ "      <a href=\"Login.jsp\"><img src=\"images/iconoSinFondo.png\" width=\"160px\" height=\"120px\" id=\"logo\"></a> \n"
				+ "            <hr>\n"
				+ "            <div id=\"izq\">\n"
				+ "                \n"
				+ "                <img src=\"images/error.png\" id=\"iconoError\">\n"
				+ "            </div>\n"
				+ "            <div id=\"der\">\n"
				+ "                <h1 id=\"TextoGrande\"><FONT color=\"black\">¡Vaya!</FONT></h1>\n"
				+ "                <h3 id=\"TextoChico\"><FONT color=\"black\">No hemos podido encontrar<br> la página que buscas.</FONT></h3>\n"
				+ "                <h7 id=\"codError\">Codigo de error: 404</h7>\n"
				+ "            </div>\n"
				+ "</body>\n"
				+ "</html>\n"
				+ "</html>";
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
