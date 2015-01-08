package Package;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PersonalityResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] answers = new String[21] ;
		int[] score_a = new int[7];
		int[] score_b = new int[7];
		String indicator = "";
		String success = "";
		
		HashMap hm = new HashMap();
		hm.put("ESTJ", "fundraisers, compere, stagepreparations, makeup, ofcmgmt");
		hm.put("ISTJ", "computerservices, webprogramming, webdesign, mobileapp, testing, dbmgmt, bi");
		hm.put("ESFJ", "nurse, babysitting, massagetherapist");
		hm.put("ISFJ", "electrician");
		hm.put("ESTP", "pranks");
		hm.put("ESFP", "compere, fundraisers");
		hm.put("ISTP", "webprogramming, webdesign, mobileapp, testing, dbmgmt, bi, plumbing, painting");
		hm.put("ISPF", "tutor, painting, carpenter, cookingasstt, makeup");
		hm.put("ENFJ", "tutor");
		hm.put("INFJ", "tutor");
		hm.put("ENFP", "tutor, fundraisers, compere, stagepreparations");
		hm.put("INFP", "dancers, tutor");
		hm.put("ENTJ", "ofcmgmt");
		hm.put("INTJ", "personalmessenger, mimicartists");
		hm.put("ENTP", "personalmessenger");
		hm.put("INTP", "restoration");	
		
		HttpSession session = request.getSession(true);
		//int uid = Integer.parseInt((session.getAttribute("userId")).toString());
		int uid = 1000;
		try {
			
			for (int i=0; i<answers.length; i++) {
				answers[i] = (request.getParameter(Integer.toString(i+1)));
			}	
			
			for (int i=0,j=1; i<answers.length; i++, j++) {
				j = j%8 == 0 ? 1:j;
				int temp = (answers[i].equalsIgnoreCase("a")) ? score_a[j-1]++: score_b[j-1]++;
			}
			
			score_a[1] += score_a[2];
			score_a[2] = score_a[3] + score_a[4];
			score_a[3] = score_a[5] + score_a[6];
			score_b[1] += score_b[2];
			score_b[2] = score_b[3] + score_b[4];
			score_b[3] = score_b[5] + score_b[6];
			//System.out.println(Arrays.toString(score_a));
			//System.out.println(Arrays.toString(score_b));
			
			indicator += score_a[0] >= score_b[0] ? "E":"I";
			indicator += score_a[1] >= score_b[1] ? "S":"N";
			indicator += score_a[2] >= score_b[2] ? "T":"F";
			indicator += score_a[3] >= score_b[3] ? "J":"P";
			
			//System.out.println(indicator);
			
			DBconnect db = new DBconnect();			
			int status = db.updateInterest(uid, hm.get(indicator).toString());
			if (status <= 0) {
				System.out.println("Error in updating the user interest field");
			}
			if(status == 1){
				success = "Based on your Answers, your interest may fall in below category";
				request.setAttribute("Interest", hm.get(indicator).toString());
				request.setAttribute("success", success);
				request.getRequestDispatcher("/success.jsp").forward(request, response);
			}
			db.close();
			
		} catch (Exception ex) {
			System.out.println("Error :" + ex);
		}		
	}
}
