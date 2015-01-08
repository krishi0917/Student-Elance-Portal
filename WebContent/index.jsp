
<!DOCTYPE html>
<html5 lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stulance - Get your job done </title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
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

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>  
 <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>  

<script>

$(function() {
	  
    // Setup form validation on the #register-form element
    $("#contactForm4").validate({
    
        // Specify the validation rules
        rules: {
            name4: { required : true,
            		minlength:2
            		 
            	},            
            email4 : {	required : true , 
            			email : true
            		},
		
		
            message4 : {	required : true,
            				minlength: 10
            	
            		}
            
        },
		//contactForm username password cPassword 
        
        // Specify the validation error messages
        messages:
        {
           name4: { 
        	   required:  "Please enter your first name"
            },
            
            email4: {
              // required: "Please provide a valid email-ID"
            },
				message4:  { required : "Please enter your concern ",
						  minlength : "Length should be atleast 10 "
							  
				}
          
        },
        
        submitHandler: function(form) 
        {
            form.send();
        }
    });

  });
 
$(function() {
    $("#loginform").validate({
    rules: {
    		username : {	required : true,
    			email: true
      		},
	           password: {
            	required: true,
            	minlength: 5
            }
    },
    messages: {
    	 username: { required:  "Please enter your first name",
         	minlength : "should be atleast 2 characters"
         },
        username: { required:  "Please enter your first name",
        	minlength : "should be atleast 2 characters"
        },
        password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 5 characters long"
        }
				
    },
    submitHandler: function(form) {
        form.submit();
    }
});
});
 
$(function() {
    $("#register").validate({
    rules: {
    		email : {	required : true , 
    		email : true
      		},
	           password1: {
            	required: true,
            	minlength: 5
            },
			confirmPass2: { 
	        	required : true,		
		    	equalTo : "#password1"
		    }
    },
    messages: {
    	 email: { required:  "Please enter your first name",
         	minlength : "should be atleast 2 characters"
         },
        username: { required:  "Please enter your first name",
        	minlength : "should be atleast 2 characters"
        },
        password1: {
            required: "Please provide a password",
            minlength: "Your password must be at least 5 characters long"
        },
		confirmPass2: { 
				required : "Please provide a password",
				equalTo: "Please enter the same password as above"
				}
				
    },
    submitHandler: function(form) {
        form.submit();
    }
});
});
 
