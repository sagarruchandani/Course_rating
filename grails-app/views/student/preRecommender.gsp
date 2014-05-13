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
	
.rating span { float:right; position:relative; }
.rating span input {
    position:absolute;
    top:0px;
    left:0px;
    opacity:0;
}
.rating span label {
    display:inline-block;
    width:30px;
    height:30px;
    text-align:center;
    color:#FFF;
    background:#ccc;
    font-size:30px;
    margin-right:2px;
    line-height:30px;
    border-radius:50%;
    -webkit-border-radius:50%;
}
.rating span:hover ~ span label,
.rating span:hover label,
.rating span.checked label,
.rating span.checked ~ span label {
    background:#F90;
    color:#FFF;
}


/* 'star-rating' component */
.starRate {position:relative; margin:20px; overflow:hidden; zoom:1;}
.starRate ul {width:160px; margin:0; padding:0;}
.starRate li {display:inline; list-style:none;}
.starRate a, .starRate b {background:url(img/star_rate.gif) left top repeat-x;}
.starRate a {float:right; margin:0 80px 0 -144px; width:80px; height:16px; background-position:left 16px; color:#000; text-decoration:none;}
.starRate a:hover {background-position:left -32px;}
.starRate b {position:absolute; z-index:-1; width:80px; height:16px; background-position:left -16px;}
.starRate div b {left:0px; bottom:0px; background-position:left top;}
.starRate a span {position:absolute; left:-300px;}
.starRate a:hover span {left:90px; width:100%;}
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
	float: left; color: black;
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
</style>
	

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
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
<script type="text/javascript">
$(document).ready(function(){
//  Check Radio-box
    $(".rating input:radio").attr("checked", false);
    $('.rating input').click(function () {
        $(".rating span").removeClass('checked');
        $(this).parent().addClass('checked');
    });

    $('input:radio').change(
    function(){
        var userRating = this.value;
        alert(userRating);
    }); 
});
</script>
</head>


<body class="full">

 <div style='float: right;'><a href="index.gsp"> Back to Home</a></div>

   <div style='float: right;'><a href="login.gsp">Log in |</a></div>
	
    <div class="container">
	<br/>
	<h2 style="font-family:Begonia; color:#580000; font-size:60px">CMPE Course Recommendation</h2></br>
<!-- Start of Menu -->
	<nav>
	<ul class="nav nav-tabs" id="myTab">
	     <li><g:link controller="Student" action="index">Home</g:link></li>
	  
	           <li><g:link controller="Course" action="showAll">All Courses</g:link>
	            <ul>
	         <li><a href="#">Department</a>
	         <ul>
	             <li><a href="">Computer Engineering</a>
	             <li><a href="">Software Engineering</a>
	         </ul>
	         </li>
	        
	       </ul>
	    <li class="active"><g:link controller="Student" action="preRecommender">Rate Course</g:link></li>
	     <li ><g:link controller="Course" action="graph">Data & Analytics</g:link></li>
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
	
</nav>


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


<div class="rating">
    <h3>course1 </h3>
    <span><input type="radio" name="rating" id="str5" value="5"><label for="str5"></label></span>
    <span><input type="radio" name="rating" id="str4" value="4"><label for="str4"></label></span>
    <span><input type="radio" name="rating" id="str3" value="3"><label for="str3"></label></span>
    <span><input type="radio" name="rating" id="str2" value="2"><label for="str2"></label></span>
    <span><input type="radio" name="rating" id="str1" value="1"><label for="str1"></label></span>
</div>
			<g:submitButton name="submit"/>
			</g:form>			
</div>

<br>
<br>

<br>
<br>
<br>
<br>
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
