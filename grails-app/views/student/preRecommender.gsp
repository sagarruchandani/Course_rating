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
	    p{
		text-align: center;
	    }
.caret{
		border-top: solid white;
	    }
	    tr{
	    	font-family: 'Tangerine', serif;
	    	font-size:  30px;
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
	    <li><a href="#" data-toggle="tab">Home</a></li>
	    <li><g:link controller="Course" action="showAll">All Courses</g:link></li>
	   <g:if test="${session?.student}">
					<li class="active"><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
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


</div>

<!-- Main -->
<div>
						<h2>Select the Id & Ratings of courses you have taken/completed </h2>
			<g:form controller="Student" action="recommend" >
			<g:each in="${listed}" var="item">
						
				<g:if test="${listed.iterator().hasNext() != null}">
						
						<label>course:  </label>
						<g:select name="course_id" from="${cours.course_id}" value="${listed.iterator().hasNext()}" id="${cours.course_id}" />
						<g:select id="${cours.course_id}" name="rating" from="${[1,2,3,4,5]}" />
						<br>
						
				</g:if>
				<g:else>
						<label>course:  </label>
						<g:select name="course_id" from="${cours.course_id}" id="${cours.course_id}" />
						<g:select id="${cours.course_id}" name="rating" from="${[1,2,3,4,5]}" />
						<br>
				</g:else>
			</g:each>
			<g:submitButton name="submit"/>
			</g:form>			
</div>
<br>





    </body>
</html>
