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
                    <li>
                        <a href="#">Welcome, <%= request.getSession().getAttribute("userName") %></a>
                    </li>
                     <li>
                        <a href="<%=request.getContextPath() %>/myStulance/?jobs=all">My Stulance</a>
                    </li>
                    
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
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=all">Household & Homecare</a></h5>
                	<ul>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=lawnmowing" class="l">Lawn Mowing</a></li>                	             	                 	
	                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=housecleaning" class="l">House Cleaning</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=babysitting" class="l">Baby Sitting</a></li>
	                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=tutor" class="l">Personal Tutor</a></li>
						<li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=shoppingasstt" class="l">Shopping Assistant</a></li>               
	                 	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=electronic" class="l">Computer Services</a></li><!-- this is the computer service but the id is electronic -->                    
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=cookingasstt" class="l">Cooking Assistant/Chef</a></li>
						<li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=caretaker" class="l">Caretaker</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=massagetherapist" class="l">Massage Therapist</a></li>
	                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=nurse" class="l">Nurse</a></li>
						<li><a href="<%=request.getContextPath()%>/get/jobs/?category=householdandhomecare&field=otherhoushold" class="l">Others</a></li>
				 	</ul>
                </div>
                
                <div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=fun&entertainment&field=all">Fun & Entertainment</a></h5>
                	<ul>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=fun&entertainment&field=personalmessenger" class="l">Personal Messenger</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=fun&entertainment&field=mimicartists" class="l">Mimic Artists</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=fun&entertainment&field=pranks" class="l">Pranks</a></li>
	                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=fun&entertainment&field=dancers" class="l">Dancing</a></li>
                 	</ul>
                </div>
                
                <div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=lifestyle&field=all">Lifestyle</a></h5>
                	<ul>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=lifestyle&field=personalshopper" class="l">Personal Shopper</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=lifestyle&field=makeup" class="l">Makeup, Styling & Beauty</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=lifestyle&field=animalcare" class="l">Animal Care & Pets</a></li>
	                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=lifestyle&field=pickup" class="l">Car Pickup/Drops</a></li>
                 	</ul>
                </div>
                
                <div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=maintenance&repairse&field=all">Maintenance & Repairs</a></h5>
                	<ul>
                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=maintenance&repairs&field=painting" class="l">Painting</a></li>
                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=maintenance&repairs&field=plumbing" class="l">Plumbing</a></li>
                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=maintenance&repairs&field=locksmith" class="l">Locksmith</a></li>
                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=maintenance&repairs&field=carpenter" class="l">Carpenter</a></li>
                 	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=maintenance&repairs&field=electrician" class="l">Electrician</a></li>
                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=maintenance&repairs&field=restoration" class="l">Restoration</a></li>
                 	</ul>
                </div>  
                
                <div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=itprogramming&field=all">IT programming</a></h5>
                	<ul>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=itprogramming&field=webprogramming" class="l">Web Programming</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=itprogramming&field=webdesign" class="l">Web Design</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=itprogramming&field=mobileapp" class="l">Mobile Application</a></li>
	                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=itprogramming&field=testing" class="l">Quality Assurance/Testing</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=itprogramming&field=dbmgmt" class="l">Database Management</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=itprogramming&field=bi" class="l">Bussiness Intelligence</a></li>   
					</ul>
                </div>
				
				<div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=designmultimedia&field=all">Design & Multimedia</h5>
                	<ul>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=designmultimedia&field=graphicdesign" class="l">Graphic Design</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=designmultimedia&field=photography" class="l">Photography</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=designmultimedia&field=brochures" class="l">Brochures</a></li>
	                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=designmultimedia&field=animation" class="l">Animation</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=designmultimedia&field=videos" class="l">Videos</a></li>
					</ul>
                </div>
				
				<div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=writingtranslation&field=all">Writing & Translation</a></h5>
                	<ul>
                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=writingtranslation&field=articlewriting" class="l">Article Writing</a></li>
                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=writingtranslation&field=ebook&blogs" class="l">E-books/Blogs</a></li>
                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=writingtranslation&field=translation" class="l">Translation</a></li>
                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=writingtranslation&field=copywriting" class="l">Copy Writing</a></li>
                 	</ul>
                </div>
				
				<div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=adminsupport&field=all">Admin Support</a></h5>
                	<ul>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=adminsupport&field=techsupport" class="l">Technical Support</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=adminsupport&field=ofcmgmt" class="l">Office Management</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=adminsupport&field=transcription" class="l">Transcription</a></li>
	                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=adminsupport&field=dataentry" class="l">Data entry</a></li>
                 	</ul>
                </div>
				
				<div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=engineeringmanufacturing&field=all">Engineering & Manufacturing</a></h5>
                	<ul>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=engineeringmanufacturing&field=productdesign" class="l">Product Design</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=engineeringmanufacturing&field=electrical" class="l">Electrical</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=engineeringmanufacturing&field=cad" class="l">CAD</a></li>
	                	<li><a href="<%=request.getContextPath()%>/get/jobs/?category=engineeringmanufacturing&field=mechanical" class="l">Mechanical</a></li>
                 	</ul>
                </div>
				
				<div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=advertising&field=all">Advertisement</a></h5>
                	<ul>
                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=advertising&field=flyers&handouts" class="l">Flyers and Handouts</a></li>
                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=advertising&field=humanbillboards" class="l">Human Billboards</a></li>
                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=advertising&field=outdooradvertising" class="l">Outdoor Advertising</a></li>
                	
                 	</ul>
                </div>
				
				<div class="list-group">
                	<h5><a href = "<%=request.getContextPath()%>/get/jobs/?category=eventmanagement&field=all">Event Management</a></h5>
                	<ul>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=eventmanagement&field=fundraisers" class="l">Fund Raisers</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=eventmanagement&field=compere" class="l">Compere</a></li>
	                    <li><a href="<%=request.getContextPath()%>/get/jobs/?category=eventmanagement&field=stagepreparations" class="l">Stage Preparations</a></li>
                	</ul>
                </div>
            </div>

            <div class="col-md-9">            		 
                <div class="well" style="color:#2c3e50">
                    <div class="row">
                        <div class="col-md-12">
                            <form > 
								<font size="4"><b><%= request.getAttribute("success") %></font><br><br>
								
								<hr>
								<% String interest = (String)request.getAttribute("Interest");
								if(interest != null){ %>
								<font size="4"><b><%=request.getAttribute("Interest") %></font><br><br>
								<%} %>
                                <button type="button" onclick="location.href='<%=request.getContextPath() %>/index.jsp'" class="btn btn-success btn-lg"> < Home</button>
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
