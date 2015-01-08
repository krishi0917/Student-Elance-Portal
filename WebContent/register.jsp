
<!DOCTYPE html>
<html5 lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>  
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>  
 
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#page-top">Stulance</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
	<hr>
    <!-- Header -->
        
    

   <!-- FindLancer Ends -->
	
	 <!-- Post your Job Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h4>Complete Your Profile</h4>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="register" id="register" action="register">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>First Name</label>
                                <input type="text" class="form-control" placeholder="First Name" id="name3" name="firstName" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Last Name</label>
                                <input type="text" class="form-control" placeholder="Last Name" id="lname" name="lName" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>                        
                       <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>University</label>                 
                      			<input type="text" class="form-control" placeholder="University" id="university" >            
                              
                                <select class="form-control" name = "university" style="width: 300px;">
   	
    								<option value = "San Jose State University"   >San Jose State University </option>
    								<option value="Arizona State University">Arizona State University</option>
    								<option value="University of Southern California">University Of Southern California</option>
    								<option value="University of California, Berkley">University of California, Berkley</option>
    								<option value="North Caroina State University">North Carolina State University</option>
    								<option value="University Of Florida">University Of Florida</option>
    								<option value="University of Illinois, Chicago">University of Illinois, Chicago</option>
    								   								
  								</select>
                                
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                        	<div class="form-group col-xs-12 floating-label-form-group controls">
                             	<label>Rate </label>
                                <input type="tel" class="form-control" name="rate" placeholder="Rate" id="price" >
                       			<br>
                       			<input type="radio" name="payBasis" value="fixed" >Fixed Basis
                       			<br>      
								<input type="radio" name="payBasis" value="hourly">Hourly Basis
                       			<p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Fields Of Interest</label>
                                <input type="tel" class="form-control" name="fields" placeholder="Fields of Interest" id="price" >                 
                        		<font size="4"><b> It Programming</b></font><br>
                        		<input type="checkbox" name="fields" value="webprogramming"/>Web Programming &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="webdesign"/>Web Design &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="mobileapp"/>Mobile App &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="testing"/>Testing & QA &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="dbmgmt"/>Db Management &nbsp;&nbsp;&nbsp;&nbsp;<br>
								<input type="checkbox" name="fields" value="bi"/>Business Intelligence &nbsp;
								<hr>
								<font size="4"><b> Design and Multimedia</b></font><br>
								<input type="checkbox" name="fields" value="graphicdesign"/>Graphic Design &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="photography"/>Photography &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="brochures"/>Brochures &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="animation"/>Animation &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="videos"/>Videos &nbsp;<br>
								<hr>
								<font size="4"><b> Writing and Translation</b></font><br>
								<input type="checkbox" name="fields" value="articlewriting"/>Article Writing &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="ebook&blogs"/>Ebooks and Blogs &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="translation"/>Translation &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="copywriting"/>Copy Writing &nbsp;&nbsp;&nbsp;&nbsp;<br>
								<hr>
								<font size="4"><b> Admin Support</b></font><br>
								<input type="checkbox" name="fields" value="techsupport"/>Technical Support &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="ofcmgmt"/>Office Management &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="transcription"/>Transcription &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="dataentry"/>Data Entry &nbsp;&nbsp;&nbsp;&nbsp;<br>
								<hr>
								<font size="4"><b> Engineering And Manufacturing</b></font><br>
								<input type="checkbox" name="fields" value="productdesign"/>Product Design &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="electrical"/>Electrical &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="cad"/>CAD &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="mechanical"/>Mechanical &nbsp;&nbsp;&nbsp;&nbsp;<br>
								<hr>
								<font size="4"><b> Extra Activities</b></font><br>
								<input type="checkbox" name="fields" value="painting"/>Painting &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="plumbing"/>Plumbing &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="locksmith"/>Locksmith &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="eventmgmt"/>Event Management &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="shoppingasstt"/>Shopping Assistant &nbsp;&nbsp;&nbsp;&nbsp;<br>
								<input type="checkbox" name="fields" value="electronic"/>Electronics &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="makeup"/>Makeup &nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="fields" value="nurse"/>Nursing &nbsp;&nbsp;&nbsp;&nbsp;<br>
								
							</div>
						</div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Tag Line</label>
                                <input type="text" class="form-control" placeholder="Tag Line" id="tagline" name="tagline" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <input type="hidden" name="email" value="<%=request.getParameter("email") %>">
                        <input type="hidden" name="password" value="<%=request.getParameter("password1")%>">
                        <input type="hidden" name="confirmPass" value="<%=request.getParameter("confirmPass2")%>">
                        <input type="hidden" name="postJobCall" value="<%=request.getParameter("postJobCall")%>">
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" name="register" id="register" class="btn btn-success btn-lg">Register</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>3481 Melrose Place<br>Beverly Hills, CA 90210</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Freelancer</h3>
                        <p>Freelance is a free to use, open source Bootstrap theme created by <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Your Website 2014
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visble-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals Removed -->
    
    
  
    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="<%=request.getContextPath()%>/js/jquery.easing.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/classie.js"></script>
    <script src="<%=request.getContextPath()%>/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="<%=request.getContextPath()%>/js/jqBootstrapValidation.js"></script>
   

    <!-- Custom Theme JavaScript -->
    <script src="<%=request.getContextPath()%>/js/freelancer.js"></script>

</body>

</html5>
