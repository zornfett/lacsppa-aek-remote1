<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webMain.aspx.cs" Inherits="Virweb2.webMain" %>

<%@ Register Src="CustomerControl/DisplayModeMenu.ascx" TagName="DisplayModeMenu" TagPrefix="uc2" %>

<!doctype html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<html>
<head runat="server">
	<title>KEA QA 2020 > TITLE!!</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- <link rel="stylesheet" href="css/bootstrap-select.css"> -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/flag-icon.min.css">
	<link rel="stylesheet" href="css/cs-skin-elastic.css">
	<!-- 
		OLD CSS - DISCARD! <link href="css/old-style.css" type="text/css" rel="stylesheet" />
	-->
	<link rel="stylesheet" href="css/per-sufee.css">
	<link rel="stylesheet" href="css/style-2020.css">

	<link href="css/jqvmap.min.css" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

	<link rel="apple-touch-icon" href="Images/favicon.png">
	<link rel="shortcut icon" href="Images/favicon.png">
</head>
<body id="home">
<form id="frmMain" runat="server">
	<input type="hidden" name="UserType" id="UserType" runat="server" value="" />
	<!-- LEFT-SIDE NAV -->
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">
			<div class="navbar-header">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
					<i class="fa fa-bars"></i>
				</button>
				<img class="logo" src="Images/logos/lanterman-logo.png" />
			</div>
			<!-- TOP HORIZ NAV -->
			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<h3 class="menu-title">&nbsp;</h3><!-- !!! NON-SEMANT / change to styled LI !!! -->
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle home" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>HOME</a>
					</li>
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle client-default" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>CLIENT</a>
						<ul class="sub-menu children dropdown-menu">
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="profile-facesheet">Profile</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" data-toggle="modal" data-target="#client-record-template">Client Record Template</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Case Notes</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Medical</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Medicaid Waiver</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">POS List</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">SIF List</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Document List</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">IFSP List</a></li>
						</ul>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle todo" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>TO DO LIST</a>
					</li>	
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle formlist" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>FORM LIST</a>
						<ul class="sub-menu children dropdown-menu">
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">ESR List</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Intake</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Psycho Social</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Eligibility</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Turning 3</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Lanterman</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Intake</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Psycho Social</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Eligibility</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Transfer</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Case Transfer</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Unit Case Transfer</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Statistics</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Time Card</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Exempt Time Card</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Non-Exempt Time Card</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Mileage</a></li>
						</ul>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle imaging" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>IMAGING</a>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle eforms" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>E-FORMS</a>
					</li>	
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle report-list" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>REPORT LIST</a>
					</li>	
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle tickler" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>TICKLER</a>
						<ul class="sub-menu children dropdown-menu">
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="client-tickler">Client Tickler</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Vendor Tickler</a></li>
						</ul>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle validate-default" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>VALIDATE</a>
					</li>	
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle resource" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>RESOURCE</a>
						<ul class="sub-menu children dropdown-menu">
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Profile</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">ID Notes</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Monitoring Tools/CAP</a></li>
						</ul>
					</li>
<!-- 				THESE FEATURES COMMENTED-OUT PER FU
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle messages" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>MESSAGES</a>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle weblinks" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>LINKS</a>
					</li> -->
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle my-settings" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>MY SETTINGS</a>
					</li>	
