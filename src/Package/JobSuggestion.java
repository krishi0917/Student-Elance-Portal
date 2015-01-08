package Package;

public class JobSuggestion implements Runnable{

	private Thread t;
	private String threadName;
	
	public JobSuggestion(String name) {
		// TODO Auto-generated constructor stub
		threadName = name;
		System.out.println("Creating thread " + threadName);		
	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		
		/**
		 *count the number of commas in a string
		 * int numberOfCommas = str.replaceAll("[^,]","").length(); 
			System.out.println("commas count " + numberOfCommas);
		 */
		
		
		
		
	}
	
	public void start ()
	   {
	      System.out.println("Starting " +  threadName );
	      if (t == null)
	      {
	         t = new Thread (this, threadName);
	         t.start ();
	      }
	   }
	
}
