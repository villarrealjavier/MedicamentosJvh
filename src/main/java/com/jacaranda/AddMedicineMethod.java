package com.jacaranda;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddMedicineMethod
 */
@WebServlet("/AddMedicineMethod")
public class AddMedicineMethod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMedicineMethod() {
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
	  	 if(usuario==null && password==null) {
	  		response.getWriter().append(paginaError());
	  	 }else {
	  		 ServletContext context = this.getServletContext();
	  		 RequestDispatcher dispacher = context.getRequestDispatcher("/ListMedicine");
	  		 List<Integer> listId = CRUDMedicine.getIdMax();
	  		 Integer id = listId.get(0);
	  		 String name=null;
	  		 String description=null;
	  		 Double price=null;
	  		 Integer category=null;
	  		 Category cat=null;
	  		 
	  		 try {
	  			 name = String.valueOf(request.getParameter("nameProduct"));
	  			 description = String.valueOf(request.getParameter("descriptionProduct"));
	  			 price = Double.valueOf(request.getParameter("priceProduct"));
	  			 category = Integer.valueOf(request.getParameter("category"));
	  			 cat = CRUDCategory.getCategory(category);
	  			 
	  			 
	  			 if((name!=null && !name.isEmpty()) && (description!=null && !description.isEmpty())
		  				 && (price!=null && !price.isNaN()) && (category!=null) && (cat!=null)) {
		  			 if (CRUDMedicine.getMedicineName(name).isEmpty()){
		  				 
		  				 Medicine m = new Medicine(id+1,name,description, price, cat);
		  				 CRUDMedicine.saveMedicine(m);	
		  				 dispacher.forward(request, response);
		  				 
		  			 }
		  			 
		  		 }
	  		 }catch (Exception e) {
				response.getWriter().append(paginaErrorNoAnnadir());
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
				+ "      <a href=\"ListMedicine?\"><img src=\"images/iconoSinFondo.png\" width=\"160px\" height=\"120px\" id=\"logo\"></a> \n"
				+ "            <hr>\n"
				+ "            <div id=\"izq\">\n"
				+ "                \n"
				+ "                <img src=\"images/error.png\" id=\"iconoError\">\n"
				+ "            </div>\n"
				+ "            <div id=\"der\">\n"
				+ "                <h1 id=\"TextoGrande\"><FONT color=\"black\">¡Vaya!</FONT></h1>\n"
				+ "                <h3 id=\"TextoChico\"><FONT color=\"black\">Ha ocurrido un error no puedes acceder aqui <br> Pulse en el icono para ir al login.</FONT></h3>\n"
				+ "                <h7 id=\"codError\">Codigo de error: 303 </h7>\n"
				+ "            </div>\n"
				+ "</body>\n"
				+ "</html>\n"
				+ "</html>";
	}

	private String paginaErrorNoAnnadir() {
		return "<!DOCTYPE html>\n"
				+ "<html>\n"
				+ "<head>\n"
				+ "<meta charset=\"ISO-8859-1\">\n"
				+ "<title>Error 404</title>\n"
				+ "		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/error.css\">\n"
				+ " \n"
				+ "</head>\n"
				+ "<body background=\"images/errorPagina.png\">\n"
				+ "      <a href=\"ListMedicine?\"><img src=\"images/iconoSinFondo.png\" width=\"160px\" height=\"120px\" id=\"logo\"></a> \n"
				+ "            <hr>\n"
				+ "            <div id=\"izq\">\n"
				+ "                \n"
				+ "                <img src=\"images/error.png\" id=\"iconoError\">\n"
				+ "            </div>\n"
				+ "            <div id=\"der\">\n"
				 + "                <h1 id=\"TextoGrande\"><FONT color=\"black\">¡Vaya no se puede añadir!</FONT></h1>\n"
					 + "                <h3 id=\"TextoChico\"><FONT color=\"black\">Ha ocurrido un error al añadir la medicina <br> Pulse en el icono para ir al login.</FONT></h3>\n"
					 + "                <h7 id=\"codError\">Codigo de error: 404 (Ese nombre ya existe)</h7>\n"
				+ "            </div>\n"
				+ "</body>\n"
				+ "</html>\n"
				+ "</html>";
	}

}
