package Test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.io.*;

import com.kenai.jffi.Array;


public class Class1 {

	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
			
		String str = "badal,rishi,apoorv";
		String fields, interest;
		String search;
		String condition = null;
		String suggestedJobs =  null;
		
		System.out.println("last indes of , "+ str.lastIndexOf(","));
		
		String s = "Count, the number,, of commas.";  
		int numberOfCommas = str.replaceAll("[^,]","").length(); 
		
		System.out.println("commas count " + numberOfCommas);
		Database db = new Database();
		
		
		ArrayList<EmailFields> details = new ArrayList<EmailFields>();
		
		details = db.getDataForEmail();
		
		for(EmailFields e : details){
			//System.out.println("Email " + e.getEmail() + " Fields " + e.getFields() + " Interests " + e.getInterests());
			
			fields = e.getFields();
			interest = e.getInterests();
			search =  fields + "," + interest;
			
			numberOfCommas = search.replaceAll("[^,]","").length();
			System.out.println("length of " + search + " is " + numberOfCommas );
			
			String[] arr = search.split(",");
			
			for (int i=0; i<numberOfCommas; i++){
				if (i==0){
					condition = "'%"+arr[i]+"%'";
				}
				else{
					condition = condition + " or " + "'%"+arr[i]+"%'";
				}
				System.out.println("condition is  "+ condition);
				
			}
			
			
			
			suggestedJobs = db.getSuggestedJobs(condition);
			System.out.println("Suggested jobs are  " +  suggestedJobs);
			
		
			String newJobs = suggestedJobs.replaceAll(" ", "PPP");
			System.out.println("suggested new jobs  " + newJobs);
			String ret = "hello";
			newJobs = "\"" + newJobs + "\"";
			System.out.println("new jobs as string  "+ newJobs);

			try{

				Process p = Runtime.getRuntime().exec("python sendemail.py " + e.getEmail() + " " +newJobs );
				BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream())); 
				ret = in.readLine().toString();
				System.out.println("value is : "+ret);
				}catch(Exception ex){
					System.out.println("unable to send " + ex + " "  +ret);
				}
			
			
		}
	
		
	}

}
