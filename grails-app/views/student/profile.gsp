<!DOCTYPE html>
<html lang="en">
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Course Recommendation System</title>

	<!-- Bootstrap core CSS -->
	<link href="<g:resource dir="css" file="bootstrap.css" />"></link>

	<!-- Add custom CSS here -->
	<link rel="shortcut icon" href="favicon.ico" />
	<link href="<g:resource dir="css" file="stylish-portfolio.css" />"></link>
	<link href="<g:resource dir="css" file="font-awesome.min.css" />"></link>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Miss Fajardose|Englebert|Tangerine">
	<link rel="stylesheet" href="<g:resource dir="css" file="bootstrap.min.css" />"></link>
	<link rel="stylesheet" href="<g:resource dir="css" file="blueimp-gallery.min.css" />"></link>
	<link rel="stylesheet" href="<g:resource dir="css" file="bootstrap-image-gallery.min.css" />"></link>
  <link rel=”stylesheet” type=”text/css” href=“https://drive.google.com/a/sjsu.edu/file/d/0B2LW4Rd70NyWR2doOWtEclQydFU/edit” />



    </head>
    <body class="full">

	<div style='float: right;'><a href="index.gsp"> Back to Home</a></div>
    <div style='float: right;'><a href="login.gsp">Log in |</a></div>

	

    <div class="container">
	<br/>
	<h2 style="font-family:Begonia; color:#580000; font-size:60px">CMPE Course Recommendation</h2></br>
<!-- Start of Menu -->
	<ul class="nav nav-tabs" id="myTab">
	    <li><g:link controller="Student" action="index">Home</g:link></li>
	    <li><g:link controller="Course" action="showAll">All Courses</g:link></li>
	     <li><g:link controller="Student" action="preRecommender">Rate Course</g:link></li>
	     <li><g:link controller="Course" action="graph.gsp">Data & Analytics</g:link></li>
	     <li><g:link controller="Student" action="addCourses">Add courses</g:link></li>
	     <li><g:link controller="Course" action="e_learn">E-learning</g:link></li>
	   <g:if test="${session?.student}">
					<li class="active"><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
					<li><g:link controller="course" action="rate">Rate</g:link></li>
					</g:if>
					<g:else>
	 				 <li><g:link controller="Student" action="login">Login</g:link></li>
	 				
				    </g:else>
	</ul>
	
		
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
  <script src="<g:resource dir="js" file="bootstrap-image-gallery.min.js" />"></script>
  <script src="<g:resource dir="js" file="bootstrap-image-gallery.js" />"></script>
  <script src="<g:resource dir="js" file="bootstrap.js" />"></script>
	
	<!-- Custom JavaScript for the Side Menu and Smooth Scrolling -->
	<script>
	    $("#menu-close").mouseleave(function(e) {
		e.preventDefault();
		$("#sidebar-wrapper").toggleClass("active");
	    });
	</script>
	<script>
	    $("#menu-toggle").on('hover mouseover', function(e) {
		e.preventDefault();
		$("#sidebar-wrapper").toggleClass("active");
	    });
	</script>

	<script>
	    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	    ga('create', 'UA-46905375-1', 'pristineestates.in');
	    ga('send', 'pageview');

	</script> 




<!-- Main -->
<div align="center">
<g:each in="${student}" var="s"> 
						 <h3>Username - ${s.username} </h3>
	 					 <h3>email - ${s.email} </h3>
	 					 <h3> mobile - ${s.mobile}</h3>
	 					<h3> student_id - ${s.student_id}</h3>
                <table border="1">
								
	 					
	 					<tr><th> course1</th><td>${s.course1}</td></tr>
	 					<tr><th> course2</th><td>${s.course2}</td></tr>
	 					<tr><th> course3</th><td>${s.course3}</td></tr>
	 					<tr><th> course4</th><td>${s.course4}</td></tr>
	 					<tr><th> course5</th><td>${s.course5}</td></tr>
	 					<tr><th> course6</th><td>${s.course6}</td></tr>	
	 					<tr><th> course7</th><td>${s.course7}</td></tr>	
	 					<tr><th> course8</th><td>${s.course8}</td></tr>
	 					<tr><th> course9</th><td>${s.course9}</td></tr>	
	 					<tr><th> course10</th><td>${s.course10}</td></tr>
	 					<tr><th> course11</th><td>${s.course11}</td></tr>	
	 					<tr><th> course12</th><td>${s.course12}</td></tr>
	
	 
							
 								
							</table>
							</g:each>
						</div>
</div>
<br>






    </body>
</html>