<!-- 					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle my-billing" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>MY BILLING</a>
					</li> -->
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle my-tickler" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>MY TICKLER</a>
					</li>	
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle search" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>SEARCH</a>
					</li>	
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle reportgen" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>REPORT GENERATOR</a>
					</li>
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle admin" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-square"></i>ADMINISTRATION</a>
						<ul class="sub-menu children dropdown-menu">
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Users</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; User List</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; User Group</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Labels</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Account Settings</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Tools</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; CaseNote Type</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; CaseNote Template</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; CaseNote Addendum</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Forms Management</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Report Management</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Announcement</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">Tracking</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; User Login</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Event List</a></li>
							<li><!-- <i class="fa fa-caret-right"></i> --><a href="#" class="TKTKTK">&mdash; Access List</a></li>
						</ul>
					</li>		
				</ul>
			</div>
			<!-- END TOP NAV -->
		</nav>
	</aside>
	<!-- END LEFT PANEL -->
	<!-- RIGHT PANEL -->
	<div id="right-panel" class="right-panel">
		<header id="header" class="header">
			<div class="header-menu">
				<div class="col-sm-7">
					<!-- <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa-chevron-circle-left"></i></a> -->
					<div class="header-left">
						<button class="search-trigger"><i class="fa fa-search"></i></button><!-- change to SEARCH icon -->
						<div class="form-inline">
							<form class="search-form">
								<input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
								<button class="search-close" type="submit"><i class="fa fa-close"></i></button>
							</form>
						</div>
						<!-- 'BELL' NOTIFICATIONS -->
						<div class="dropdown for-notification">
							<button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fa fa-bell"></i>
								<span class="count bg-danger">5</span>
							</button>
							<div class="dropdown-menu" aria-labelledby="notification">
								<p class="red">You have 3 Notification</p>
								<a class="dropdown-item media bg-flat-color-1" href="#">
								<i class="fa fa-check"></i>
								<p>Lorem ipsum dolor sit amet, consectetur.</p>
							</a>
							<a class="dropdown-item media bg-flat-color-2" href="#">
								<i class="fa fa-info"></i>
								<p>Lorem ipsum dolor sit amet, consectetur.</p>
							</a>
							<a class="dropdown-item media bg-flat-color-1" href="#">
								<i class="fa fa-warning"></i>
								<p>Lorem ipsum dolor sit amet, consectetur.</p>
							</a>
							</div>
						</div>
						<!-- MAIL NOTIFICATIONS -->
						<div class="dropdown for-message">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="message"
								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="ti-email"></i>
								<span class="count bg-primary">9</span>
							</button>
							<div class="dropdown-menu" aria-labelledby="message">
								<p class="red">You have 4 Mails</p>
								<a class="dropdown-item media bg-flat-color-1" href="#">
								<span class="photo media-left"><img alt="userName" src="img/dummy-avatar.jpg"></span>
								<span class="message media-body">
								<span class="name float-left">TKTnameTKT</span>
								<span class="time float-right">Just now</span>
									<p>Lorem ipsum dolor sit amet, consectetur</p>
								</span>
							</a>
							<a class="dropdown-item media bg-flat-color-2" href="#">
								<span class="photo media-left"><img alt="userName" src="img/dummy-avatar.jpg"></span>
								<span class="message media-body">
									<span class="name float-left">TKTnameTKT</span>
									<span class="time float-right">5 minutes ago</span>
										<p>Lorem ipsum dolor sit amet, consectetur</p>
								</span>
							</a>
							<a class="dropdown-item media bg-flat-color-1" href="#">
								<span class="photo media-left"><img alt="userName" src="img/dummy-avatar.jpg"></span>
								<span class="message media-body">
									<span class="name float-left">TKTnameTKT</span>
									<span class="time float-right">10 minutes ago</span>
										<p>Lorem ipsum dolor sit amet, consectetur</p>
								</span>
							</a>
							<a class="dropdown-item media bg-flat-color-2" href="#">
								<span class="photo media-left"><img alt="userName" src="img/dummy-avatar.jpg"></span>
								<span class="message media-body">
									<span class="name float-left">TKTnameTKT</span>
									<span class="time float-right">15 minutes ago</span>
										<p>Lorem ipsum dolor sit amet, consectetur</p>
									</span>
								</a>
							</div>
						</div>	
					</div>
				</div>
				<div class="col-sm-5">
					<div class="user-area dropdown float-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<img class="user-avatar rounded-circle" src="img/dummy-avatar.jpg" alt="[userName]">
						</a>
						<div class="user-menu dropdown-menu">
							<a class="nav-link" href="#"><i class="fa fa-user"></i> My Profile</a>
							<a class="nav-link" href="#"><i class="fa fa-user"></i> Notifications <span class="count">13</span></a>
							<a class="nav-link" href="#"><i class="fa fa-cog"></i> Settings</a>
							<a class="nav-link" href="#"><i class="fa fa-power-off"></i> Logout</a>
						</div>
					</div>
					<div class="language-select dropdown" id="language-select">
						<a class="dropdown-toggle" href="#" data-toggle="dropdown"id="language" aria-haspopup="true" aria-expanded="true">
							<i class="flag-icon flag-icon-us"></i>
						</a>
						<div class="dropdown-menu" aria-labelledby="language">
							<div class="dropdown-item">
								<span class="flag-icon flag-icon-fr"></span>
							</div>
							<div class="dropdown-item">
								<i class="flag-icon flag-icon-es"></i>
							</div>
							<div class="dropdown-item">
								<i class="flag-icon flag-icon-us"></i>
							</div>
							<div class="dropdown-item">
								<i class="flag-icon flag-icon-it"></i>
							</div>
						</div>
					</div>

				</div>
			</div>
		</header>
		<div class="topnav-controls">
			<div class="SHL-RAM">
				<ul>
					<li><a class="nav-link" href="#">Restore</a></li>
					<li><a class="nav-link" href="#">Add</a></li>
					<li><a class="nav-link" href="#"></i>Modify</a></li>
					<li><a class="nav-link" href="#">Support</a></li>
					<li><a class="nav-link" href="#">Help</a></li>
					<li><a class="nav-link" href="#">Logout</a></li>
				</ul>
			</div>
		</div>
		<!-- START content -->
		<div class="content mt-3">
			<div class="animated fadeIn">
				<!-- START .load() CONTENT  -->

				<div id="insert-view-content-here"></div>


			<!-- END .load() CONTENT  -->
			</div>
		</div>
		<!-- END content -->
	</div>
	<!-- END RIGHT-PANEL -->

	<!--MODALS -->
	<div class=" modal fade" id="client-record-template" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mediumModalLabel">CASE LOAD REPORT</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body card-block">
								<div class="row form-group">
									<div class="col col-md-3"><label for="select" class=" form-control-label">Template</label></div>
									<div class="col-12 col-md-9">
									<select name="select" id="ZZZZZ" class="form-control">
										<option value="0">Please Select Group</option>
										<option value="1">TKTKTKT</option>
									</select>
									</div>
								</div>
								<div class="form-group"><label for="ZZZZZ" class=" form-control-label">UCI#</label><input type="text" id="ZZZZZ" placeholder="" class="form-control"></div>
								<div class="form-group"><label for="ZZZZZ" class=" form-control-label">First Name</label><input type="text" id="ZZZZZ" placeholder="" class="form-control"></div>
								<div class="form-group"><label for="ZZZZZ" class=" form-control-label">Last Name</label><input type="text" id="ZZZZZ" placeholder="" class="form-control"></div>
								<div class="row form-group">
									<div class="col col-md-3"><label for="select" class=" form-control-label">Client Doc Category</label></div>
									<div class="col-12 col-md-9">
									<select name="select" id="ZZZZZ" class="form-control">
										<option value="0">Please Select Group</option>
										<option value="1">TKTKTKT</option>
									</select>
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3"><label for="select" class=" form-control-label">Client Doc Type</label></div>
									<div class="col-12 col-md-9">
									<select name="select" id="ZZZZZ" class="form-control">
										<option value="0">Please Select Group</option>
										<option value="1">TKTKTKT</option>
									</select>
									</div>
								</div>
								<div class="form-group"><label for="ZZZZZ" class=" form-control-label">Client Doc Date</label><input type="text" id="ZZZZZ" placeholder="" class="form-control"></div>

							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
	<!-- 				<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button> -->
					<button type="button" class="btn btn-primary">Print</button>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/per-sufee/popper.min.js"></script>
	<script src="js/scripts-2020.js"></script>
	<!-- OLD JQUERY / SUFEE REQUIRES 2.1.4 OR ABOVE - DISCARD!!
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
	-->
 <%-- <script>
		function resizeIframe(obj) {
			alert(obj.contentWindow.document.body.scrollHeight);
			obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
		}
	</script>--%>
	<!-- 
		OLD ASP-supporting javascript files
		<script type="text/JavaScript" src="js/common.js"></script>
		<script type="text/JavaScript" src="js/WebMain.js"></script>
		
		THIS FROM 2012 - BYEBYE 
		<script src="vendor/modernizr-2.6.2.min.js"></script>
	-->
	<script src="js/per-sufee/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="js/per-sufee/data-table/datatables.min.js"></script>
	<script src="js/per-sufee/data-table/dataTables.bootstrap.min.js"></script>
	<script src="js/per-sufee/data-table/dataTables.buttons.min.js"></script>
	<script src="js/per-sufee/data-table/datatables-init.js"></script>

	<script src="js/per-sufee/main.js"></script>
	<script src="js/per-sufee/vendors/chart.js/dist/Chart.bundle.min.js"></script>
	<script src="js/per-sufee/vendors/popper.js/dist/umd/popper.min.js"></script>

	<script src="js/per-sufee/dashboard.js"></script>
	<script src="js/per-sufee/widgets.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#bootstrap-data-table-export').DataTable();
		} );
	</script>
	<!-- SUFEE MAP JS FILES - NOT IN USE
	<script src="js/per-sufee/vendors/jqvmap/dist/jquery.vmap.min.js"></script>
	<script src="js/per-sufee/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<script src="js/per-sufee/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script>
		(function($) {
			"use strict";

			jQuery('#vmap').vectorMap({
				map: 'world_en',
				backgroundColor: null,
				color: '#ffffff',
				hoverOpacity: 0.7,
				selectedColor: '#1de9b6',
				enableZoom: true,
				showTooltip: true,
				values: sample_data,
				scaleColors: ['#1de9b6', '#03a9f5'],
				normalizeFunction: 'polynomial'
			});

		})(jQuery);
	</script>
	-->

