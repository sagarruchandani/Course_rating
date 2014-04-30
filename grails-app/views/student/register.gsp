<!DOCTYPE HTML>

<html>
	<head>
		<title>Course Recommendation : Register</title>
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
		
	</head>
	<body>
	

			<div id="header-wrapper">
				<header class="container" id="site-header">
					<div class="row">
						<div class="12u">
							<div id="logo">
								<h1>Career Guide</h1>
							</div>
							<nav id="nav">
								<ul>
									
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
									
								</ul>
							</nav>
						</div>
					</div>
				</header>
			</div>
	
	
	
	
                                        <marquee>Welcome To Career Guide</marquee>
					<h3 style=" background-color:whitesmoke;color:black;border-radius:6px"><center>Courses</center></h3>
						<div class="row">
							<div class="3u">
								<section class="first">
                                                                    <h4><b>Courses Attended</b></h4>
                                                                       
                                                                        <h4>(Fall, 2013)</h4>
                                                                        
                                                                        <p style="font-size:15px;">202 - Software Systems Engineering</p>
                                                                        <p style="font-size:15px;">281 - Cloud Computing</p>	
                                                                        <p style="font-size:15px;">272 - Enterprise Software Platform</p>
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
								
			
<g:form url="[controller:'Student',action:'new_student']">
			
              <div id='login' style="background-color:whitesmoke;border-radius:10px;opacity:0.8">
                        <table width='100px'>
                                    <h4><center><i>Sign Up!</i></center></h4>
                               <hr>
                          <tr>
                           <td style="padding-left:10px"><label>User Name</label></td>
                             <td><g:textField type="text" name="username" class="textbox" style="border-radius:5px;border-color:grey"/></td>
                                      </tr>
                                    <tr>
                              <td style="padding-left:10px;"><label>Password</label></td>
                                    <td><g:passwordField  name="password" class="textbox" style="border-radius:5px;border-color:grey"/></td>
                                                </tr>
                                     <tr>
                              <td style="padding-left:10px;"><label>Repeat Password</label></td>
                                    <td><g:passwordField  name="confirm" class="textbox" style="border-radius:5px;border-color:grey"/></td>
                                                </tr>
                                      <tr>
                              <td style="padding-left:10px;"><label>Email</label></td>
                                    <td><g:textField  type="email" name="email" class="textbox" style="border-radius:5px;border-color:grey"/></td>
                                                </tr>
                                                <tr>
                                  <td><g:submitButton value="Sign Up Now!" name="submitButton"/></td>
                            </tr>
               </table>
                   </div>
</g:form>
								</section>							
							</div>
</div>
</body>
</html>