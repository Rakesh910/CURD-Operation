

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.Users;
/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Users> user = new ArrayList<Users>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public void init(){
    	
    	
    	user.add(new Users("admin", "admin"));
    	user.add(new Users("Additya", "Additya"));
    	user.add(new Users("Rahul", "Rahul"));
    	user.add(new Users("Kush", "Kush"));
    	user.add(new Users("Shri", "Shri"));
    	
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
		String unm = request.getParameter("txtunm");
		String pwd = request.getParameter("txtpwd");
		RequestDispatcher rd;
		int flag=0;
		try {
				for(Users usr : user){
					if(usr.getUsername().equals(unm) && usr.getPassword().equals(pwd) )
					{
						if(usr.getUsername().equals("admin") && usr.getPassword().equals("admin")){
							flag = 1;
						}else{
							flag = 2;
						}
						request.setAttribute("uname",unm);
						break;
					}
					else
					{
						flag = 0;
					}
				}
				if(flag==1){
					rd = request.getRequestDispatcher("adminHome.jsp");
					rd.forward(request, response);
					//response.sendRedirect("login.jsp");
				}else if(flag==2){
					rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
						//response.sendRedirect("welcome.jsp");
				}else{
						PrintWriter write = response.getWriter();
						write.println("Enter Valid"); 
						rd = request.getRequestDispatcher("login.jsp");
						rd.forward(request, response);
							//response.sendRedirect("welcome.jsp");
					}
				}catch (Exception e) {
			// TODO: handle exception
		}	
	}
}
