Get started with Stulance
-----------------------------------
This is a template for Bluemix Java Web database application development.

The sample is a simple todo list where users can add, modify, and delete individual todo items, while those items persist to the backend database. In the sample is a clear demonstration of how to use JPA or JDBC to access the database service that binds to the application.

1. [Install the cf command-line tool](https://www.ng.bluemix.net/docs/#starters/BuildingWeb.html#install_cf).
2. [Download the starter package](https://ace.ng.bluemix.net:443/rest/../rest/apps/443b6ac6-2508-48db-8da3-dd354484eb21/starter-download).
3. Extract the package and `cd` to it.
4. Connect to Bluemix:

		cf api https://api.ng.bluemix.net

5. Log into Bluemix:

		cf login -u badal.jain@sjsu.edu
		cf target -o badal.jain@sjsu.edu -s myWebApp
		
6. Compile the Java code and generate the war package using ant.
7. Deploy your app:

		cf push Stulance -p libertyDBApp.war

8. Access your app: [http://Stulance.mybluemix.net](http://Stulance.mybluemix.net)