<!-- 
INACTIVE ASP DUMP (eventually remove or re-purpose these components)

<asp:Menu ID="mainMenu" runat="server" StaticMenuItemStyle-CssClass="MenuItem" StaticHoverStyle-CssClass="MenuItemHover" StaticSelectedStyle-CssClass="MenuItemSelected" DynamicMenuItemStyle-CssClass="DynamicMenuItem" DynamicHoverStyle-CssClass="MenuItemHover" StaticSubMenuIndent="0" StaticDisplayLevels="1" Width="100%" BackColor="#EAF4FF" DynamicMenuItemStyle-Width="180px" DynamicHoverStyle-Width="180px"> <Items> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;HOME" NavigateUrl="javascript:Menu_Click(0);" ImageUrl="./img/home.ico"></asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Client" NavigateUrl="javascript:Menu_Click(1);" ImageUrl="./img/clientlist.ico"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Profile" NavigateUrl="javascript:Menu_Click(2);" ImageUrl="./img/profile.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Client Record Template " NavigateUrl="javascript:Menu_Click(55);" ImageUrl="./img/profile.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Case Notes" NavigateUrl="javascript:Menu_Click(3);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Medical" NavigateUrl="javascript:Menu_Click(22);" ImageUrl="./img/medical.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Medicaid Waiver" NavigateUrl="javascript:Menu_Click(32);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;POS List" NavigateUrl="javascript:Menu_Click(29);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;SIR List" NavigateUrl="javascript:Menu_Click(30);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Document List" NavigateUrl="javascript:Menu_Click(19);" ImageUrl="./img/Documents.png" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;IFSP List" NavigateUrl="javascript:Menu_Click(52);" ImageUrl="./img/Documents.png" /> </asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;To Do List" NavigateUrl="javascript:Menu_Click(4);" ImageUrl="./img/tickler.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Form List" NavigateUrl="javascript:Menu_Click(6);" ImageUrl="./img/forms.ico"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;ESR" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Intake" NavigateUrl="javascript:Menu_Click(34);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Psycho Social" NavigateUrl="javascript:Menu_Click(40);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Eligibility" NavigateUrl="javascript:Menu_Click(39);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Turning 3" NavigateUrl="javascript:Menu_Click(54);" ImageUrl="./img/IDNotes.ico" /> </asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Lanterman" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Intake" NavigateUrl="javascript:Menu_Click(35);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Psycho Social" NavigateUrl="javascript:Menu_Click(42);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Eligibility" NavigateUrl="javascript:Menu_Click(41);" ImageUrl="./img/IDNotes.ico" /> </asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Transfer" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Case Transfer" NavigateUrl="javascript:Menu_Click(36);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Unit Case Transfer" NavigateUrl="javascript:Menu_Click(43);" ImageUrl="./img/IDNotes.ico" /> </asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Statistics" NavigateUrl="javascript:Menu_Click(37);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Time Card" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Exempt Time Card" NavigateUrl="javascript:Menu_Click(38);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Non-Exempt Time Card" NavigateUrl="javascript:Menu_Click(44);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Mileage" NavigateUrl="javascript:Menu_Click(49);" ImageUrl="./img/IDNotes.ico" /> </asp:MenuItem> </asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Imaging" NavigateUrl="javascript:Menu_Click(46);" ImageUrl="./img/tickler.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;E-Forms" NavigateUrl="javascript:Menu_Click(45);" ImageUrl="./img/quicklinks2.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Report List" NavigateUrl="javascript:Menu_Click(7);" ImageUrl="./img/reports.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Tickler" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/admin.ico"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Client Tickler" NavigateUrl="javascript:Menu_Click(25);" ImageUrl="./img/tickler.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Vendor Tickler" NavigateUrl="javascript:Menu_Click(50);" ImageUrl="./img/tickler.ico" /> </asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Validate" NavigateUrl="javascript:Menu_Click(26);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Resource" NavigateUrl="javascript:Menu_Click(33);" ImageUrl="./img/clientlist.ico"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Profile" NavigateUrl="javascript:Menu_Click(47);" ImageUrl="./img/profile.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;ID Notes" NavigateUrl="javascript:Menu_Click(48);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Monitoring Tools/CAP" NavigateUrl="javascript:Menu_Click(53);" ImageUrl="./img/IDNotes.ico" /> </asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Messages" NavigateUrl="javascript:Menu_Click(27);" ImageUrl="./img/message.jpg" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Web Links" NavigateUrl="javascript:Menu_Click(8);" ImageUrl="./img/quicklinks2.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;My Settings" NavigateUrl="javascript:Menu_Click(9);" ImageUrl="./img/mysettings.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;My Billing" NavigateUrl="javascript:Menu_Click(28);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;My Tickler" NavigateUrl="javascript:Menu_Click(31);" ImageUrl="./img/tickler.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Search" NavigateUrl="javascript:Menu_Click(10);" ImageUrl="./img/search.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Report Generator" NavigateUrl="javascript:Menu_Click(20);" ImageUrl="./img/search.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Administration" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/admin.ico"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Users" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/users.ico"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;User List" NavigateUrl="javascript:Menu_Click(5);" ImageUrl="./img/users.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;User Group" NavigateUrl="javascript:Menu_Click(11);" ImageUrl="./img/groups.ico" /> </asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Labels" NavigateUrl="javascript:Menu_Click(12);" ImageUrl="./img/labels.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Account Settings" NavigateUrl="javascript:Menu_Click(13);" ImageUrl="./img/accountsettings.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Tools" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/tools.ico"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;CaseNote Type" NavigateUrl="javascript:Menu_Click(14);" ImageUrl="./img/notetypes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;CaseNote Template" NavigateUrl="javascript:Menu_Click(15);" ImageUrl="./img/notetemplates.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;CaseNote Addendum" NavigateUrl="javascript:Menu_Click(23);" ImageUrl="./img/notetypes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Forms Management" NavigateUrl="javascript:Menu_Click(16);" ImageUrl="./img/formsmanagement.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Report Management" NavigateUrl="javascript:Menu_Click(17);" ImageUrl="./img/reportsmanagement.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Announcement" NavigateUrl="javascript:Menu_Click(18);" ImageUrl="./img/announcements.ico" /> </asp:MenuItem> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Tracking" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/audit.png"> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;User Login" NavigateUrl="javascript:Menu_Click(24);" ImageUrl="./img/groups.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Event List" NavigateUrl="javascript:Menu_Click(21);" ImageUrl="./img/IDNotes.ico" /> <asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Access List" NavigateUrl="javascript:Menu_Click(51);" ImageUrl="./img/announcements.ico" /> </asp:MenuItem> </asp:MenuItem> </Items> </asp:Menu>

