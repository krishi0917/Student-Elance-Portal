
<!DOCTYPE html>
<html5 lang="en">

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
	  
    // Setup form validation on the #register-form element
    $("#register-form").validate({
    
        // Specify the validation rules
        rules: {
 
        	username: { required : true,
            			minlength : 2 
            	},            
            password2: {
                required: true,
                minlength: 5
		
            },
			confirmPass: { 
		      required : true,		
			 equalTo : "#password2"
			},
			 emailID : {required : true , email : true}
		
			 
            
        },
		//contactForm username password cPassword 
        
        // Specify the validation error messages
        messages: {
            username: { required:  "Please enter your first name",
            	minlength : "should be atleast 2 characters"
            	
            },
            
            password2: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long"
				
            },
			confirmPass: { required : "Please provide a password",
			
					equalTo: "Please enter the same password as above"
					},
					emailID : "Please enter a valid email address "
          
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
                        <a href="#">Find</a>
                        <ul>
                        <li class="page-scroll">
                        <a href="#portfolio">Find Freelancer</a>
                        </li>
                        <li class="page-scroll">
                        <a href="#findJobs">Find Work</a>
                        </li>
                        </ul>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#login">Login/Signup</a>
                    </li>
                   
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
                        <span class="name"><font size="5">Start Freelancing</font></span>
                        <hr>
                        <span class="skills">Web Developer - Graphic Artist - User Experience Designer</span>
                    </div>
                </div>
          </div>  
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>Portfolio</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<%=request.getContextPath()%>/img/portfolio/Admin_Support.jpg" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<%=request.getContextPath()%>/img/portfolio/writing.jpg" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<%=request.getContextPath()%>/img/portfolio/manufacturing.jpg" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<%=request.getContextPath()%>/img/portfolio/Programming.jpg" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<%=request.getContextPath()%>/img/portfolio/design.jpg" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<%=request.getContextPath()%>/img/portfolio/submarine.png" class="img-responsive" alt="">
                    </a>
                </div>
            </div>
        </div>
    </section>
	<!-- Find Jobs -->
		 <!-- Portfolio Grid Section -->
    <section class="success" id="findJobs">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>Find Freelancer</h3>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item">
                    <a href="<%=request.getContextPath()%>/get/jobs/all" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="http://stulance.mybluemix.net/img/portfolio/cabin.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="http://stulance.mybluemix.net/img/portfolio/cake.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="http://stulance.mybluemix.net/img/portfolio/circus.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="http://stulance.mybluemix.net/img/portfolio/game.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="http://stulance.mybluemix.net/img/portfolio/safe.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="http://stulance.mybluemix.net/img/portfolio/submarine.png" class="img-responsive" alt="">
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
                    <h3>Login/Register</h3>
                    <hr class="star-primary">
				</div>
           </div> 
            <div class="row">
            	
                <div class="col-lg-5 col-lg-offset-1">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form  action="validate">
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group ">
                                <label>username</label>
                                <input type="text" class="form-control" name="username" placeholder="User Name" id="name" >
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
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="register" id="register-form" action="<%=request.getContextPath()%>/register.jsp" novalidate>
                        
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group controls">
                                <label>Username</label>
                                <input type="text" class="form-control" placeholder="User Name" name="username" id="username" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group controls">
                                <label>pasword</label>
                                <input type="password" class="form-control" name="password2" placeholder="Password" id="password2" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group controls">
                                <label>confirm password</label>
                                <input type="password" class="form-control" placeholder="Confirm Password" name="confirmPass" id="confirmPass" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-10">
                                <button type="submit" name="submit" value ="submit" class="btn btn-success btn-lg">Submit</button>
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
                    <p>Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional LESS stylesheets for easy customization.</p>
                </div>
                <div class="col-lg-4">
                    <p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p>
                </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="#" class="btn btn-lg btn-outline">
                        <i class="fa fa-download"></i> Download Theme
                    </a>
                </div>
            </div>
        </div>
    </section>

   
	 <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Me</h2>
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
                                <input type="text" class="form-control" placeholder="Name" name="name4" id="name4" >
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
                                <textarea rows="5" class="form-control" placeholder="Message" id="message4" name="message4"></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" name="send" value="send" class="btn btn-success btn-lg">Send</button>
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
    <!-- this below is the website which doesnt helps in validation plug-in -->


    <!-- Bootstrap Core JavaScript -->
   <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
        <script src="<%=request.getContextPath()%>/js/jquery.easing.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/classie.js"></script>
        <script src="<%=request.getContextPath()%>/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
   src="<%=request.getContextPath()%>/js/jqBootstrapValidation.js"></script>
  
    <script src="http://stulance.mybluemix.net/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<%=request.getContextPath()%>/js/freelancer.js"></script>

    
  
   

</body>

</html5>
