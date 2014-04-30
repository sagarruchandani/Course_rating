<!DOCTYPE HTML>

<html>
	<head>
		<title>Course Recommendation : Login</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700" rel="stylesheet" />
		<script src="js/jquery.min.js"></script>
		<script src="js/config.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
	
			<link rel="stylesheet" href="<g:resource dir="css" file="skel-noscript.css" />"/>
			<link rel="stylesheet" href="<g:resource dir="css" file="style.css" />" />
			<link rel="stylesheet" href="<g:resource dir="css" file="style-desktop.css" />" />

		<!--[if lte IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
	</head>
	<body>
	<!-- Header -->

			<div id="header-wrapper">
				<header class="container" id="site-header">
					<div class="row">
						<div class="12u">
							<div id="logo">
								<h1>Career Guide</h1>
							</div>
							<nav id="nav">
								<ul>
									<!--<li class="current_page_item"><a href="index.html">Homepage</a></li>-->
									<li><a href="index.html">Home</a></li>
									<li><a href="#">All Courses</a></li>
									<g:if test="${session?.student}">
					<li><g:link controller="Student" action="profile">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="logout">Logout</g:link></li>
					</g:if>
					<g:else>
	 				 <g:link controller="Student" action="login">Login</g:link>
	 				 <g:link controller="Student" action="register">Sign up now!</g:link>
				    </g:else>
									<!--<li><a href="twocolumn2.html">Two Column #2</a></li>
									<li><a href="onecolumn.html">One Column</a></li>-->
								</ul>
							</nav>
						</div>
					</div>
				</header>
			</div>
	
	
	
	
                                        <marquee>Welcome To Career Guide</marquee>
					<!-- Features -->
                                        <h3 style=" background-color:whitesmoke;color:black;border-radius:6px"><center>Courses</center></h3>
						<div class="row">
							<div class="3u">
								<section class="first">
                                    <div id='login' style="background-color:whitesmoke;border-radius:10px;opacity:0.8">
<g:form url="[controller:'Student',action:'login']">
                                                                        <table width='100px'>
                                                                            <h4><center><i>Login</i></center></h4>
                                                                            <hr>
                                                                            <tr>
                                                                                <td style="padding-left:10px"><label>Username</label></td>
                                                                                <td><g:textField type="text" name="username" class="textbox" style="border-radius:5px;border-color:grey"/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="padding-left:10px;"><label>Password</label></td>
                                                                                <td><g:passwordField  name="password" class="textbox" style="border-radius:5px;border-color:grey"/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><g:submitButton value="Login" name="Login"/></td>
                                                                            </tr>
                                                                        </table>
</g:form>
                                                                    </div>                                
                                </section>							
							</div>
							<div class="3u">
								<section>
                                                                    <h4><b> Current Courses</b></h4>
                                                                    <h4>(Spring,2014)</h4>
                                                                    <p style="font-size:15px;">283-Cloud & Virtualization</p>
                                                                    <p style="font-size:15px;">239-Data Minig</p>
								</section>							
							</div>
							<div class="3u">
								<section>
                                                                
								</section>							
							</div>
</div>
</body>
</html>