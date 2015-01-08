<!DOCTYPE html>
<%@page import="Package.GetJobClass"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stulance - Get your Job done</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/forwards/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/forwards/css/shop-homepage.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/freelancer.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    

</head>

<body>

  <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">STULANCE</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                	<li>
                        <a href="<%=request.getContextPath()%>/postjob">Post Your Job</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <%String login= (String)request.getSession().getAttribute("login");
                    if(login != null && login.equals("true")) { %>
                    <li class="page-scroll">
                        <a href="<%= request.getContextPath()%>/logout">Logout</a>
                    </li>
                    <%} else{ %>
                     <li class="page-scroll">
                        <a href="<%=request.getContextPath()%>/login.jsp">Login/Register</a>
                    </li>
                    <%} %>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	<hr>
    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead" style="color:#2c3e50"><b>Categories</b></p>
                <div class="list-group">
                	<h5><a href = "#">As a Client</a></h5>
                	<ul>
                    <li><a href="<%=request.getContextPath()%>/myStulance/?jobs=all" class="l">Posted Jobs</a></li>
                    <li><a href="<%=request.getContextPath()%>/myStulance/?jobs=proposalsForMe" class="l">Received Proposals</a></li>
                    <li><a href="<%=request.getContextPath()%>/myStulance/?jobs=completed" class="l">Completed Jobs</a></li>   
					</ul>
                </div>
				<div class="list-group">
                	<h5><a href = "#">As a Student</a></h5>
                	<ul>
                    <li><a href="<%=request.getContextPath()%>/myStulance/?jobs=myJobs" class="l">Assigned Jobs</a></li>
                    <li><a href="<%=request.getContextPath()%>/myStulance/?jobs=myProposals" class="l">My Proposals</a></li>
                    <li><a href="<%=request.getContextPath()%>/myStulance/?jobs=completedByMe" class="l">Completed Jobs</a></li>   
					</ul>
                </div>
                <div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/personalitySurvey.jsp">Discover Your Interest</h5>
                </div>				
            </div>

            <div class="col-md-9">  
             <%
						ArrayList<GetJobClass> array =(ArrayList<GetJobClass>)session.getAttribute("joblist"); 
						if(!array.isEmpty()){
							for(GetJobClass itr : array){
								        %>
				<form method= "post" action="<%=request.getContextPath()%>/proposal.jsp"> 
                <div class="well" style="color:#2c3e50">
                	<h5><b>Title: </b> <%= itr.getTitle() %></h5>
					<h6> Description:   <%= itr.getDescription()%></h6> 
					 Posted:    <%= itr.getAddTime()%> &nbsp;<b>| </b>&nbsp;  Deadline:  <%= itr.getDeadlines()%> &nbsp;<b>| </b> &nbsp; Fixed Price :    Not Sure <br>
					 Location: <%= itr.getLocation() %><br>
					<b> Quoted Price: $</b> <%= itr.getPay() %>
					<input type="hidden" name="jobId" value="<%= itr.getJobId() %>">						        
					<input type="hidden" name="jobTitle" value="<%= itr.getTitle() %>">
					<input type="hidden" name="jobDesc" value="<%= itr.getDescription() %>">
					<input type="hidden" name="jobDeadline" value="<%= itr.getDeadlines() %>">
					<input type="hidden" name="jobPay" value="<%= itr.getPay() %>">	
                </div>
                </form>
				<%}%>
			<%}else{%>
				<div class="col-md-9">
				 	<div class="well" style="color:#2c3e50">
				 		<h5> Sorry! The page cannot be displayed.</h5>
				 	</div>
				</div>
				<%} %>
			 </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

      
    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="<%=request.getContextPath()%>/forwards/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/forwards/js/bootstrap.min.js"></script>

</body>

</html>
