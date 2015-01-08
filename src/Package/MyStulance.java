package Package;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.fabric.xmlrpc.base.Array;

/**
 * Servlet implementation class MyStulance
 */
public class MyStulance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyStulance() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	List<GetJobClass> jobs = new ArrayList<GetJobClass>();
		HttpSession session = request.getSession();
		String inputJobs = request.getParameter("jobs");
		System.out.println("input jobs " + inputJobs);
		DBconnect db = new DBconnect();
		int intUserId=0;
		String userId = (String)request.getSession().getAttribute("userId");
		try{
			if(userId != null){
				intUserId = Integer.parseInt(userId);
			}
		}catch(Exception e){
			System.out.println("Exception in mystulance service "+ e);
			intUserId = 0;
		}
		if(inputJobs != null){
			if (inputJobs.equalsIgnoreCase("all")){
				jobs = db.getMyJobs(intUserId, "all");
				session.setAttribute("joblist", jobs);
				System.out.println("we are back here at all jobs in mystulance");
				db.close();
				request.getRequestDispatcher("/myStulance.jsp").forward(request, response);
				
			}
			else if(inputJobs.equals("proposalsForMe")){
				List <UserAndProposal> proposals = new ArrayList<UserAndProposal>();
				proposals = db.getMyProposals(intUserId, "proposalsForMe");
				session.setAttribute("proposals", proposals);
				db.close();
				request.getRequestDispatcher("/myProposals.jsp").forward(request, response);
			}
			else if (inputJobs.equalsIgnoreCase("myProposals")){
				List <UserAndProposal> proposals = new ArrayList<UserAndProposal>();
				proposals = db.getMyProposals(intUserId,"myProposals");
				session.setAttribute("myproposals", proposals);
				db.close();
				request.getRequestDispatcher("/myProposals2.jsp").forward(request, response);
			}
			else if(inputJobs.equalsIgnoreCase("completed")){
				jobs = db.getMyJobs(intUserId, "completed");
				session.setAttribute("joblist", jobs);
				System.out.println("we are back here at my jobs completed in mystulance");
				db.close();
				request.getRequestDispatcher("/myStulance.jsp").forward(request, response);
			}
			else if(inputJobs.equalsIgnoreCase("myJobs")){
				jobs = db.getMyJobs(intUserId, "myJobs");
				session.setAttribute("joblist", jobs);
				System.out.println("we are back here at jobs assigned to me in mystulance");
				db.close();
				request.getRequestDispatcher("/myStulance.jsp").forward(request, response);
			}
			else if (inputJobs.equalsIgnoreCase("completedByMe")){
				jobs = db.getMyJobs(intUserId, "completedByMe");
				session.setAttribute("joblist", jobs);
				System.out.println("we are back here at jobs assigned to me in mystulance");
				db.close();
				request.getRequestDispatcher("/myStulance.jsp").forward(request, response);
			}
		}
		else{
			
			jobs = db.getMyJobs(intUserId, "all");
			System.out.println("joblist is " + jobs);
			session.setAttribute("joblist", jobs);
			System.out.println("we are back here");
			db.close();
			request.getRequestDispatcher("/myStulance.jsp").forward(request, response);
		}
	}
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
