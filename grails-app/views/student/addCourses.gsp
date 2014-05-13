<!DOCTYPE HTML>

<html lang="en">
    <head>
    
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>CMPE Course Recommendation</title>

 <!-- Bootstrap core CSS -->
	<link href="<g:resource dir="css" file="bootstrap.css" />"></link>

	<!-- Add custom CSS here -->
	<link rel="shortcut icon" href="favicon.ico" />
	<link href="css/stylish-portfolio.css" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Miss Fajardose|Englebert|Tangerine">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
	<link rel="stylesheet" href="css/bootstrap-image-gallery.min.css">  


	
   <link rel=”stylesheet” type=”text/css” href=“css/course_rate.css” />
   <Style>
   nav ul ul {
	display: none;
	z-index: 1;
}

	nav ul li:hover > ul {
		display: block;
	}
nav ul {
	background: #efefef; 
	background: linear-gradient(top, #efefef 0%, #bbbbbb 100%);  
	background: -moz-linear-gradient(top, #efefef 0%, #bbbbbb 100%); 
	background: -webkit-linear-gradient(top, #efefef 0%,#bbbbbb 100%); 
	box-shadow: 0px 0px 9px rgba(0,0,0,0.15);
	padding: 0 20px;
	border-radius: 10px;  
	list-style: none;
	position: relative;
	display: inline-table;
}
	nav ul:after {
		content: ""; clear: both; display: block;
	}
nav ul li {
	float: left;
}
	nav ul li:hover {
		background: #4b545f;
		background: linear-gradient(top, #4f5964 0%, #5f6975 40%);
		background: -moz-linear-gradient(top, #4f5964 0%, #5f6975 40%);
		background: -webkit-linear-gradient(top, #4f5964 0%,#5f6975 40%);
	}
		nav ul li:hover a {
			color: #fff;
		}
	
	nav ul li a {
		display: block; padding: 25px 40px;
		color: #757575; text-decoration: none;
	}
nav ul ul {
	background: #5f6975; border-radius: 0px; padding: 0;
	position: absolute; top: 100%;
}
	nav ul ul li {
		float: none; 
		border-top: 1px solid #6b727c;
		border-bottom: 1px solid #575f6a;
		position: relative;
	}
		nav ul ul li a {
			padding: 15px 40px;
			color: #fff;
		}	
			nav ul ul li a:hover {
				background: #4b545f;
			}
nav ul ul ul {
	position: absolute; left: 100%; top:0;
}			
   </Style>
    </head>
    <body class="full">
   <div style='float: right;'><a href="index.gsp"> Back to Home</a></div>

   <div style='float: right;'><a href="login.gsp">Log in |</a></div>
	


		<!-- Header -->

			
							

    <div class="container">
	<br/>
	<h2 style="font-family:Begonia; color:#580000; font-size:60px">CMPE Course Recommendation</h2></br>
<!-- Start of Menu -->
	<ul class="nav nav-tabs" id="myTab">
	     <li><g:link controller="Student" action="index">Home</g:link></li>
	    <li><g:link controller="Course" action="showAll">All Courses</g:link></li>
	         
	    <li><g:link controller="Student" action="preRecommender">Rate Course</g:link></li>
	     <li class="active"><g:link controller="Course" action="graph">Data & Analytics</g:link></li>
	     <li><g:link controller="Course" action="e_learn">E-learning</g:link></li>
	   <g:if test="${session?.student}">
					<li><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
					</g:if>
					<g:else>
	 				 <!-- <li><g:link controller="Student" action="login">Login</g:link></li>
	 				 -->
				    </g:else>
	</ul>
	

		<!-- Main -->

			<div id="main-wrapper">
				<div class="container">
					
					<!-- Banner -->

						
						</div>
						<div>
						<h2>Add Courses to your profile</h2>
						<g:form controller="Student" action="addCourses" >
						<label>course1 </label>
						
						<g:select name="course_id" from="${Courses.course_id}" id="${Courses.course_id}"/>
						
						<g:submitButton name="submit" value="submit"/>
						</g:form>
						</div>
							<div class="3u">
														
							</div>
						</div>

					
						
				</div>
			</div>

		 <!-- Footer -->

                <div id="footer-wrapper" style="background-color:black;">
				<footer class="container" id="site-footer">
                                    <div id="out">	
                                    <div id="social" align="center" style="background-color:black;">
                                            <h6>Connect With Us</h6>
                                        <a href='https://www.facebook.com/'><img src="http://www.pondsforpeoplepools.com/wp-content/uploads/2013/04/facebook-like-logo.jpg" height="50px" width="50px"></a>
                                        <a href='https://twitter.com/'><img src="http://fc05.deviantart.net/fs70/i/2013/098/2/5/high_quality_twitter_logo_by_mikewilson1000-d60yhcw.jpg" height="50px" width="50px" /></a>
                                        <a href='https://www.linkedin.com/'><img src="http://etc-mysitemyway.s3.amazonaws.com/icons/legacy-previews/icons/blue-metallic-orbs-icons-social-media-logos/098454-blue-metallic-orb-icon-social-media-logos-linkedin-logo.png" height="50px" width="50px"/></a>
                                        
                                    </div>
                                        </div>
                                    <br/>
                                    	<div class="row">
						<div class="12u">
                            <div id="copyright" style="color:white;" align="center">
								Thanks for visiting. All rights reserved.<br/>
                                                                Copyright   2014-15.
							</div>
						</div>
					</div>
                                    
				</footer>
				</div>



	</body>
</html>