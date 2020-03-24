// THIS INPUTS VIEW HTML INTO 

jQuery('#main-menu .home').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/home.html');
});

// CLIENT views
jQuery('#main-menu .client-default').on('click', function(){
	// // e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/client-default.html');
});

jQuery('#main-menu .profile-facesheet, table.table-bordered.dataTable .fa-pencil-square-o').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-facesheet.html');
});

// other CLIENT > PROFILE view scripts in 'client-profile.js'

// REPORT LIST view
jQuery('#main-menu .report-list').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/report-list.html');
});

// TICKLER views
jQuery('#main-menu .client-tickler').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/tickler/client-tickler.html');
});

// VALIDATE views
jQuery('#main-menu .validate-default').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/validate/validate-default.html');
});

// CLIENT > PROFILE > FINANCIAL


// CLIENT > FINANCIAL INFO view populate
jQuery('.content-topnav .profile-financial-info').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-financial-info.html');
});

// CLIENT > FINANCIAL > HEALTH BENEFIT view populate
jQuery('.content-topnav .profile-financial-health').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-financial-health.html');
});

// CLIENT > FINANCIAL > HEALTH BENEFIT view populate
jQuery('.content-topnav .other-benes').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-financial-other.html');
});

// CLIENT > FINANCIAL > SLS view populate
jQuery('.content-topnav .sls').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-financial-sls.html');
});

// CLIENT > FINANCIAL > FCPP
jQuery('.content-topnav .fcpp').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-financial-fcpp.html');
});


// CLIENT > FINANCIAL > COPAY
jQuery('.content-topnav .copay').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-financial-copay.html');
});

// CLIENT > PROFILE > LEGAL

// CLIENT > LEGAL CONFIDENTIAL view populate
jQuery('.content-topnav .confidential, .content-topnav .profile-legal').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-legal-confidential.html');
});

// CLIENT > LEGAL INFO view populate
jQuery('.content-topnav .legal-info').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-legal-info.html');
});

// CLIENT > LEGAL judicial view populate
jQuery('.content-topnav .judicial').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-legal-judicial.html');
});

// CLIENT > LEGAL fair-hearing view populate
jQuery('.content-topnav .fair-hearing').on('click', function(){

	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-legal-fair.html');
});

// CLIENT > LEGAL VOTER view populate
jQuery('.content-topnav .voter').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-legal-voter.html');
});

// CLIENT > LEGAL VOTER view populate
jQuery('.content-topnav .imd').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-legal-imd.html');
});

// CLIENT > STATUS DATES view populate
jQuery('.content-topnav .profile-status').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-status-dates.html');
});

// CLIENT > ADMINISTRATION view populate
jQuery('.content-topnav .profile-admin').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-administration.html');
});

// CLIENT > REFERRALS view populate
jQuery('.content-topnav .profile-referrals').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-referrals.html');
});

// CLIENT > EMPLOYMENT view populate
jQuery('.content-topnav .profile-employment').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-employment.html');
});

// CLIENT > SCHOOLS view populate
jQuery('.content-topnav .profile-schools').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-schools.html');
});

// CLIENT > PROGRAMS view populate
jQuery('.content-topnav .profile-programs').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-programs.html');
});

// CLIENT > POS List view populate
jQuery('.content-topnav .profile-pos').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-pos-list.html');
});