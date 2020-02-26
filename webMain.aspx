﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webMain.aspx.cs" Inherits="Virweb2.webMain" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<html>
<head runat="server">

	<title>::Kea Live:::.....</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/flag-icon.min.css">
	<link rel="stylesheet" href="css/cs-skin-elastic.css">

	<!-- <link href="css/style.css" type="text/css" rel="stylesheet" /> -->
	<!-- <link rel="stylesheet" href="css/style-2020a.css"> -->
	<link rel="stylesheet" href="css/per-sufee.css">
	<link rel="stylesheet" href="css/prototype-styles.css">

	<link href="css/jqvmap.min.css" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

	<!-- <link rel="apple-touch-icon" href="images/favicon.png">
	<link rel="shortcut icon" href="images/favicon.png"> -->

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
   <%-- <script>
		function resizeIframe(obj) {
			alert(obj.contentWindow.document.body.scrollHeight);
			obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
		}
	</script>--%>
	<script type="text/JavaScript" src="js/common.js"></script>
	<script type="text/JavaScript" src="js/WebMain.js"></script>
</head>

<body id="home">
<form id="frmMain" runat="server">
<input type="hidden" name="UserType" id="UserType" runat="server" value="" />

	<!-- Left Panel -->
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">

			<div class="navbar-header">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
					<i class="fa fa-bars"></i>
				</button>
				<img class="logo" src="http://zornfett.com/client/appscal/layout-test/images/lanterman-logo.png" />
				<!-- <asp:Image id="titlelogo" runat="server" ImageUrl="img/logo/kea-live_text.jpg" Height="30px" Width="150px"></asp:Image> -->
				<a class="navbar-brand hidden" href="./"><img src="http://zornfett.com/client/appscal/layout-test/images/lanterman-logo.png" alt="Logo"></a>
			</div>

<!-- 			
			<div class="head-top">
				<img class="powered-by" src="img/logo/pweredbykea.png" />
				<!-- <asp:Image id="poweredby" runat="server" ImageUrl="img/logo/pweredbykea.png" Height="25px" Width="200px"></asp:Image>
			</div>
			<div class="head-bottom">
				<div class="account-user">
					ACCOUNT: <asp:Label ID="accountdesc" runat="server"></asp:Label>
					USER: <asp:Label ID="username" runat="server"></asp:Label>
				</div>
				<div class="page-title">
					<asp:Label ID="pagetitle" runat="server" Font-Bold="true" Font-Size="Small" ForeColor="#660033" Text=""></asp:Label>
				</div>
			</div> -->

			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
