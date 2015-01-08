package Package;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.List;
/**
 * Servlet implementation class findFreelancers
 */
public class findFreelancers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public findFreelancers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**	
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("We are here");
		String caller = request.getHeader("referer");
		System.out.println("Caller URL is " + caller);
		
		String queryString = request.getQueryString();
		System.out.println("query string is " + queryString);
		System.out.println("request parameters " + request.getParameter("category") + " "+ request.getParameter("field") );
		
		String category = request.getParameter("category");
		String field = request.getParameter("field");
		
		List<GetJobClass> jobs = new ArrayList<GetJobClass>();
		
		//DBconnect db = new DBconnect();
		//jobs = db.getJobs(category,field);
		
		
	}

}
