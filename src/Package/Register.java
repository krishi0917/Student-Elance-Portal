package Package;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	String email = request.getParameter("email");
		String password = request.getParameter("password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lName");
		String university = request.getParameter("university");
		String rate = request.getParameter("rate");
		String payBasis = request.getParameter("payBasis");
		String postJobCall = request.getParameter("postJobCall");
		String fields = "";
		String tagLine = request.getParameter("tagline");
		String[] checkFields = request.getParameterValues("fields");
		//convert the rate to float
		Float fRate =  Float.parseFloat(rate);
		HttpSession session = request.getSession();
		
		for(int i=1; i<checkFields.length; i++){
			if(i==1){
				fields = checkFields[i];
			}
			else{
				fields = fields +","+ checkFields[i];
			}
		}
		System.out.println("Fields are  " + fields);
		
		DBconnect db = new DBconnect();
		String name = db.registerUser(password, firstName, lastName, university, fields, fRate, email, tagLine);
		
		String[] nameAndId = name.split(",");
		if (!nameAndId[1].isEmpty()){
			session.setAttribute("userId", nameAndId[1]);
		}
		if(!nameAndId[0].isEmpty())
		session.setAttribute("userName", nameAndId[0]);
		session.setAttribute("login", "true");
		
		if(postJobCall != null && postJobCall.equalsIgnoreCase("true")){
			db.close();
			request.getRequestDispatcher("/postYourJob.jsp").forward(request, response);
			}
		else{
		String url = "/get/jobs/all";
		db.close();
		request.getRequestDispatcher(url).forward(request, response);
		}
		
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
	}

}
