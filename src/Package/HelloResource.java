package Package;

import java.util.Set;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import com.ibm.nosql.json.api.BasicDBList;
import com.ibm.nosql.json.api.BasicDBObject;
import com.ibm.nosql.json.util.JSON;


//This class define the /hello RESTful API to fetch the database service information

@Path("/dbinfo")
public class HelloResource {

	@GET
	public String getInformation() {
		// load all system environments
		//JSONObject sysEnv = new JSONObject(System.getenv());

		// 'VCAP_APPLICATION' is in JSON format, it contains useful information about a deployed application
		// String envApp = System.getenv("VCAP_APPLICATION");

		// 'VCAP_SERVICES' contains all the credentials of services bound to this application.
		String envServices = System.getenv("VCAP_SERVICES");

        if (envServices == null) {
        	  return("VCAP_SERVICES not found");
        	  
          }
		
        BasicDBObject obj = (BasicDBObject) JSON.parse (envServices);
        
        String thekey = null;
        Set<String> keys = obj.keySet();
        System.out.println ("Searching through VCAP keys");
  	  // Look for the VCAP key that holds the SQLDB information
        for (String eachkey : keys) {
      	  if (eachkey.contains("sqldb")) {
      		  thekey = eachkey;
      	  }
        }
        if (thekey == null) {
      	  return("Cannot find any SQLDB service in the VCAP_SERVICES");
      	  
        }
        
        BasicDBList list = (BasicDBList) obj.get (thekey);
        obj = (BasicDBObject) list.get ("0");
        String name = (String) obj.get("name");
        obj = (BasicDBObject) obj.get ("credentials");
        String databaseHost = (String) obj.get ("host");
        String databaseName = (String) obj.get ("db");
        Integer port = (Integer) obj.get ("port");
//        String user = (String) obj.get ("username"); 
//        String password = (String) obj.get ("password");
        String jdbcurl = (String) obj.get("jdbcurl");
        
        
        BasicDBObject DBInfoObj = new BasicDBObject();

        DBInfoObj.put("name", name);
        DBInfoObj.put("host", databaseHost);
        DBInfoObj.put("db", databaseName);
        DBInfoObj.put("port", port);
        DBInfoObj.put("jdbcurl", jdbcurl);
        
        return DBInfoObj.toString();
        
        
        
	}
}