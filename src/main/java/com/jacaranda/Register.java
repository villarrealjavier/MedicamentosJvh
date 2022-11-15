package com.jacaranda;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append(paginaError());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user= String.valueOf(request.getParameter("username"));
		String pass = String.valueOf(request.getParameter("passwordR"));
		String first= String.valueOf(request.getParameter("first"));
		String last= String.valueOf(request.getParameter("last"));
		LocalDateTime birthday=null;
		try {
			birthday= LocalDateTime.of(LocalDate.parse(request.getParameter("birth")),LocalTime.now());
			
		}catch (Exception e) {
			response.getWriter().append(paginaError());
		}
		
			
		
		String gender = String.valueOf(request.getParameter("gender"));
		int admin = Integer.valueOf(request.getParameter("admin"));
		//---------------------------------------------------------------
		
		
		String passEncript = EncriptarMD5.getMD5(pass);
		
		Users u = new Users(user,passEncript,admin,first,last,birthday,gender);
		
		if(user!=null && pass!=null && first!=null && last!=null && birthday!=null && gender!=null) {
			if(UtilUsers.getUser(u.getUser())==null && pass.length()>=6) {
				user.trim();
				pass.trim();
				first.trim();
				last.trim();
				gender.trim();
				CRUDUser.saveUser(u);
				response.sendRedirect("Index.jsp");
				
			}else {
			
		}
			response.getWriter().append(paginaError());
		}
		
	}
	
	public String paginaError() {
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
				+ "                <h3 id=\"TextoChico\"><FONT color=\"black\">No hemos podido acceder al registro<br></FONT></h3>\n"
				+ "                <h7 id=\"codError\">Codigo de error: 303</h7>\n"
				+ "            </div>\n"
				+ "</body>\n"
				+ "</html>\n"
				+ "</html>";
	}
	

}
