<!DOCTYPE HTML>
<html>
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
<style type="text/css">
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
</style>
	

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
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




<body>
  <div class="container">
	<br/>
	<h2 style="font-family:Tangerine; color:#580000; font-size:60px">SJSU Recommendation System</h2></br>
<!-- Start of Menu -->
	<ul class="nav nav-tabs" id="myTab">
	    <li><g:link controller="Student" action="index">Home</g:link></li>
	    <li><g:link controller="Course" action="showAll">All Courses</g:link></li>
	    
	   <g:if test="${session?.student}">
					<li><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="preRecommender">Course Recommender</g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
					<li  class="active"><g:link controller="course" action="rate">Rate Course</g:link></li>
					 
					</g:if>
					<g:else>
	 				 <li><g:link controller="Student" action="login">Login</g:link></li>
	 				 <li><g:link controller="Student" action="register">Sign up now!</g:link></li>
				    </g:else>
	</ul>
	

<div class="rating">
    <h3>course1 </h3>
    <span><input type="radio" name="rating" id="str5" value="5"><label for="str5"></label></span>
    <span><input type="radio" name="rating" id="str4" value="4"><label for="str4"></label></span>
    <span><input type="radio" name="rating" id="str3" value="3"><label for="str3"></label></span>
    <span><input type="radio" name="rating" id="str2" value="2"><label for="str2"></label></span>
    <span><input type="radio" name="rating" id="str1" value="1"><label for="str1"></label></span>
</div>
</div>

<div class="starRate">
<div>Currently rated: 3 stars<b></b></div>
<ul>
<li><a href="#"><span>Give it 5 stars</span></a></li>
<li><a href="#"><span>Give it 4 stars</span></a></li>
<li><a href="#"><span>Give it 3 stars</span><b></b></a></li>
<li><a href="#"><span>Give it 2 stars</span></a></li>
<li><a href="#"><span>Give it 1 star</span></a></li>
</ul>
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