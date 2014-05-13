<!DOCTYPE html>
<html lang="en">
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
<gvisualization:apiImport/>
	<title>CMPE 
	Course Recommendation</title>

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

	<div style='float: right;'><a href="index.gsp"> Back to Home</a></div>

<div style='float: right;'><a href="login.gsp">Log in |</a></div>


    <div class="container" align="left">
	<br/>
	<h2 style="font-family:Begonia; color:#580000; font-size:60px">CMPE Course Recommendation</h2></br>
<!-- Start of Menu -->
	<ul class="nav nav-tabs" id="myTab"  style=" font-weight: bold; ">
	    <li><g:link controller="Student" action="index">Home</g:link></li>
	    <li class="active"><g:link controller="Course" action="showAll">All Courses</g:link></li>
	     <li><g:link controller="Student" action="preRecommender">Course Recommender</g:link></li>
	     <li><g:link controller="Course" action="graph.gsp">Data & Analytics</g:link></li>
	     <li><g:link controller="Course" action="e_learn">E-learning</g:link></li>
	   <g:if test="${session?.student}">
					<li><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
					</g:if>
					<g:else>
	 				 <li><g:link controller="Student" action="login">Login</g:link></li>
	 				
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


<%
def monthlyCoffeeProdByCountryColumns = [['string', 'Popular Courses'], ['number', 'Rating - 1'], ['number', 'Rating - 2'], ['number', 'Rating - 3'], ['number', 'Rating - 4'], ['number', 'Rating - 5'], ['number', 'Average']]
   def monthlyCoffeeProdByCountryData = [['2004/05', 165, 938, 522, 998, 450, 614.6], ['2005/06', 135, 1120, 599, 1268, 288, 682], ['2006/07', 157, 1167, 587, 807, 397, 623], ['2007/08', 139, 1110, 615, 968, 215, 609.4], ['2008/09', 136, 691, 629, 1026, 366, 569.6]]
%>
 <gvisualization:comboCoreChart elementId="combochart" title="Number of Student vs Popular Courses" vAxis="${new Expando(title: 'Students')}" hAxis="${new Expando(title: 'Popular Courses')}" seriesType="bars" series="${new Expando(5: new Expando(type: 'line'))}" columns="${monthlyCoffeeProdByCountryColumns}" data="${monthlyCoffeeProdByCountryData}" />

<table>
<tr>
             <td>
                <a href="http://developers.google.com/chart/interactive/docs/gallery/combochart">Combo Chart</a>
             </td>
             <td>
                <div id="combochart" style="width: 700px; height: 400px;"></div>
             </td>
          </tr>
</table>


<!-- Main -->
<g:each in="${software}" var="item">
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
