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


	<style type="text/css">
	body {
	background-color: ;
	}
	    p{
		text-align: center;
	    }
.caret{
		border-top: solid white;
	    }
	    tr, h3 , h4{
	    	font-family: 'Tangerine', serif;
	    	font-size:  30px;
	    }
	    td{
	    width: 130px;
	    }
	</style>

    </head>
    <body class="full">

	

	<!-- Side Menu -->
	<a id="menu-toggle" href="#" class="btn btn-lg btn-primary toggle">Menu</i></a>
    <div id="menu-close">
	<div id="sidebar-wrapper">
	    <ul class="sidebar-nav">
		<!--<a id="menu-close" href="#" class="btn btn-default btn-lg pull-right toggle"><i class="fa fa-times"></i></a>-->
		<li class="sidebar-brand">SJSU Course Recommender</li>
		<li><a href="#">Home</a></li>
		<li><g:link controller="Course" action="showAll">All Courses</g:link></li>

		<div id="accordion">
		    <li><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
			My Profile<b class="caret"></b>
		    </a></li>

		    <div id="collapseOne" class="panel-collapse collapse">
			<div class="panel-body">
			    <li><a href="#">Update Profile</a></li>
			    <li><a href="#">Change Password</a></li>
			</div>
		    </div>
		</div>

					<g:if test="${session?.student}">
					<li><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
					</g:if>
					<g:else>
	 				 <li><g:link controller="Student" action="login">Login</g:link></li>
	 				 <li><g:link controller="Student" action="register">Sign up now!</g:link></li>
				    </g:else>
		</ul>
	</div>
    </div>
    <!-- /Side Menu -->


    <div class="container">
	<br/>
	<h2 style="font-family:Tangerine; color:#580000; font-size:60px">SJSU Recommendation System</h2></br>
<!-- Start of Menu -->
	<ul class="nav nav-tabs" id="myTab">
	    <li><g:link controller="Student" action="index">Home</g:link></li>
	    <li><g:link controller="Course" action="showAll">All Courses</g:link></li>
	   <g:if test="${session?.student}">
					<li class="active"><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="preRecommender">Course Recommender</g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
					<li><g:link controller="course" action="rate">Rate</g:link></li>
					<li><g:link controller="Student" action="addCourses">Add courses</g:link></li>
					</g:if>
					<g:else>
	 				 <li><g:link controller="Student" action="login">Login</g:link></li>
	 				 <li><g:link controller="Student" action="register">Sign up now!</g:link></li>
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
