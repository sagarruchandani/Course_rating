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
	    <li><g:link controller="Student" action="index">Home</g:link></li>
	    <li class="active"><g:link controller="Course" action="showAll">All Courses</g:link></li>
	   <g:if test="${session?.student}">
					<li><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
					</g:if>
					<g:else>
	 				 <li><g:link controller="Student" action="login">Login</g:link></li>
	 				 <li><g:link controller="Student" action="register">Sign up now!</g:link></li>
				    </g:else>
	</ul>
	
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
<g:each in="${allCourse}" var="item">
<div> 
	<g:form url="[controller:'course',action:'selected']">
			   <g:link controller="course" action="selected" id="${item.course_id}" >
				${item.course_id}:${item.title}
                 </g:link>
     </g:form>
</div>
 </g:each>



    </body>
</html>
