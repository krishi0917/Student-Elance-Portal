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

	
<script>
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
	           password: {
            	required: true,
            	minlength: 5
            },
			confirmPass: { 
	        	required : true,		
		    	equalTo : "#password"
		    }
    },
    messages: {
    	 email: { required:  "Please enter your first name",
         	minlength : "should be atleast 2 characters"
         },
        username: { required:  "Please enter your first name",
        	minlength : "should be atleast 2 characters"
        },
        password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 5 characters long"
        },
		confirmPass: { 
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
                <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">Stulance</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    
                   
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
                    <form  name="loginform" id="loginform" action="validate" method="post">
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group ">
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
                        <% String postJobCall = (String)request.getAttribute("postJobCall");
                        if (postJobCall != null){ %>
                        <input type="hidden" name="postJobCall" value="<%= (String)request.getAttribute("postJobCall")%>">
                        <%} %>
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
                                <input type="text" class="form-control" placeholder="Email" name="email" id="username" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group controls">
                                <label>pasword</label>
                                <input type="password" class="form-control" name="password" placeholder="Password" id="password" >
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-10 floating-label-form-group controls">
                                <label>confirm password</label>
                                <input type="password" class="form-control" placeholder="Confirm Password" name="confirmPass" id="cPassword">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <% String postJobCall2 = (String)request.getAttribute("postJobCall");
                        if (postJobCall2 != null){ %>
                        <input type="hidden" name="postJobCall" value="<%= (String)request.getAttribute("postJobCall")%>">
                        <%} %>
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
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>  
 	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>  
	
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
