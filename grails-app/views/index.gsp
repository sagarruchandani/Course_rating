<!DOCTYPE html>
<html lang="en">
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

		<li><a href="#">Login</a></li>
		<li><a href="#">Sign Up</a></li>
		</ul>
	</div>
    </div>
    <!-- /Side Menu -->


    <div class="container">
	<br/>
	<h2 style="font-family:Tangerine; color:#580000; font-size:60px">SJSU Recommendation System</h2></br>
<!-- Start of Menu -->
	<ul class="nav nav-tabs" id="myTab">
	    <li class="active"><a href="#" data-toggle="tab">Home</a></li>
	    <li><g:link controller="Course" action="showAll">All Courses</g:link></li>
	   <g:if test="${session?.student}">
					<li><g:link controller="Student" action="profile" data-toggle="tab">Hi, ${session?.student.username} </g:link></li>
					<li><g:link controller="Student" action="logout" data-toggle="tab">Logout</g:link></li>
					</g:if>
					<g:else>
	 				 <li><g:link controller="Student" action="login" data-toggle="tab">Login</g:link></li>
	 				 <li><g:link controller="Student" action="register" data-toggle="tab">Sign up now!</g:link></li>
				    </g:else>
	</ul>

	<form class="form-inline"> <!-- for making pictures borderless-->
	    <div class="btn-group" data-toggle="buttons">
		<input id="borderless-checkbox" type="checkbox" style="display:none" checked>
	    </div>
	</form>


	<div id='content' class="tab-content">
	    <div class="tab-pane fade  in active" id="home">
		<p></p>
		<!-- add image here -->
	    </div>

	
<div id="progress">

</div>

    <div class="tab-pane fade" id="layout">
		<p>Ground floor Layout (east-facing) </p> 
		<img src="img/v1_gf.jpg">

		<br/><br/><br/>

		<table class="table table-hover table-bordered table-condensed">
		    <caption>PLOT AREA  - 599.67 SQM ( 717.19 sqyds )</caption>
		    <tr class ="active">
			<th>S. no</th>
			<th>Type of floor</th>
			<th colspan="2">Floor Area</th>
		    </tr>
		    <tr class="active">
			<td></td>
			<td></td>
			<th>SQ.M.</th>
			<th>SFT</th> 
			<tbody>
			    <tr class="active">
				<td>1.</td>
				<td>Ground floor</td>
				<td>259.01</td>
				<td>2786.9476</td>
			    </tr>
			    <tr class="active">
				<td>2.</td>
				<td>First floor</td>
				<td>249.30</td>
				<td>2682.468</td>
			    </tr>
			</tbody>
			<tfoot>
			    <tr class="active">
				<td></td>
				<th>TOTAL BUA</th>
				<th>508.31</th>
				<th>5469.4156</th>
			    </tr>
			</tfoot>
		</table>

		    <p>First floor Layout (east-facing) </p>
		    <img src="img/v1_ff.jpg">

		</div>

		<div class="tab-pane fade" id="features">
		    <h3 style="font-family:Tangerine; color:#580000; font-size:45px">Salient Features </h3>

		    <table class="table table-condensed">
		    	<tbody>
		    		<tr class="active">
						<td>External HardWood Decks – 610 SFT </td>
			    	</tr>

			    	<tr class="active">
						<td>Lap Pool Area – 206 SFT</td>
			    	</tr>

			    	<tr class="active">
						<td>Internal Landscape Court – 107 SFt</td>
			    	</tr>

			    	<tr class="active">
						<td>Private Swimming Pool - 30’ *  11’</td>
			    	</tr>

			    	<tr class="active">
						<td>Skylight Area above the water body</td>
			    	</tr>

			    	<tr class="active">
						<td>Pre Fitted Poghen Pohl Modular Kitchen</td>
			    	</tr>

			    	<tr class="active">
						<td>Mitsubishi or Equivalent Home Elevator</td>
			    	</tr>

			    	<tr class="active">
						<td>Mitsubishi or Equivalent Home Elevator</td>
			    	</tr>

		    	</tbody>
		    </table>
		</div>  


		<div class="tab-pane fade" id="specifications">
		    <h3 style="font-family:Tangerine; color:#580000; font-size:45px">Preliminary Specification </h3>

		    <table class="table table-hover table-condensed">
		    	<tbody>
		    		<tr class="active">
		    			<td>Foundation</td>
		    			<td>: RCC framed structure</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Walls</td>
		    			<td>: Concrete blocks</td>
		    		</tr>

