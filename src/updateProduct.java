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
 * Servlet implementation class updateProduct
 */
@WebServlet("/updateProduct")
public class updateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		PrintWriter out = response.getWriter();
		
		RequestDispatcher rd;
		int id = Integer.parseInt(request.getParameter("editID"));
		int pid = Integer.parseInt(request.getParameter("txtpid"));
		int cid = Integer.parseInt(request.getParameter("txtcid"));
		String pname = request.getParameter("txtpnm");
		String pdesc = request.getParameter("txtprocudtdesc");
		int pprice = Integer.parseInt(request.getParameter("txtproprice"));
		
		List<Product> updateProduct = new ArrayList<Product>();
		ServletContext context=getServletContext();  
	    List list=(List)context.getAttribute("data");
	    
	    if(list.size()>0){
	    	Iterator itr=list.iterator();  
	    	while(itr.hasNext()){
	    		Product prd=(Product)itr.next();
	    		
	    		if(prd.getProductID()==id){
	    			updateProduct.add(new Product(id, cid, pname, pdesc, pprice));
	    		}else{
	    			updateProduct.add(prd);
	    		}
	    		
	    	}
	    	ServletContext application = getServletContext();
	    	application.setAttribute("data", updateProduct);
	    	rd = request.getRequestDispatcher("adminHome.jsp");
			rd.forward(request, response);
    		}
	   }
}