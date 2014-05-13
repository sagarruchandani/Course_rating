<html>
 <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
<gvisualization:apiImport/>
	<title>Course Recommendation System</title>

	<!-- Bootstrap core CSS -->
	<link href="css/bootstrap.css" rel="stylesheet">

	<!-- Add custom CSS here -->
	<link rel="shortcut icon" href="favicon.ico" />
	<link href="css/stylish-portfolio.css" rel="stylesheet">
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Miss Fajardose|Englebert|Tangerine">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
	<link rel="stylesheet" href="css/bootstrap-image-gallery.min.css">  
		<link rel=”stylesheet” type=”text/css” href=“css/course_rate.css” />
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
span.stars, span.stars span {
    display: block;
    background: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj_g-BN0kiLRkAZSeXWo2bKnKbsWXbDRWT6YuD2scilyka9CwRDQ);
     width: 80px;
    height: 16px;
}

span.stars span {
    background-position: 0 0;
}
nav ul ul {
	display: none;
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
	float: left;
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
	    <li ><g:link controller="Student" action="index">Home</g:link></li>
	   <li class=""><g:link controller="Course" action="showAll">All Courses</g:link>
	       <ul>
	         <li><a href="#">Department</a>
	         <ul>
	             <li><a href="">Computer Engineering</a>
	             <li><a href="">Software Engineering</a>
	         </ul>
	         </li>
	        
	       </ul>  
	    </li>   
	    <li><g:link controller="Student" action="preRecommender">Rate Course</g:link></li>
	     <li><g:link controller="Course" action="graph.gsp">Data & Analytics</g:link></li>
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
		
	
	
	
                                        <marquee><b>Welcome To SJSU Recommendation Portal</b></marquee>
					<!-- Features -->
	

<div align="center" style="font-weight: bolder; color: maroon;"> 
	<g:form url="[controller:'course',action:'selected']">
	
	
		
	<g:each in="${select}" var="item">
			   ${item.course_id}:${item.title}
            <br>   
     Description: ${item.description}          
    </g:each>              
   <br> 
   
   <%
   def weightByAgeColumns = [['date', 'Time'], ['number', 'Rating']]

   
    %>
      
    <gvisualization:scatterCoreChart elementId="scatterchart" width="${800}" height="${400}" title="Time vs. Rating comparison" vAxis="${new Expando(title: 'Rating', minValue: 0, maxValue:4, ticks: [0,1,2,3,4,5] )}" hAxis="${new Expando(title: 'Time', minValue: new Date()-365, maxValue: new Date())}" legend="none" columns="${weightByAgeColumns}" data="${scatter_data}" />

  

    <table>
   <tr>
             <td>
                <a href="http://developers.google.com/chart/interactive/docs/gallery/scatterchart">Scatter Chart</a>
             </td>
             <td>
                <div id="scatterchart"></div>
             </td>
          </tr>
          
          
          
          
   </table>
   
       
   
   
   <div class="rating" style="font-weight: bold;">
    <g:each in="${ratings}" var="item">
             
 <table border="5px" style="height="10pc" width=90%; align="center";" >
     <tr><td width="40pc"> Name: ${item.student_id}  </td>
         <td width="40pc"> posted at: <g:formatDate date="${item.dateCreated }"/></td>
     </tr>   
     <tr> <td width="40pc"> Comments: ${item.comments}  </td>     
          <td width="40pc"> <span class=starts"><img src="http://www.oyun01.com/content/images/${item.rating}star.png"></img></span></td></tr> 
     <tr> </tr>
 </table>
   </g:each>  
  
   
   </div>           
     </g:form>
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


</html>