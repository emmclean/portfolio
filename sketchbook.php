<html>
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Erin McLean</title>
		<link href="css/grid.css" type="text/css" rel="stylesheet" />
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400<!-- ,400italic,300,300italic,700,600,800 -->" rel="stylesheet" type="text/css" />
		<link href="http://fonts.googleapis.com/css?family=Lora:400,600,400italic" rel="stylesheet" type="text/css" />
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/bookblock.css" />
		<link rel="stylesheet" type="text/css" href="css/demo4.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
		<div id="menu">
			<a href="index.html"><img src="images/Logo.jpg" alt="Erin McLean"/></a>
			<div id="submenu">
				<p><a href="aboutme.html">About Me</a><a href="index.html" >Portfolio</a><a href="images/resume.pdf" target="_blank">Resume</a><a href="sketchbook.php" >Sketchbook</a></p>
			</div>
		</div>
		<div id="contentPP">
			<div class="container">
			<div class="bb-custom-wrapper">
				
				<div id="bb-bookblock" class="bb-bookblock">
				<?php 	
					$odd = array(1, 3, 5, 7, 9 ,11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31);
					$even = array(2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32);
					for ($i = 15; $i >= 0; $i-- ){?>
				
					<div class="bb-item">
						<div class="bb-custom-side">
							<img src=<? print "images/Sketchbook/BookScanCenter_$odd[$i].jpg"?>  height="80%" alt=<? print "image0$odd[$i]"?>/>
						</div>
						<div class="bb-custom-side">
							<img src=<? print "images/Sketchbook/BookScanCenter_$even[$i].jpg"?>  height="80%" alt=<? print "image0$even[$i]"?>/>
						</div>
					</div>
					<?php }?>
				</div>

				<nav id="footer2">
					<a id="bb-nav-first" href="#" class="bb-custom-icon bb-custom-icon-first">First page</a>
					<a id="bb-nav-prev" href="#" class="bb-custom-icon bb-custom-icon-arrow-left">Previous</a>
					<a id="bb-nav-next" href="#" class="bb-custom-icon bb-custom-icon-arrow-right">Next</a>
					<a id="bb-nav-last" href="#" class="bb-custom-icon bb-custom-icon-last">Last page</a>
				</nav>

			</div>

		</div>
		
		</div>
		<div id="footer2"></div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="js/jquerypp.custom.js"></script>
		<script src="js/jquery.bookblock.js"></script>
		<script>
			var Page = (function() {
				
				var config = {
						$bookBlock : $( '#bb-bookblock' ),
						$navNext : $( '#bb-nav-next' ),
						$navPrev : $( '#bb-nav-prev' ),
						$navFirst : $( '#bb-nav-first' ),
						$navLast : $( '#bb-nav-last' )
					},
					init = function() {
						config.$bookBlock.bookblock( {
							speed : 1000,
							shadowSides : 0.8,
							shadowFlip : 0.4
						} );
						initEvents();
					},
					initEvents = function() {
						
						var $slides = config.$bookBlock.children();

						// add navigation events
						config.$navNext.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'next' );
							return false;
						} );

						config.$navPrev.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'prev' );
							return false;
						} );

						config.$navFirst.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'first' );
							return false;
						} );

						config.$navLast.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'last' );
							return false;
						} );
						
						// add swipe events
						$slides.on( {
							'swipeleft' : function( event ) {
								config.$bookBlock.bookblock( 'next' );
								return false;
							},
							'swiperight' : function( event ) {
								config.$bookBlock.bookblock( 'prev' );
								return false;
							}
						} );

						// add keyboard events
						$( document ).keydown( function(e) {
							var keyCode = e.keyCode || e.which,
								arrow = {
									left : 37,
									up : 38,
									right : 39,
									down : 40
								};

							switch (keyCode) {
								case arrow.left:
									config.$bookBlock.bookblock( 'prev' );
									break;
								case arrow.right:
									config.$bookBlock.bookblock( 'next' );
									break;
							}
						} );
					};

					return { init : init };

			})();
		</script>
		<script>
				Page.init();
		</script>
	</body>
</html>