package com.jacaranda;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Integer> listId = CRUDMedicine.getIdMax();
		Integer id = listId.get(0);
		String name = String.valueOf(request.getParameter("nameProduct"));
		String description = String.valueOf(request.getParameter("descriptionProduct"));
		Double price = Double.valueOf(request.getParameter("priceProduct"));
		Integer category = Integer.valueOf(request.getParameter("category"));
		Category cat = CRUDCategory.getCategory(category);
		
		Medicine m = new Medicine(id+1,name,description, price, cat);
		CRUDMedicine.saveMedicine(m);
		
		response.sendRedirect(request.getContextPath() + "/Index");
 				
	}

}