<!-- 					<li class="active">
						<a href="index.html"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
					</li> -->
					<h3 class="menu-title">Header</h3>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle home" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>HOME</a>
					</li>
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle client" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Client (New SQL)*</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-caret-right"></i><a href="ZZZZZZ">sublink</a></li>
						</ul>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle todo" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>To Do List*</a>
					</li>
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle formlist" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Form List*</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-caret-right"></i><a href="ZZZZZZ">sublink</a></li>
						</ul>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>E-Forms</a>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle reports" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Reports*</a>
					</li>
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Tickler</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-caret-right"></i><a href="ZZZZZZ">sublink</a></li>
						</ul>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Unvalidated</a>
					</li>
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Resource</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-caret-right"></i><a href="ZZZZZZ">sublink</a></li>
						</ul>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Messages</a>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Web Links</a>
					</li>
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>My Settings</a>
					</li>								
					<li class="menu-item-no-children dropdown">
						<a href="#" class="dropdown-toggle search" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Search*</a>
					</li>	
					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-square"></i>Administration</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-caret-right"></i><a href="ZZZZZZ">sublink</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
	</aside>

	<!-- Left Panel -->
	<!-- Right Panel -->

	<div id="right-panel" class="right-panel">

		<!-- HEADER-->
		<header id="header" class="header">
			<div class="header-menu">
				<div class="col-sm-7">
					<a id="menuToggle" class="menutoggle pull-left"><i class="fa fa-chevron-circle-left"></i></a>
					<div class="header-left">
						<button class="search-trigger"><i class="fa fa-chevron-circle-right"></i></button>
						<div class="form-inline">
							<form class="search-form">
								<input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
								<button class="search-close" type="submit"><i class="fa fa-close"></i></button>
							</form>
						</div>
						<!-- NOTIFICATIONS-->
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
						<!-- Header MESSAGES-->
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
								<span class="photo media-left"><img alt="avatar" src="images/avatar/1.jpg"></span>
								<span class="message media-body">
								<span class="name float-left">TKTnameTKT</span>
								<span class="time float-right">Just now</span>
									<p>Lorem ipsum dolor sit amet, consectetur</p>
								</span>
							</a>
							<a class="dropdown-item media bg-flat-color-2" href="#">
								<span class="photo media-left"><img alt="avatar" src="images/avatar/2.jpg"></span>
								<span class="message media-body">
									<span class="name float-left">TKTnameTKT</span>
									<span class="time float-right">5 minutes ago</span>
										<p>Lorem ipsum dolor sit amet, consectetur</p>
								</span>
							</a>
							<a class="dropdown-item media bg-flat-color-1" href="#">
								<span class="photo media-left"><img alt="avatar" src="images/avatar/3.jpg"></span>
								<span class="message media-body">
									<span class="name float-left">TKTnameTKT</span>
									<span class="time float-right">10 minutes ago</span>
										<p>Lorem ipsum dolor sit amet, consectetur</p>
								</span>
							</a>
							<a class="dropdown-item media bg-flat-color-2" href="#">
								<span class="photo media-left"><img alt="avatar" src="images/avatar/4.jpg"></span>
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
							<img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
						</a>
						<div class="user-menu dropdown-menu">
							<a class="nav-link" href="#"><i class="fa fa-user"></i> My Profile</a>
							<a class="nav-link" href="#"><i class="fa fa-user"></i> Notifications <span class="count">13</span></a>
							<a class="nav-link" href="#"><i class="fa fa-cog"></i> Settings</a>
							<a class="nav-link" href="#"><i class="fa fa-power-off"></i> Logout</a>
						</div>
					</div>
					<div class="language-select dropdown" id="language-select">
						<a class="dropdown-toggle" href="#" data-toggle="dropdown"  id="language" aria-haspopup="true" aria-expanded="true">
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
		<!-- Header-->

		<div class="breadcrumbs">
			<div class="col-sm-4">
				<div class="page-header float-left">
					<div class="page-title">
						<h1>Home</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="page-header float-right">
<!-- 					<div class="page-title">
						<ol class="breadcrumb text-right">
							<li class="active">Dashboard</li>
						</ol>
					</div> -->
				</div>
			</div>
		</div>
		
		<div class="content mt-3">

		<!-- ALERT!! -->
			<!--
			<div class="col-sm-12">
				<div class="alert  alert-success alert-dismissible fade show" role="alert">
					<span class="badge badge-pill badge-success">PAGEalert
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
			-->

			<!-- START content -->
			<div class="content mt-3">
				<div class="animated fadeIn">

				<!-- [[ homepage content ]] -->
				<iframe id="mainlist" src="webPartsMain.aspx" scrolling="yes" runat="server" style="width: 100%; height: auto; outline: 1px dotted red; "></iframe>

				<!--  
