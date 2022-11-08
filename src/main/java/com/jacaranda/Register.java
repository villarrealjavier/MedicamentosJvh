package com.jacaranda;

import java.io.IOException;
import java.time.LocalDate;

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
		// TODO Auto-generated method stub
		String user= String.valueOf(request.getParameter("username"));
		String pass = String.valueOf(request.getParameter("passwordR"));
		String first= String.valueOf(request.getParameter("first"));
		String last= String.valueOf(request.getParameter("last"));
		LocalDate birthday= LocalDate.parse(String.valueOf(request.getParameter("birth")));
		String gender = String.valueOf(request.getParameter("gender"));
		int admin = Integer.valueOf(request.getParameter("admin"));

		String passEncript = EncriptarMD5.getMD5(pass);

		Users u = new Users(user,passEncript,admin,first,last,birthday,gender);
		CRUDUser.saveUser(u);
		response.sendRedirect("Login.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
