

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class deleteProduct
 */
@WebServlet("/deleteProduct")
public class deleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd;
		int id = Integer.parseInt(request.getParameter("del"));
		ServletContext context=getServletContext();  
	    List list=(List)context.getAttribute("data");  
	    if(list.size()> 0){
	    	Iterator itr=list.iterator();  
		    while(itr.hasNext()){  
		     Product prd=(Product)itr.next();
		     if(prd.getProductID()==id){
		    	 itr.remove();
		    	 rd = request.getRequestDispatcher("adminHome.jsp");
		    	 rd.forward(request, response);
		     }else{
		    	 rd = request.getRequestDispatcher("adminHome.jsp");
		    	 rd.forward(request, response);
		     }
		     		
		     	
		    	}
		     }
		  
	}

}