frameborder="1"
 marginwidth="5" marginheight="2"


				<div id="OnCallTrxDiv" style="overflow: auto;" runat="server">
					<iframe src="WebList/webOnCallTrxList.aspx" style="width: 100%; height: 100%;" />
				</div>

				<div id="bg" runat="server"></div>

				-->

				</div>
			</div>
			<!-- END content -->

		</div>
	</div>
	<!-- END Right Panel -->

	<script src="js/per-sufee/vendors/jquery/dist/jquery.min.js"></script>
	<script src="js/per-sufee/vendors/popper.js/dist/umd/popper.min.js"></script>
	<script src="js/per-sufee/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- <script src="vendor/modernizr-2.6.2.min.js"></script> -->
	<script src="js/per-sufee/main.js"></script>


	<script src="js/per-sufee/vendors/chart.js/dist/Chart.bundle.min.js"></script>
	<script src="js/per-sufee/dashboard.js"></script>
	<script src="js/per-sufee/widgets.js"></script>
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

			// temp.linkage
			jQuery('a.home').on('click', function(){
				event.preventDefault();
				window.location.href = "index.html";
			});				
			jQuery('a.client').on('click', function(){
				event.preventDefault();
				window.location.href = "index-client.html";
			});	
			jQuery('a.formlist').on('click', function(){
				event.preventDefault();
				window.location.href = "index-form-list.html";
			});	
			jQuery('a.reports').on('click', function(){
				event.preventDefault();
				window.location.href = "index-reports.html";
			});	
			jQuery('a.search').on('click', function(){
				event.preventDefault();
				window.location.href = "index-search.html";
			});	
			jQuery('a.todo').on('click', function(){
				event.preventDefault();
				window.location.href = "index-todo.html";
			});	
		})(jQuery);
	</script>

<!-- 

