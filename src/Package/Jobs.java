package Package;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.ha.backend.CollectedInfo;

/**
 * Servlet implementation class Jobs
 */
@WebServlet("/Jobs")
public class Jobs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Jobs() {
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
		HttpSession session = request.getSession();
		String userid = "";
		int intUserId = 0;
		DBconnect db = new DBconnect();
		String queryString = request.getQueryString();
		System.out.println("query string is " + queryString);
		System.out.println("request parameters " + request.getParameter("category") + " "+ request.getParameter("field") );
		
		String login = (String)request.getSession().getAttribute("login");
		if (login == null){
			session.setAttribute("login", "false");
		} else if (login.equalsIgnoreCase("true")) {
			userid = (String)session.getAttribute("userId");
		}
		try{
		if (userid !=  null) {
			intUserId = Integer.parseInt(userid);
		}
		}catch(Exception E){
			System.out.println("cannot convert to integer "+ E);
			intUserId = 0;
		}
		String category = request.getParameter("category");
		String field = request.getParameter("field");
		
		if (field == null){
			field = "all";
		}
		if (category == null){
			category = "all";
		}
		
	//	List<GetCategoryAndField> cAndF = new ArrayList<GetCategoryAndField>();
		
		List<GetJobClass> jobs = new ArrayList<GetJobClass>();
		
	//	cAndF = db.getAllCategoriesAndFields();
		jobs = db.getJobs(category,field, intUserId);
		//Collections.sort(cAndF, GetCategoryAndField.categorySort);
		System.out.println("joblist is " + jobs.toString());
		
		//if (!category.equals("all")){
		
			session.setAttribute("joblist", jobs);
			System.out.println("we are back here");
			db.close();
			
			request.getRequestDispatcher("/jobs.jsp").forward(request, response);
			
	}

		
	}
