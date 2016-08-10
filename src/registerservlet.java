

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerservlet
 */
@WebServlet("/registerservlet")
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerservlet() {
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
		
		String fnm = request.getParameter("txtfnm");
		String lnm = request.getParameter("txtlnm");
		String snm = request.getParameter("txtsnm");
		String addr = request.getParameter("txtaddr");
		String email = request.getParameter("txtemail");
		out.print("<html>");
		out.print("<body>");
		out.print("<center><h1>User Detail</h1></center>");
		out.print("<TABLE BORDER=1>"); 
		out.print("<tr><td><h4>First Name :- </h4></td><td><h3>"+fnm+"</h3></td></tr>");
		out.print("<tr><td><h4>Last Name :- </h4></td><td><h3>"+lnm+"</h3></td></tr>");
		out.print("<tr><td><h4>Surname :- </h4></td><td><h3>"+snm+"</h3></td></tr>");
		out.print("<tr><td><h4>Address :- </h4></td><td><h3>"+addr+"</h3></td></tr>");
		out.print("<tr><td><h4>Email :- </h4></td><td><h3>"+email+"</h3></td></tr>");
		out.print("<tr><td colspan='2'><a href='index.jsp'>Back to Home Page</a></td></tr>");
        out.print("</TABLE>"); 
		out.print("</body>");
		out.print("<html>");
	}
}