<asp:Menu ID="mainMenu" runat="server"
												StaticMenuItemStyle-CssClass="MenuItem"
												StaticHoverStyle-CssClass="MenuItemHover"
												StaticSelectedStyle-CssClass="MenuItemSelected"
												DynamicMenuItemStyle-CssClass="DynamicMenuItem"
												DynamicHoverStyle-CssClass="MenuItemHover"
												StaticSubMenuIndent="0"
												StaticDisplayLevels="1" Width="100%" BackColor="#EAF4FF" DynamicMenuItemStyle-Width="180px" DynamicHoverStyle-Width="180px">
												<Items>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;HOME" NavigateUrl="javascript:Menu_Click(0);" ImageUrl="./img/home.ico"></asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Client" NavigateUrl="javascript:Menu_Click(1);" ImageUrl="./img/clientlist.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Profile" NavigateUrl="javascript:Menu_Click(2);" ImageUrl="./img/profile.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Client Record Template " NavigateUrl="javascript:Menu_Click(55);" ImageUrl="./img/profile.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Case Notes" NavigateUrl="javascript:Menu_Click(3);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Medical" NavigateUrl="javascript:Menu_Click(22);" ImageUrl="./img/medical.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Medicaid Waiver" NavigateUrl="javascript:Menu_Click(32);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;POS List" NavigateUrl="javascript:Menu_Click(29);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;SIR List" NavigateUrl="javascript:Menu_Click(30);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Document List" NavigateUrl="javascript:Menu_Click(19);" ImageUrl="./img/Documents.png" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;IFSP List" NavigateUrl="javascript:Menu_Click(52);" ImageUrl="./img/Documents.png" />
													</asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;To Do List" NavigateUrl="javascript:Menu_Click(4);" ImageUrl="./img/tickler.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Form List" NavigateUrl="javascript:Menu_Click(6);" ImageUrl="./img/forms.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;ESR" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Intake" NavigateUrl="javascript:Menu_Click(34);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Psycho Social" NavigateUrl="javascript:Menu_Click(40);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Eligibility" NavigateUrl="javascript:Menu_Click(39);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Turning 3" NavigateUrl="javascript:Menu_Click(54);" ImageUrl="./img/IDNotes.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Lanterman" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Intake" NavigateUrl="javascript:Menu_Click(35);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Psycho Social" NavigateUrl="javascript:Menu_Click(42);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Eligibility" NavigateUrl="javascript:Menu_Click(41);" ImageUrl="./img/IDNotes.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Transfer" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Case Transfer" NavigateUrl="javascript:Menu_Click(36);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Unit Case Transfer" NavigateUrl="javascript:Menu_Click(43);" ImageUrl="./img/IDNotes.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Statistics" NavigateUrl="javascript:Menu_Click(37);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Time Card" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/Documents.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Exempt Time Card" NavigateUrl="javascript:Menu_Click(38);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Non-Exempt Time Card" NavigateUrl="javascript:Menu_Click(44);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Mileage" NavigateUrl="javascript:Menu_Click(49);" ImageUrl="./img/IDNotes.ico" />
														</asp:MenuItem>
													</asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Imaging" NavigateUrl="javascript:Menu_Click(46);" ImageUrl="./img/tickler.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;E-Forms" NavigateUrl="javascript:Menu_Click(45);" ImageUrl="./img/quicklinks2.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Report List" NavigateUrl="javascript:Menu_Click(7);" ImageUrl="./img/reports.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Tickler" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/admin.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Client Tickler" NavigateUrl="javascript:Menu_Click(25);" ImageUrl="./img/tickler.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Vendor Tickler" NavigateUrl="javascript:Menu_Click(50);" ImageUrl="./img/tickler.ico" />
													</asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Validate" NavigateUrl="javascript:Menu_Click(26);" ImageUrl="./img/IDNotes.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Resource" NavigateUrl="javascript:Menu_Click(33);" ImageUrl="./img/clientlist.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Profile" NavigateUrl="javascript:Menu_Click(47);" ImageUrl="./img/profile.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;ID Notes" NavigateUrl="javascript:Menu_Click(48);" ImageUrl="./img/IDNotes.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Monitoring Tools/CAP" NavigateUrl="javascript:Menu_Click(53);" ImageUrl="./img/IDNotes.ico" />
													</asp:MenuItem>
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Messages" NavigateUrl="javascript:Menu_Click(27);" ImageUrl="./img/message.jpg" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Web Links" NavigateUrl="javascript:Menu_Click(8);" ImageUrl="./img/quicklinks2.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;My Settings" NavigateUrl="javascript:Menu_Click(9);" ImageUrl="./img/mysettings.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;My Billing" NavigateUrl="javascript:Menu_Click(28);" ImageUrl="./img/IDNotes.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;My Tickler" NavigateUrl="javascript:Menu_Click(31);" ImageUrl="./img/tickler.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Search" NavigateUrl="javascript:Menu_Click(10);" ImageUrl="./img/search.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Report Generator" NavigateUrl="javascript:Menu_Click(20);" ImageUrl="./img/search.ico" />
													<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Administration" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/admin.ico">
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Users" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/users.ico">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;User List" NavigateUrl="javascript:Menu_Click(5);" ImageUrl="./img/users.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;User Group" NavigateUrl="javascript:Menu_Click(11);" ImageUrl="./img/groups.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Labels" NavigateUrl="javascript:Menu_Click(12);" ImageUrl="./img/labels.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Account Settings" NavigateUrl="javascript:Menu_Click(13);" ImageUrl="./img/accountsettings.ico" />
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Tools" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/tools.ico">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;CaseNote Type" NavigateUrl="javascript:Menu_Click(14);" ImageUrl="./img/notetypes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;CaseNote Template" NavigateUrl="javascript:Menu_Click(15);" ImageUrl="./img/notetemplates.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;CaseNote Addendum" NavigateUrl="javascript:Menu_Click(23);" ImageUrl="./img/notetypes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Forms Management" NavigateUrl="javascript:Menu_Click(16);" ImageUrl="./img/formsmanagement.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Report Management" NavigateUrl="javascript:Menu_Click(17);" ImageUrl="./img/reportsmanagement.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Announcement" NavigateUrl="javascript:Menu_Click(18);" ImageUrl="./img/announcements.ico" />
														</asp:MenuItem>
														<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Tracking" NavigateUrl="javascript:Menu_Click(-1);" ImageUrl="./img/audit.png">
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;User Login" NavigateUrl="javascript:Menu_Click(24);" ImageUrl="./img/groups.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Event List" NavigateUrl="javascript:Menu_Click(21);" ImageUrl="./img/IDNotes.ico" />
															<asp:MenuItem Text="&nbsp;&nbsp;&nbsp;Access List" NavigateUrl="javascript:Menu_Click(51);" ImageUrl="./img/announcements.ico" />
														</asp:MenuItem>
													</asp:MenuItem>
												</Items>
											</asp:Menu>
 -->

</form>
</body>

</html>
