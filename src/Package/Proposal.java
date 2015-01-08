package Package;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Proposal
 */
public class Proposal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Proposal() {
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
		int pJobId = Integer.parseInt(request.getParameter("jobId"));
		String proposalDays = request.getParameter("proposalDays");
		String proposal = request.getParameter("myProposal");
		String payType = request.getParameter("payType");
		String price = request.getParameter("price");
		System.out.println("jobid" + pJobId + " proposal days " + proposalDays + "  proposal " + proposal + "  pay type " + payType
				+ "  price " + price);
		int intPrice = 0;
		if(price != null){
			intPrice = Integer.parseInt(price);
		}
		System.out.println("job title is " + pJobId);
		String success = null;
		HttpSession session = request.getSession();
		String userId = (String) request.getSession().getAttribute("userId");
		int intUserId = Integer.parseInt(userId);
		DBconnect db = new DBconnect();
		int status =  db.postUserProposal(intUserId, pJobId, proposal, proposalDays, intPrice, payType);
		
		if(status == 1){
			success = "Your Proposal is submitted Successfully!";
			request.setAttribute("success", success);
			request.getRequestDispatcher("/success.jsp").forward(request, response);
		}
		db.close();
		
	}

}
