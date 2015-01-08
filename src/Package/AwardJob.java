package Package;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Proposal
 */
public class AwardJob extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside AwardJob.java");
		String proposerid = request.getParameter("proposerid");
		String jobid = request.getParameter("jobid");
		String proposalId = request.getParameter("proposalid");
		System.out.println(proposerid);
		System.out.println(jobid);
		int iproposalId = 0;
		if (proposalId!= null){
			iproposalId = Integer.parseInt(proposalId);
		}
		int intproposerid = Integer.parseInt(proposerid);
		int intjobid = Integer.parseInt(jobid);
		DBconnect db = new DBconnect();
		int status =  db.awardJob(intproposerid, intjobid, iproposalId);	
		db.close();	
		if(status == 1){
			String success = "Your Job is awarded Successfully!";
			request.setAttribute("success", success);
			request.getRequestDispatcher("/success.jsp").forward(request, response);
		}
	}

}
