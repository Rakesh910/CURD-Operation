

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;

/**
 * Servlet implementation class addProduct
 */
@WebServlet("/addProduct")
public class addProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Product> product = new ArrayList<Product>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter write = response.getWriter();
		int pid = Integer.parseInt(request.getParameter("txtpid"));
		int cid = Integer.parseInt(request.getParameter("txtcid"));
		String pname = request.getParameter("txtpnm");
		String pdesc = request.getParameter("txtprocudtdesc");
		int pprice = Integer.parseInt(request.getParameter("txtproprice"));
		RequestDispatcher rd;
	
		if(product.add(new Product(pid,cid, pname, pdesc, pprice))){
			ServletContext application = getServletContext();
			application.setAttribute("data", product);
			rd = request.getRequestDispatcher("adminHome.jsp");
		}else{
			rd = request.getRequestDispatcher("addProduct.jsp");
		}
		rd.forward(request, response);
	}
}
