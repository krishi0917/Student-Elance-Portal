<!DOCTYPE html>
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
                <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">Stulance</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="<%=request.getContextPath()%>/postjob">Post Your Job</a>
                    </li>
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
                <p class="lead" style="color:#2c3e50"><b>Go to .. </b></p>
                <div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/index.jsp">Home</h5>
                </div>
                <div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?jobs=all">All Jobs</a></h5>
                </div>
				
				
            </div>

            <div class="col-md-9">            		 
                <div class="well" style="color:#2c3e50">
                	<font size="5" color: #2c3e50 ><b><i>Submit Your Proposal</i></b> </font>
					<hr>   
                    <div class="row">
                        <div class="col-md-12">
                            <form action="userProposal" method="post"> 
								<font size="4"><b>Job Title :</b> <%= request.getParameter("jobTitle") %></font><br><br>
								<font size="3"><b>Description :</b> <%= request.getParameter("jobDesc") %></font><br><br>
								<font size="3"><b>Bid : $ <%= request.getParameter("jobPay") %></b></font><br><br>
								<textarea rows="5" cols="70" autofocus maxlength="200" name="myProposal" required>
								</textarea><br><br>
								<input type="hidden" name="jobId" value = "<%=request.getParameter("jobId") %>">
								<select name="proposalDays" autofocus style="width:150px; border:1px solid #2c3e50;">	
									<option value="oneday">Within 1 day</option>
								    <option value="3days">Within 3 Days</option>
								    <option value="1week">1 Week</option>
								    <option value="15days">15 Days</option>
								    <option value="1month">1 Month</option>
								    <option value="3months">3 Months</option>
								    <option value="other">Other</option>
								</select>
								<label>Price</label>
		                       <input type="tel" class="form-control" name="price" placeholder="Price" id="price" >
		                       <br>
		                       <input type="radio" name="payType" value="fixed" >Fixed Basis
		                       <br>
								<input type="radio" name="payType" value="hourly">Hourly Basis
                              
                          
								<hr>
                                <button type="submit" class="btn btn-success btn-lg">Submit</button>
                         	</form>
                        </div>
                    </div>
                    <hr>
                 </div>
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
