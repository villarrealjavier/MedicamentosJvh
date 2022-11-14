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
@WebServlet("/ListMedicine")
public class ListMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListMedicine() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append(paginaError());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String usuario = (String) session.getAttribute("usuario");
	   	String password = (String) session.getAttribute("password");
	     
	   	//COMPROBAMOS SI ES NULO E INTENTAMOS RECOGER LOS VALORES DE LA SESION PARA SEGUIR NAVEGANDO
	    if(usuario==null && password==null) {
	    	usuario= request.getParameter("user");
	    	password = request.getParameter("password");
	    	//COMPROBAMOS POR SEGUNDA VEZ DEBIDO A QUE SI NO SE PUEDE RECOGER LOS VALORES DE LA SESION 
	    	//DEBEREMOS MANDARLO A LA PAGINA DE ERROR
	    	if(usuario==null && password==null) {
	    		response.getWriter().append(paginaError());
	    	}
	    }
	    	if(UtilUsers.userIsValid(usuario, password)){

	    		session.setAttribute("login", "True");
	    		session.setAttribute("usuario", usuario);
	    		session.setAttribute("password", password);
	         	
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
	    				+  "<a href='#'><img src='images/iconoSinFondo.png' width='160px' height='120px' id='logo'></a>"
	    				+ "<div align='right'>"
	    				+ "<a href='Index.jsp'><input type='button' name='close' id='add' value='Close session' align='right'></a>"
			         	);
	         	if(UtilUsers.userAdminIAdmin(usuario, password)) {
	         		response.getWriter().append(
	         				 "<a href='addProduct.jsp'><input type='button' name='add' id='add' value='Add Products' align='right'></a>"
	         				
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
	    	
	    				response.getWriter().append( "<input type='hidden' name='user' value='"+usuario+"'>"
	    				+ "<input type='hidden' name='user' value='"+password+"'>"
	    				+ "</table>"
	    				+ "</div>"
	    				+ "</body>"
	    				+ "</head>"
	    				+ "</html>");
	    		
	            		
	    	} else { 
	       		response.getWriter().append(paginaError());
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
				+ "      <a href=\"Index.jsp\"><img src=\"images/iconoSinFondo.png\" width=\"160px\" height=\"120px\" id=\"logo\"></a> \n"
				+ "            <hr>\n"
				+ "            <div id=\"izq\">\n"
				+ "                \n"
				+ "                <img src=\"images/error.png\" id=\"iconoError\">\n"
				+ "            </div>\n"
				+ "            <div id=\"der\">\n"
				+ "                <h1 id=\"TextoGrande\"><FONT color=\"black\">¡Vaya!</FONT></h1>\n"
				+ "                <h3 id=\"TextoChico\"><FONT color=\"black\">Ha ocurrido un error al buscar la pagina<br> Pulse en el icono para ir al login.</FONT></h3>\n"
				+ "                <h7 id=\"codError\">Codigo de error: 404</h7>\n"
				+ "            </div>\n"
				+ "</body>\n"
				+ "</html>\n"
				+ "</html>";
	}

}
