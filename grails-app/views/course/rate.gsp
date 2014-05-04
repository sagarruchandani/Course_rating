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
.rating {
    float:left;
    width:300px;
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
					<li  class="active"><g:link controller="course" action="rate">Rate</g:link></li>
					</g:if>
					<g:else>
	 				 <li><g:link controller="Student" action="login">Login</g:link></li>
	 				 <li><g:link controller="Student" action="register">Sign up now!</g:link></li>
				    </g:else>
	</ul>
	

<div class="rating">
    course :
    <span><input type="radio" name="rating" id="str5" value="5"><label for="str5"></label></span>
    <span><input type="radio" name="rating" id="str4" value="4"><label for="str4"></label></span>
    <span><input type="radio" name="rating" id="str3" value="3"><label for="str3"></label></span>
    <span><input type="radio" name="rating" id="str2" value="2"><label for="str2"></label></span>
    <span><input type="radio" name="rating" id="str1" value="1"><label for="str1"></label></span>
</div>
</div>


</body>
</html>