<!DOCTYPE HTML>

<html>
	<head>
		<title>Course Recommendation</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700" rel="stylesheet" />
		<script src="js/jquery.min.js"></script>
		<script src="js/config.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
		<!--[if lte IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
	</head>
	<body>
            <style>

p#socialicons img{ /* 1st set of icons. Rotate them 360deg onmouseover and out */
-moz-transition: all 0.8s ease-in-out;
-webkit-transition: all 0.8s ease-in-out;
-o-transition: all 0.8s ease-in-out;
-ms-transition: all 0.8s ease-in-out;
transition: all 0.8s ease-in-out;
}

p#socialicons img:hover{
-moz-transform: rotate(360deg);
-webkit-transform: rotate(360deg);
-o-transform: rotate(360deg);
-ms-transform: rotate(360deg);
transform: rotate(360deg);
}

p#socialicons2 img{ /* 2nd set of icons. Rotate them 60deg onmouseover and out */
-moz-transition: all 0.2s ease-in-out;
-webkit-transition: all 0.2s ease-in-out;
-o-transition: all 0.2s ease-in-out;
-ms-transition: all 0.2s ease-in-out;
transition: all 0.2s ease-in-out;
}

p#socialicons2 img:hover{
-moz-transform: rotate(70deg);
-webkit-transform: rotate(70deg);
-o-transform: rotate(70deg);
-ms-transform: rotate(70deg);
transform: rotate(70deg);
}

p#socialicons3 img{ /* 3rd set of icons. Rotate them -360deg onmouseover ONLY. Note where the "transition prop is added */
}

p#socialicons3 img:hover{ 
-moz-transition: all 0.5s ease-in-out;
-webkit-transition: all 0.5s ease-in-out;
-o-transition: all 0.5s ease-in-out;
-ms-transition: all 0.5s ease-in-out;
transition: all 0.5s ease-in-out;
-moz-transform: rotate(-360deg);
-webkit-transform: rotate(-360deg);
-o-transform: rotate(-360deg);
-ms-transform: rotate(-360deg);
transform: rotate(-360deg);
}

</style>

		<!-- Header -->

			<div id="header-wrapper">
				<header class="container" id="site-header">
					<div class="row">
						<div class="12u">
							<div id="logo">
								<h1>Career Guide</h1>
							</div>
							<nav id="nav">
								<ul>
									<!--<li class="current_page_item"><a href="index.html">Homepage</a></li>-->
									<li><a href="index.html">Home</a></li>
									<li><a href="#">All Courses</a></li>
									<li><g:link controller="student" action ="addCourses">Add Courses</g:link>
									
					<li><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
									<!--<li><a href="twocolumn2.html">Two Column #2</a></li>
									<li><a href="onecolumn.html">One Column</a></li>-->
								</ul>
							</nav>
						</div>
					</div>
				</header>
			</div>

		<!-- Main -->

			<div id="main-wrapper">
				<div class="container">
					
					<!-- Banner -->

						<div class="row">
							<div class="12u">
								<div id="banner">
									<a href="#"><img src="images/banner.jpg" alt="" /></a>
                                                                        <div class="caption">
										<span><strong>Career Guide</strong>: helping you </span>
										<!--<a href="#" class="button">Find Out More!</a>-->
									</div>
								</div>
							</div>
						</div>
						<div>
						<h2>Add Courses to your profile</h2>
						<g:form controller="Student" action="addCoursesToProfile" >
						<label>course1  </label>
						<g:select name="course_id" from="${Courses.course_id}" id="${Courses.course_id}" />
						<g:submitButton name="submit"/>
						</g:form>
						</div>
							<div class="3u">
								<section class="last">
                                                                    <div id='side'>
                                                                        <h4>Get Assistantship</h4>
                                                                        <p style="font-size:15px;">Send us text to tell if you are interested</p>
                                                                    </div>
								</section>							
							</div>
						</div>

					<!-- Divider -->

						<div class="row">
							<div class="12u">
								<div class="divider divider-top"></div>
							</div>
						</div>

					<!-- Highlight Box -->

						<div class="row">
							<div class="12u">
								<div class="highlight-box">
									<h2>Confused with you career?</h2>
									<span>Don't Worry! We are with you</span>
								</div>
							</div>
						</div>

					

						<div class="row">
							<div class="12u">
								<div class="divider divider-top"></div>
							</div>
						</div>
						
					<!-- CTA Box -->

						
				</div>
			</div>

		<!-- Footer -->

                <div id="footer-wrapper" style="background-color:#01DFD7;">
				<footer class="container" id="site-footer">
                                    <div id="out">	
                                    <div id="social" align="center">
                                            <h6>Connect With Us</h6>
                                        <p id="socialicons">
                                        
                                            <a href='#'><img src="images/facebook_icon.gif" height="50px" width="50px"></a>
                                        <a href='#'><img src="images/twitter.png" height="50px" width="50px" /></a>
                                        <a href='#'><img src="images/linkedin.png" height="50px" width="50px"/></a>
                                        </p>
                                    </div>
                                        </div>
                                    <br/>
                                    	<div class="row">
						<div class="12u">
                                                    <div id="copyright" style="color:black;">
								Thanks for visiting. All rights reserved. Design: Rohan Goyal<br/>
                                                                Copyright ©2014-15.
							</div>
						</div>
					</div>
                                    
				</footer>
			</div>

	</body>
</html>