</script>


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
                    <li class="page-scroll">
                        <a href="#">Jobs</a>
                        <ul>
                        <li class="page-scroll">
                        <a href="#findJobs">View Jobs</a>
                        </li>
                        <li class="page-scroll">
                        <a href="#postJobs">Post Jobs</a>
                        </li>
                        </ul>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
                    <% String login=(String) request.getSession().getAttribute("login");
                    	if (login != null && login.equalsIgnoreCase("true")){%>
                    <li>
                        <a href="<%=request.getContextPath() %>/myStulance/?jobs=all">My Stulance</a>
                    </li>
                    <li class="page-scroll">
                        <a href="<%= request.getContextPath()%>/logout">Logout</a>
                    </li>
                   <%} else {%>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#login">Login/Register</a>
                    </li>
                    <%} %>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
	
    <!-- Header -->
    <header>
    	<hr>
        <div class="container">
        	
          <div class="row">
           <div class="col-lg-12">
           		<img class="img-responsive" src="<%=request.getContextPath()%>/img/profile.png" alt="">
                 	<div class="intro-text">
                        <span class="name"><font size="5">Start Freelancing Today!</font></span>
                        <hr style="border-top: solid 2px; max-width: 700px;">
                        <span class="skills">Web Developer - Graphic Artist - Shopping Assistance</span>
                    </div>
                </div>
          </div>  
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="findJobs">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>View Jobs</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item">
                    <a href="<%=request.getContextPath()%>/get/jobs/?category=itprogramming&field=all" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/itprogramming1.jpg" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> IT Programming</b></font>
                       
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/lifestyle1.jpg" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> Lifestyle</b></font>
                       
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="<%=request.getContextPath()%>/get/jobs/?category=writingtranslation&field=all" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/writingandtranslation.jpg" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> Writing and Translation</b></font>
                       
                    </a>
                </div>
                
                <div class="col-sm-4 portfolio-item">
                    <a href="<%=request.getContextPath()%>/get/jobs/?category=engineeringmanufacturing&field=all" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/enggandmanu.jpg" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> Engg and Manufacturing</b></font>
                       
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="<%=request.getContextPath()%>/get/jobs/?category=household&field=all" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/household.png" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> Household</b></font>
                       <hr>
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="<%=request.getContextPath()%>/get/jobs/?category=designmultimedia&field=all" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/design&multimedia.jpg" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> Design and Multimedia</b></font>
                    </a>
                </div>
                
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/event_manager.jpg" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> Event Management</b></font>
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="<%=request.getContextPath()%>/get/jobs/?category=adminsupport&field=all" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/adminandsupport1.png" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> Admin Support</b></font>
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/repairs-and-maintenance.jpg" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> Maintainance and Repair</b></font>
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div id="rightImage">
                        <img src="<%=request.getContextPath()%>/img/portfolio/fun.jpg" class="img-responsive" alt="">
                        </div>
                        <hr>
                       <font size="3"><b> Fun and Entertainment</b></font>
                    </a>
                </div>
            </div>
        </div>
    </section>
	<!-- Find Jobs -->
		 <!-- Portfolio Grid Section -->
    <section class="success" id="postJobs">
    
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>Post Your Job</h3>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>You can post your jobs here and get it done by the Students at optimal price and quality deliverable benefitial for both. </p>
                </div>
                <div class="col-lg-4">
                    <p>The categories range from highly technical functionality like develeoping a realtime application to small house hold activities like baby sitting or shopping Assistance!!</p>
                </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="<%=request.getContextPath()%>/postjob" class="btn btn-lg btn-outline">
                         Post Your Job!
                    </a>
                </div>
            </div>
        </div>
     
    </section>
	<!-- FindLancer Ends -->
	
	
	
	<!--  Login/Signup  Section -->
	<section class="container" id="login">
	 <div class="container">
          <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>Login or Register</h3>
                    <hr class="star-primary">
				</div>
           </div> 
            <div class="row">
            	
                <div class="col-lg-5 col-lg-offset-1">
                    <form  name="loginform" id="loginform" action="validate">
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group">
                                <label>Email</label>
                                <input type="text" class="form-control" name="username" placeholder="Email" id="name" >
                                <!-- <p class="help-block text-danger"></p>  -->
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group ">
                                <label>password</label>
                                <input type="password" class="form-control" name="password" placeholder="Password" id="password" >
                                <!-- <p class="help-block text-danger"></p>  -->
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-10">
                                <button type="submit" class="btn btn-success btn-lg">Login</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- Register Section -->
                <div class="col-lg-5 col-lg-offset-1">
                    <form name="register" id="register" action="<%=request.getContextPath()%>/register.jsp">
                        
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group controls">
                                <label>Email</label>
                                <input type="text" class="form-control" placeholder="Email" name="email" id="rEmail" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group controls">
                                <label>pasword</label>
                                <input type="password" class="form-control" name="password1" placeholder="Password" id="password1" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group controls">
                                <label>confirm password</label>
                                <input type="password" class="form-control" placeholder="Confirm Password" name="confirmPass2" id="confirmPass2" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-10">
                                <button type="submit" class="btn btn-success btn-lg">Continue</button>
                            </div>
                        </div>
                    </form>
                </div>
                
            </div>
        </div>
       </section>
	<!-- Login/Signup Ends -->
	
	
	
    <!-- About Section -->
    
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>About</h3>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Stulance is reinventing the way we work. Today more than 2 million busines tap into stulance to find, hire, and pay the world's best stulancers, making it easier than ever to build successful companies and thriving careers</p>
                </div>
                <div class="col-lg-4">
                    <p>Innovative global enterprises, small businesses and startups alike can connect with the world's most talenterd developers, designers, writers, admins and more. If your job can be done online, you can hire the best person to do it.</p>
                </div>
            </div>
        </div>
    </section>

   
	 <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Us</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm4" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <input type="text" class="form-control" placeholder="Name" id="name4" id="name4" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Email Address</label>
                                <input type="email" class="form-control" placeholder="Email Address" id="email4" name="email4" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Message</label>
                                <textarea rows="5" class="form-control" placeholder="Message" id="message4" name="message4" ></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" name="send" value="send"  class="btn btn-success btn-lg">Send</button>
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
                        <p>San Farnando, CA 95112</p>
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
                            
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Stulance Team</h3>
                        <p>Stulance is a web app created by a group of SJSU students</p>
                    </div>
                </div>
            </div>
        </div>
       <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; stulance.mybluemix.net . All Rights Reserved
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
