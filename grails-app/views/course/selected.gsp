<html>
 <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

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
	<h2 style="font-family:Tangerine; font-weight:bold; color:#580000; font-size:60px">SJSU Recommendation System</h2>
<!-- Start of Menu -->
	<ul class="nav nav-tabs" id="myTab"  style="border-left:thick; margin-left: 30%; font-weight: bold; ">
	    <li><g:link controller="Student" action="index">Home</g:link></li>
	    <li ><g:link controller="Course" action="showAll">All Courses</g:link></li>
	   <g:if test="${session?.student}">
					<li><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
					</g:if>
					<g:else>
	 				 <li ><g:link controller="Student" action="login">Login</g:link></li>
	 				 <li class="active" ><g:link controller="Student" action="">Course Ratings</g:link></li>
	 				 <li ><g:link controller="Student" action="register">Sign up now!</g:link></li>
				    </g:else>
	</ul>
</div>	
	
	
	
                                        <marquee><b>Welcome To SJSU Recommendation Portal</b></marquee>
					<!-- Features -->
	

<div align="center"> 
	<g:form url="[controller:'course',action:'selected']">
	
	
		
	<g:each in="${select}" var="item">
			   ${item.course_id}:${item.title}
            <br>   
     Description: ${item.description}          
    </g:each>              
   <br>    
   
   
    <g:each in="${ratings}" var="item">
            <br>   
     Name: ${item.student_id}    <br>      
     Comments: ${item.comments}   <br>       
     Rating: ${item.rating}        <br>  
     posted at: <g:formatDate date="${item.dateCreated }"/>
   <br>
    </g:each>   
             
     </g:form>
</div>

</html>