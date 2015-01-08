package Package;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.exceptions.DeadlockTimeoutRollbackMarker;

/**
 * Servlet implementation class SubmitJob
 */

public class SubmitJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitJob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jobName = request.getParameter("jobName");
		String categoryAndField = request.getParameter("category");
		String[] cAF = null;
		if(categoryAndField != null){
			cAF = categoryAndField.split(",");
		}
		String success = "";
		int field = 0;
		int category = 0;
		if (cAF[0]!=null){
			category = Integer.parseInt(cAF[0]);
		}
		if(cAF[1]!= null){
			field = Integer.parseInt(cAF[1]);
		}
		System.out.println("under submit job servlet");
		String price = request.getParameter("price");
		int pay = Integer.parseInt(price);
		String payType = request.getParameter("payType");
		String desc = request.getParameter("desc");
		String userId = (String)request.getSession().getAttribute("userId");
		int intUserId = Integer.parseInt(userId);
		String deadline = request.getParameter("deadline");
		DBconnect db = new DBconnect();
		int status = db.postJob(intUserId, desc, pay, category, field, jobName, deadline, payType);
		
		if(status == 1){
			success = "Thank you, Your Jobs is submitted successfully!";
		}
		else{
			success = "Sorry, We are unable to process the request at this time";
		}
		request.setAttribute("success", success);
		request.getRequestDispatcher("/success.jsp").forward(request, response);
		
		db.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

}