OLD HEADER GARBAGE ::
 <asp:Image id="titlelogo" runat="server" ImageUrl="img/logo/kea-live_text.jpg" Height="30px" Width="150px"></asp:Image>
<a class="navbar-brand hidden" href="./"><img src="Images/logos/lanterman-logo.png" alt="Logo"></a>

<div class="head-top">
	<img class="powered-by" src="img/logo/pweredbykea.png" />
	
	<asp:Image id="poweredby" runat="server" ImageUrl="img/logo/pweredbykea.png" Height="25px" Width="200px"></asp:Image>
</div>
<div class="head-bottom">
	<div class="account-user">
		ACCOUNT: <asp:Label ID="accountdesc" runat="server"></asp:Label>
		USER: <asp:Label ID="username" runat="server"></asp:Label>
	</div>
	<div class="page-title">
		<asp:Label ID="pagetitle" runat="server" Font-Bold="true" Font-Size="Small" ForeColor="#660033" Text=""></asp:Label>
	</div>
</div> 

<uc2:DisplayModeMenu ID="DisplayModeMenu1" runat="server" />

::

frameborder="1"
marginwidth="5" marginheight="2"

<div id="OnCallTrxDiv" style="overflow: auto;" runat="server">
	<iframe src="WebList/webOnCallTrxList.aspx" style="width: 100%; height: 100%;" />
</div>
<div id="bg" runat="server"></div>

THIS WAS THE <IFRAME> PORTION OF THE OLD SITE ::
<iframe id="mainlist" src="webPartsMain.aspx" scrolling="yes" runat="server" style="width: 100%; height: auto; outline: 1px dotted red; "></iframe>

::

 -->

</form>
</body>
</html>