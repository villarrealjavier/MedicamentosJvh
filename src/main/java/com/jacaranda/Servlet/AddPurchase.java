package com.jacaranda.Servlet;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jacaranda.CRUDCarrito;
import com.jacaranda.Carrito;
import com.jacaranda.Item;
import com.jacaranda.Users;
import com.jacaranda.UtilUsers;
import com.jacaranda.purchase;

/**
 * Servlet implementation class AddPurchase
 */
@WebServlet("/AddPurchase")
public class AddPurchase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPurchase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append(ListMedicine.paginaError());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		 ServletContext context = this.getServletContext();
  		 RequestDispatcher dispacher = context.getRequestDispatcher("/ListMedicine");
		Carrito c = (Carrito) session.getAttribute("carrito");
		Iterator<Item> iterador = c.getListShopping().iterator();
		
		String name = (String) session.getAttribute("usuario");
		Users usuario = UtilUsers.getUser(name);
		while(iterador.hasNext()){
			Item it = iterador.next();
			Integer cantidad = Integer.valueOf(request.getParameter(it.getMedicine().getName()));
			purchase p = new purchase(it.getMedicine(),usuario,LocalDateTime.now(),it.getMedicine().getPrice()*cantidad,cantidad);
			CRUDCarrito.savePurchase(p);
			
			
		}
		c.vaciarCarrito(c.getListShopping());

		dispacher.forward(request, response);
		
	}

}