<tr class="active">
<td>Wall Finishes</td>
<td>: Internal walls : Plastered surface finished with POP punning and royal emulsion paint.</br>
							External walls : Weather proof textured paint.</br>
 							Cladding : Natural stone cladding at designated areas.</br>
						</td>
		    		</tr>

		    		<tr class="active">
		    			<td>The Flooring </td>
		    			<td>: Italian Marble/wooden flooring for drawing, living, dining, informal kitchen, puja and bedrooms. Vitrified tiles for all
							toilets, formal kitchen and store. Ceramic tile flooring for servant room and toilet. Natural stone for balconies, open
							terraces and decks. Dado designer tiles for all the bathrooms.
						</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Water Proofing Doors &amp; Windows</td>
		    			<td>:Integral proofing for all water exposed areas such as open terraces, balconies and toilets.</br>

		    				<span style="text-decoration:underline">Main door</span>: Teak wood frame with paneled shutter finish, melamine polish using good quality hardware.</br>
 							<span style="text-decoration:underline">Internal door</span>: Teak wood frame and flush shutter finish with veneer on both sides, Using good quality hardware.</br>
							<span style="text-decoration:underline">UPCV windows </span>with sliding / casement shutter, with louvers at designated areas.
		    			</td>
		    		</tr>

		    		<tr class="active"> 
		    			<td>Kitchen</td>
		    			<td>: Designer modular kitchen with storage cabinets, granite platform, stainless sinks, and imported Hob and Chimney.</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Wardrobes</td>
		    			<td>: Designer wardrobes for all bedrooms with colored glass / lacquered paint finish.</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Electrical Installation </td>
		    			<td>: Concealed fire retardant wiring with modular switches.</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Telecom</td>
		    			<td>: Telephone points for areas with intercom facility in the Villas, security and clubhouse. Provision for broadband and DTH facility for all areas.</td>
		    		</tr>


		    		<tr class="active">
		    			<td>Security </td>
		    			<td>: Round the clock security service with CCTV surveillance for all the streets, clubhouse and swimming pool. Solar power fencing on compound walls, video door phones, panic switches for bedrooms and glass breaking detectors for all ground floor windows. Full automation with smart home facilities.</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Sanitary &amp; PLumbing </td>
		    			<td>: All ceramics and water fixtures except the powder room are of imported make and use Duravit, Kohler or an equivalent quality brand along with shower enclosures.   </td>
		    		</tr>

		    		<tr class="active">
		    			<td>Staircase Railing </td>
		    			<td>: SS steel railing with 10mm thick toughened glass for all staircases.</td>
		    		</tr>


		    		<tr class="active">
		    			<td>Air Conditioning </td>
		    			<td>: Fully air conditioned with premium brands for all the rooms except kitchen and toilets.</td>
		    		</tr>

		    		<tr class="active">
		    			<td>DG Back Up </td>
		    			<td>: 100% DG back up including central air-conditioning.</td>
		    		</tr>

		    		<tr class="active">
		    			<td>External Paving </td>
		    			<td>: High quality concrete paver blocks.</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Landscaping </td>
		    			<td>: Designer landscaping for all the Villas.</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Swimming Pool </td>
		    			<td>: Less maintenance with Temperature controlled pool inducing with aqua gym.</td>
		    		</tr>
		    	
		    	</tbody>
		    </table>

		    <br/><h3 style="font-family:Tangerine; color:#580000; font-size:45px">Specifications</h3>
		    <table class="table table-condensed">
		    	
		    	<tbody>
		    		<tr class="active">
		    			<th>Finishing</th>
		    			<th>Material</th>
		    			<th>Size</th>
		    		</tr>
		                
                                <tr>
				<td colspan="3"><b>Flooring</b></td>
			    </tr>

			    <tr class="active">
			    	<td>All Living areas, i,e, Foyer, Drawing, Living &amp; Dining, Lounge (First floor), pooja, bedrooms, show kitchen</td>
			    	<td>Italian Marble</td>
			    	<td>Slabs</td>
			    </tr>

			    <tr class="active">
			    	<td>All Bedrooms</td>
			    	<td>Italian Marble</td>
			    	<td>Slabs</td>
			    </tr>

			    <tr class="active">
			    	<td>All toilet</td>
			    	<td>Antiskid vitrified tiles </td>
			    	<td>1" x 2"</td>
			    </tr>

			    <tr class="active">
			    	<td>Service Kitchen</td>
			    	<td>Antiskid vitrified tiles </td>
			    	<td>2" x 2"</td>
			    </tr>

			    <tr class="active">
			    	<td>Store</td>
			    	<td>Vitrified Tiles</td>
			    	<td>2" x 2"</td>
			    </tr>

			    <tr class="active">
			    	<td>All Balcony/ Covered Terraces</td>
			    	<td>Natural stone </td>
			    	<td>2" x 2"</td>
			    </tr>

			    <tr class="active">
			    	<td>Swimming Pool</td>
			    	<td>Mossaic tiles</td>
			    	<td>1" x 1"</td>
			    </tr>

			    <tr class="active">
			    	<td>External Deck</td>
			    	<td>Natural Stone</td>
			    	<td>2" x 2"</td>
			    </tr>

			    <tr class="active">
			    	<td>External Steps</td>
			    	<td>Granite</td>
			    	<td>slabs</td>
			    </tr>

			    <tr class="active">
			    	<td>Laundry/ Servant Room</td>
			    	<td>Indian ceramic tiles </td>
			    	<td>1" x 1"</td>
			    </tr>

			    <tr class="active">
			    	<td>Servant Toilet Indian</td>
			    	<td>Antiskid ceramic tiles </td>
			    	<td>1" x 1"</td>
			    </tr>

			    <tr class="active">
			    	<td>Driveways/ Parking</td>
			    	<td>Stone flooring</td>
			    	<td>2" x 2"</td>
			    </tr>

			    <tr>
				<td colspan="3"><b>Skirting</b></td>
			    </tr>

			    <tr class="active">
			    	<td>Skirting</td>
			    	<td colspan="2">4" Flush skirting same as flooring</td>
			    </tr>

			    <tr>
				<td colspan="3"><b>Staircase</b> - Internal staircase</td>
			    </tr>

			    <tr class="active">
			    	<td>Tread</td>
			    	<td>Granite</td>
			    	<td>Slabs</td>
			    </tr>

			    <tr class="active">
			    	<td>Raiser</td>
			    	<td>Granite</td>
			    	<td>Slabs</td>
			    </tr>

			    <tr>
				<td colspan="3"><b>Dado &amp; Ledge Walls</b></td>
			    </tr>

			    <tr class="active">
			    	<td>Master Toilet Walls </td>
			    	<td>Ceramic designer tiles </td>
			    	<td>As per design</td>
			    </tr>

			    <tr class="active">
			    	<td>Master Toilet Ledge Wall </td>
			    	<td>Ceramic designer tiles </td>
			    	<td>As per design</td>
			    </tr>

			    <tr class="active">
			    	<td>Powder Room Walls</td>
			    	<td>Ceramic designer tiles </td>
			    	<td>As per design</td>
			    </tr>

			    <tr class="active">
			    	<td>Powder Room Ledge Walls</td>
			    	<td>Ceramic designer tiles </td>
			    	<td>As per design</td>
			    </tr>

			    <tr class="active">
			    	<td>All Other Toilets</td>
			    	<td>Ceramic designer tiles </td>
			    	<td>As per design</td>
			    </tr>

			    <tr class="active">
			    	<td>Ledge Wall</td>
			    	<td>Ceramic designer tiles </td>
			    	<td>As per design</td>
			    </tr>


			    <tr class="active">
			    	<td>Kitchen</td>
			    	<td>Ceramic designer tiles, 2' height designer tile dado above platform </td>
			    	<td>As per selection</td>
			    </tr>

			    <tr class="active">
			    	<td>All Servant Toilets</td>
			    	<td>Indian ceramic tiles </td>
			    	<td>As per selection</td>
			    </tr>

			    <tr>
				<td colspan="3"><b>Vanity Counter Tops &amp; Kitchen Tops</b></td>
			    </tr>

			    <tr class="active">
			    	<td>All Vanity counter tops</td>
			    	<td>Granite shamfered and edge polished </td>
			    	<td>Slabs</td>
			    </tr>

			    <tr class="active">
			    	<td>Kitchen Counter Tops</td>
			    	<td>Granite shamfered and edge polished </td>
			    	<td>Slabs</td>
			    </tr>

			    <tr class="active">
			    	<td>Modular Kitchen (Optional) </td>
			    	<td>Providing and fixing of modular kitchen consisting double bowl sink, sink mixture, Pull out trolley, Grain trolley with electronic chimney, Hob etc.</td>
			    	<td></td>
			    </tr>

			    <tr>
				<td colspan="3"><b>Sanitary Fixtures</b></td>
			    </tr>

			    <tr class="active">
			    	<td colspan="3"><b>All Poweder Rooms</b></td>
			    </tr>

			    <tr class="active">
			    	<td>Commode</td>
			    	<td>Kohler / Toto or equivalent</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td></td>
			    	<td>Kohler / Toto or equivalent</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td>Wash Basin</td>
			    	<td>Kohler / Toto or equivalent</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td colspan="3"><b>Master Toilet</b></td>
			    </tr>

			    <tr class="active">
			    	<td>Commode</td>
			    	<td>Kohler / Toto or equivalent</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td>Wash Basin</td>
			    	<td>Kohler / Toto or equivalent</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td>Shower Enclosure</td>
			    	<td>Shower Enclosure using 8mm toughened glass</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td>Bath tub </td>
			    	<td>Kohler / Toto or equivalent</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td colspan="3"><b>All Other Toilets</b></td>
			    </tr>

			    <tr class="active">
			    	<td>Commode</td>
			    	<td>Kohler / Toto or equivalent</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td>Wash Bsin</td>
			    	<td>Kohler / Toto or equivalent</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td>Shower Enclosure</td>
			    	<td>Option to provide</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td colspan="3"><b>Servant Toilets</b></td>
			    </tr>

			    <tr class="active">
			    	<td>Commode</td>
			    	<td>Indian Make</td>
			    	<td></td>
			    </tr>

			    <tr class="active">
			    	<td>Wash Basin</td>
			    	<td>Indian Make</td>
			    	<td></td>
			    </tr>

		    		<tr>
		    			<td colspan="3"><b>CP Fittings</b></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Master Toilet </td>
		    			<td>Kohler / Toto / Jaquar or equivalent</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Powder room </td>
		    			<td>Kohler / Toto / Jaquar or equivalent</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Other Toilet</td>
		    			<td>Kohler / Toto / Jaquar or equivalent</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Kitchen</td>
		    			<td>Kohler / Toto / Jaquar or equivalent</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Utility</td>
		    			<td>Indian Make</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Servant Toilet </td>
		    			<td>Indian Make</td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<td colspan="3"><b>Doors</b></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Main door </td>
		    			<td>Teak wood frame with designer door shutters finished with melamine polish on both sides</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Internal Doors</td>
		    			<td>Teak wood frame with flush shutters finished with self veneer finish on both sides</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Master Bedroom, Powder Room, Other toilet doors &amp; Kitchen</td>
		    			<td>Flush doors finished with 4mm thick veneer on one side and laminate finish on other side </td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Maid's room &amp; Utility door </td>
		    			<td>Flush doors finished with laminate on both sides </td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>All External doors </td>
		    			<td>Anodized aluminium/ UPVC, openable/sliding French doors with shutter </td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<td colspan="3"><b>Door Frame</b></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Main Door</td>
		    			<td>Teak wood frame</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Other Doors</td>
		    			<td>Teak wood frame</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Sub Frame</td>
		    			<td>Hard wood sub frame</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>TW Architrave</td>
		    			<td>TW Architecture for all doors</td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<td colspan="3"><b>Door Hard Wares</b></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Main Door</td>
		    			<td>Brass / SS hardware with night latch, safety chain of superior brands like Havele, Dorset or equivalent</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Internal Doors</td>
		    			<td>Cylindrical locks with handle with tower bolts</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Master Bathroom, Powder room & Kitchen</td>
		    			<td>Cylindrical locks with handle with tower bolts</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Toilet doors</td>
		    			<td>Cylindrical locks with handle with tower bolts</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Maid's room & Utility door</td>
		    			<td>Cylindrical locks with handle with tower bolts</td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<td></td>
		    			<td></td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<td colspan="3"><b>Windows</b></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Windows</td>
		    			<td >UPVC, openable / sliding windows with shutter in wooden finish</td>
		    			<td ></td>
		    		</tr>

		    		<tr>
		    			<th colspan="3">Walls</th>
		    		</tr>

		    		<tr class="active">
		    			<td>All Living areas ie. Foyer, Drawing, Living & Dining, Lounge (First floor)</td>
		    			<td>POP punning with royal emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Entertainment Room, Master Bedroom</td>
		    			<td>POP punning with royal emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>All Other Bedrooms</td>
		    			<td>POP punning with royal emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Kitchen</td>
		    			<td>POP punning with royal emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Puja</td>
		    			<td>POP punning with royal emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Store</td>
		    			<td>POP punning with royal emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>All Terrace/Balcony </td>
		    			<td>Plaster finish with weather proof exterior emulsion</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Internal Staircase</td>
		    			<td>POP punning with royal emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Laundry / Servant Rooms</td>
		    			<td>POP punning with royal emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Driveways / Parking</td>
		    			<td>POP punning with royal emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Exterior Paints</td>
		    			<td>Exterior weather proof Two tone texture paint as per selection </td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Exterior Cladding</td>
		    			<td>Natural stone cladding </td>
		    			<td>as per selection</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Stone coping</td>
		    			<td>Sand blasted stone / Precast RCC coping on external parapet walls </td>
		    			<td>slabs</td>
		    		</tr>

		    		<tr>
		    			<th colspan="3">Ceiling Finish</th>
		    		</tr>

		    		<tr class="active">
		    			<td>All Living areas ie. Foyer, Drawing, Living &amp; Dining, Lounge (First floor) </td>
		    			<td>Wall putty with acrylic emulsion paint</td>
		    			<td></td>
		    		</tr>
		    		<tr class="active">
		    			<td>Entertainment Room, Master Bedroom</td>
		    			<td>Wall putty with acrylic emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>All Other Bedrooms</td>
		    			<td>Wall putty with acrylic emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Master Toilet &amp; Powder Room</td>
		    			<td>Wall putty with acrylic emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>All Other Toilets</td>
		    			<td>Calcium Silicate false ceiling</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Kitchen</td>
		    			<td>Wall putty with acrylic emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Pooja</td>
		    			<td>Wall putty with acrylic emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Store</td>
		    			<td>Wall putty with acrylic emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>All Terrace / Balcony</td>
		    			<td>Wall putty with acrylic emulsion paint</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Laundry / Servant Room</td>
		    			<td>Plain plaster finished with white wash</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Servant Toilet</td>
		    			<td>Plain plaster finished with white wash</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Driveways / Parking</td>
		    			<td>Plain plaster finished with white wash</td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<th colspan="3">Railing</th>
		    		</tr>

		    		<tr class="active">
		    			<td>Internal staircase railing </td>
		    			<td>Stainless steel glass / Wooden handrail</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Balcony railing </td>
		    			<td>MS powder coated railing finished with duco paint/ Cast Iron railing</td>
		    			<td>as per design</td>
		    		</tr>

		    		<tr>
		    			<th colspan="3">Lifts</th>
		    		</tr>

		    		<tr class="active">
		    			<td>Passenger Lift</td>
		    			<td>Hydraulic Passenger elevator</td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<th colspan="3">Plastering</th>
		    		</tr>

		    		<tr class="active">
		    			<td>Internal plastering </td>
		    			<td>12 - 15mm thick</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>External plastering</td>
		    			<td>20 to 25mm thick</td>
		    			<td></td>
		    		</tr>

					<tr>
		    			<th colspan="3">Electrical &amp; HVAC Services</th>
		    		</tr>		    		

		    		<tr class="active">
		    			<td>Air conditioning </td>
		    			<td>VRV system for all Living and bedroom areas except Toilet &amp; servant areas</td>
		    			<td></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Switches </td>
		    			<td>Modular - Crab tree / MK</td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<th colspan="3">Mirror Works</th>
		    		</tr>

		    		<tr class="active">
		    			<td>Mirror Works</td>
		    			<td>6mm thick mirror with wooden frame fixed with 12mm thick water proof ply wood</td>
		    			<td>as per design</td>
		    		</tr>

		    		<tr>
		    			<th colspan="3">Back Up Facility</th>
		    		</tr>

		    		<tr class="active">
		    			<td>Back Up Facility</td>
		    			<td>100% DG back up including central air-conditioning</td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<td colspan="3"><b>Home Automation</b>(optional)</td>
		    		</tr>

		    		<tr class="active">
		    			<td>Home automation (optional) </td>
		    			<td>Fully integrated basic home automation for security, Lighting, appliances control &amp; Easy communication</td>
		    			<td></td>
		    		</tr>

		    		<tr>
		    			<td colspan="3"><b>Telephone &amp; Internet </b></td>
		    		</tr>

		    		<tr class="active">
		    			<td>Telephone &amp; Internet </td>
		    			<td>Wi fi facility through the township</td>
		    			<td></td>
		    		</tr>

		    		<!--<tr class="active">
		    			<td></td>
		    			<td></td>
		    			<td></td>
		    		</tr>-->

		    	</tbody>
		    </table>

		</div> <!--for specifications--> 

		<div class="tab-pane fade" id="gallery">
		    <div id="links">

			<!--for villa facade-->
			<div class="col-md-2">
			    <a href="img/villafacade/type-1.jpg" title="Begonia Day View" data-gallery>
				<img src="img/villafacade/type-1_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villafacade/type-1n.jpg" title="Begonia Night View" data-gallery>
				<img src="img/villafacade/type-1n_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villainteriors/Corridor_16-04-2013.jpg" title="Corridor" data-gallery>
				<img src="img/villainteriors/Corridor_16-04-2013_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villainteriors/Deck-_11-03-2013.jpg" title="Deck" data-gallery>
				<img src="img/villainteriors/Deck-_11-03-2013_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villainteriors/Dining_30-03-2013.jpg" title="Dining Hall" data-gallery>
				<img src="img/villainteriors/Dining_30-03-2013_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villainteriors/Drawing_15-03-2013.jpg" title="Drawing Hall" data-gallery>
				<img src="img/villainteriors/Drawing_15-03-2013_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>
		    </div>
		    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

		    <div id="links">
			<div class="col-md-2">
			    <a href="img/villainteriors/FF-Master-Bed-room-Cam1_15-03-2013.jpg" title="Master Bedroom" data-gallery>
				<img src="img/villainteriors/FF-Master-Bed-room-Cam1_15-03-2013_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>


			<div class="col-md-2">
			    <a href="img/villainteriors/FF-Master-bedroom-Dress_24-04-2013.jpg" title="Master Bedroom Dressing Room" data-gallery>
				<img src="img/villainteriors/FF-Master-bedroom-Dress_24-04-2013_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villainteriors/foyer_21-02-13.jpg" title="Foyer" data-gallery>
				<img src="img/villainteriors/foyer_21-02-13_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villainteriors/guest-bath_25-02-13.jpg" title="Guest Room Bathroom" data-gallery>
				<img src="img/villainteriors/guest-bath_25-02-13_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villainteriors/Guest-Bedroom-Cam1_21-02-13.jpg" title="Guest Bedroom" data-gallery>
				<img src="img/villainteriors/Guest-Bedroom-Cam1_21-02-13_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villainteriors/Guest-Dress-bath-_25-02-13.jpg" title="Guest Dressing Room" data-gallery>
				<img src="img/villainteriors/Guest-Dress-bath-_25-02-13_thumb.jpg" alt="" id="magnify"> 
			    </a>
			</div>

		    </div>
		    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

		    <div id="links">
			<div class="col-md-2">
			    <a href="img/villainteriors/Kitchen_01-04-2013.jpg" title="Kitchen" data-gallery>
				<img src="img/villainteriors/Kitchen_01-04-2013_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

			<div class="col-md-2">
			    <a href="img/villainteriors/Living_21-02-13.jpg" title="Living Room" data-gallery>
				<img src="img/villainteriors/Living_21-02-13_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

                        <div class="col-md-2">
			    <a href="img/villainteriors/swimming_pool.jpg" title="Swimming Pool" data-gallery>
				<img src="img/villainteriors/swimming_pool_thumb.jpg" alt="" id="magnify">
			    </a>
			</div>

		    </div>
		    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		</div>       
	    </div>

	    <div id="blueimp-gallery" class="blueimp-gallery">
		<div class="slides"></div>
		<!-- Controls for the borderless lightbox -->
		<h3 class="title" style="font-size:35px;"></h3>
		<a class="prev">‹</a>
		<a class="next">›</a>
		<a class="close">×</a>
		<a class="play-pause"></a>
		<ol class="indicator"></ol>
		<!-- The modal dialog, which will be used to wrap the lightbox content -->
		<div class="modal fade">
		    <div class="modal-dialog">
			<!--<div class="modal-body next"></div>-->
			<div class="modal-content">

			    <div class="modal-header">
				<button type="button" class="close" aria-hidden="true">&times;</button>
				<h4 class="modal-title"></h4>
			    </div>
			    <div class="modal-body next"></div>
			    <div class="modal-footer">
				<button type="button" class="btn btn-default pull-left prev">
				    <i class="glyphicon glyphicon-chevron-left"></i>
				    Previous
				</button>
				<button type="button" class="btn btn-primary next">
				    Next
				    <i class="glyphicon glyphicon-chevron-right"></i>
				</button>
			    </div>
			</div>
		    </div>
		</div>
	    </div>

	    <footer>
	    <div class="row">

		<div class="col-sm-3 col-md-2 col-md-offset-1">
		    <div class="thumbnail">
			<img src='img/v2.jpg' alt="...">
			<div class="caption">
			    <a href="water_lily.html"><h4>Water Lily</h3></a>
			</div>
		    </div>
		</div>

		<div class="col-sm-3 col-md-2">
		    <div class="thumbnail">
			<img src="img/v3.jpg" alt="...">
			<div class="caption">
			    <a href="pine.html"><h4>Pine</h3></a>
			</div>
		    </div>
		</div>

		<div class="col-sm-3 col-md-2">
		    <div class="thumbnail">
			<img src="img/v4.jpg" alt="...">
			<div class="caption">
			    <a href="dandelion.html"> <h4>Dandelion</h3>  </a>
			</div>
		    </div>
		</div>

		<div class="col-sm-3 col-md-2">
		    <div class="thumbnail">
			<img src="img/v5.jpg" alt="...">
			<div class="caption">
			    <a href="tulip.html"><h4>Tulip</h3></a>
			</div>
		    </div>
		</div>

		<div class="col-sm-3 col-md-2">
		    <div class="thumbnail">
			<img src="img/v6.jpg" alt="...">
			<div class="caption">
			    <a href="daisy.html"><h4>Daisy</h3></a>
			</div>
		    </div>
		</div>   

	    </div><!--for row-->
	    </footer>  
	</div>

	<div class="services">
	    <div class="container ">
               <div class="pull-left"><br/><img src="img/prathima_logo.gif" width="80px" height="60px" style="margin-left:-90px;"></div>
		<p class="pull-left"><a href="begonia.html">Begonia</a> | <a href="water_lily.html">Water Lily</a> | <a href="pine.html">Pine</a> | <a href="dandelion.html">Dandelion</a> | <a href="tulip.html">Tulip</a> | <a href="daisy.html">Daisy</a> 
		<br/>&copy;pristineestates.in
		<br/>Design & Development - Devconin Group</p>
		 <p class="pull-right" style="margin-right:-80px;">
        Architects&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Interiors<br/><img src="img/architects.jpg" width="80px" height="60px">&nbsp;&nbsp;&nbsp;&nbsp;<img src="img/cloyd3.png" width="105px" height="60px">
                </p>
	    </div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
  <script src="js/bootstrap-image-gallery.min.js"></script>
  <script src="js/bootstrap-image-gallery.js"></script>
  <script src="js/bootstrap.js"></script>


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

    </body>
</html>
