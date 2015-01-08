package Package;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Postjob
 */
@WebServlet("/Postjob")
public class Postjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Postjob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.setAttribute("postJobCall", "true");
		
		String login =  (String) request.getSession().getAttribute("login");
		if(login != null && login.equalsIgnoreCase("true")){
			request.getRequestDispatcher("/postYourJob.jsp").forward(request, response);
			
		}
		else{
			request.setAttribute("postJobCall", "true");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
	}

}
