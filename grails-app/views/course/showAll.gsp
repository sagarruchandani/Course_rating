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


    <%--<!-- Bootstrap core CSS -->
	<link href="css/bootstrap.css" rel="stylesheet">
    --%>
	<!-- Add custom CSS here -->
	<link rel="shortcut icon" href="favicon.ico" />
	<link href="css/stylish-portfolio.css" rel="stylesheet">
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Miss Fajardose|Englebert|Tangerine">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
	<link rel="stylesheet" href="css/bootstrap-image-gallery.min.css">  


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


    <div class="container" align="center">
	<br/>
	<h2 style="font-family:Tangerine; font-weight:bold; color:#580000; font-size:60px">SJSU Recommendation System</h2></br>
<!-- Start of Menu -->
	<ul class="nav nav-tabs" id="myTab"  style="border-left:thick; margin-left: 30%; font-weight: bold; ">
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
<div align="center" > 
	<g:form url="[controller:'course',action:'selected']">
			   <g:link controller="course" action="selected" id="${item.course_id}" >
				${item.course_id}:${item.title}
                 </g:link>
     </g:form>
</div>
 </g:each>

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
