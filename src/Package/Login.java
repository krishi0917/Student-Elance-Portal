package Package;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

/**
 * Servlet implementation class Login
 */
//@WebServlet(description = "Login Servlet", urlPatterns = { "/Login" })
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("We are here in the login servlet");

		HttpSession session = request.getSession();
		String inUserName = request.getParameter("username");
		String inPasswd =  request.getParameter("password");
		String msg = "Hello ";

		System.out.println("username and password " + inUserName + " " + inPasswd);
		if(inUserName.equals(null) || inPasswd.equals(null)){
			
			PrintWriter out = response.getWriter();
			out.println("<font size='6' color='red'>" + msg + "</font>");
		}
		
		SHA1Class pass = new SHA1Class();
		String encryptPass =  pass.encryptPassword(inPasswd);
		
		DBconnect db = new DBconnect();
		String userId = "";
		String name = "";
		String firstName = db.verifyLogin(inUserName, inPasswd);
		String[] nameAndId = firstName.split(",");
		
	//	String home = (String)session.getAttribute("backHome");
	//	System.out.println("Home value at login" + home);
		
		
		name = nameAndId[0];
		if(nameAndId.length == 2){
			userId = nameAndId[1];
			System.out.println("name is "+ name + "  id is "+ userId);
		}
		else{
			userId = "1145";
			System.out.println("name is "+ name + "  id is "+ userId);
		}
		
		session.setAttribute("userId", userId);
		session.setAttribute("userName", name);
		session.setAttribute("login", "true");
		String postJobCall = request.getParameter("postJobCall");
		
		if(!name.equals("")){
			 
			 
			if(postJobCall != null && postJobCall.equalsIgnoreCase("true")){
				request.getRequestDispatcher("/postYourJob.jsp").forward(request, response);
				}
				else{
					String url = "/get/jobs/all";
					request.getRequestDispatcher(url).forward(request, response);
				}
		
			
		}
		else{
			msg = "Incorrect Username or Password";
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<font size='6' color='red'>" + msg + "</font>");
			response.sendRedirect(response.encodeRedirectURL("/test.jsp"));
		}
	}
		
	
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("We are here in the login servlet");

		String quantity = (String)request.getSession().getAttribute("quantity");
		HttpSession session = request.getSession();
		request.setAttribute("quantity", quantity);
		HttpSession session1 = request.getSession();
		String inUserName = request.getParameter("username");
		String inPasswd =  request.getParameter("password");
		String msg = "Hello ";

		System.out.println("username and password " + inUserName + " " + inPasswd);
		if(inUserName.equals(null) || inPasswd.equals(null)){
			
			PrintWriter out = response.getWriter();
			out.println("<font size='6' color='red'>" + msg + "</font>");
		}
		
		SHA1Class pass = new SHA1Class();
		String encryptPass =  pass.encryptPassword(inPasswd);
		
		DBconnect db = new DBconnect();
		String userId = "";
		String name = "";
		String firstName = db.verifyLogin(inUserName, inPasswd);
		String[] nameAndId = firstName.split(",");
		
	//	String home = (String)session.getAttribute("backHome");
	//	System.out.println("Home value at login" + home);
		
		
		name = nameAndId[0];
		if(nameAndId.length == 2){
			userId = nameAndId[1];
			System.out.println("name is "+ name + "  id is "+ userId);
		}
		else{
			userId = "1145";
			System.out.println("name is "+ name + "  id is "+ userId);
		}
		
		session1.setAttribute("userId", userId);
		session1.setAttribute("userName", name);
		session1.setAttribute("login", "true");
		String postJobCall = request.getParameter("postJobCall");
		
		if(!name.equals("")){
			 
			 
			if(postJobCall != null && postJobCall.equalsIgnoreCase("true")){
				request.getRequestDispatcher("/postYourJob.jsp").forward(request, response);
				}
				else{
					String url = "/get/jobs/all";
					request.getRequestDispatcher(url).forward(request, response);
				}
		
			
		}
		else{
			msg = "Incorrect Username or Password";
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<font size='6' color='red'>" + msg + "</font>");
			response.sendRedirect(response.encodeRedirectURL("/test.jsp"));
		}
	}

}
