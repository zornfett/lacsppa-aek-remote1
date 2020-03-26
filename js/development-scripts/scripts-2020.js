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
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-pos-auths.html');
});

// CLIENT > CONTACTS view populate
jQuery('.content-topnav .profile-contacts').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-contacts.html');
});

// CLIENT > INTAKE FORMS view populate
jQuery('.content-topnav .profile-intake').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-intake.html');
});

// CLIENT > INTAKE FORMS view populate
jQuery('.content-topnav .profile-permission').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-permission.html');
});

// CLIENT > SDP view populate
jQuery('.content-topnav .profile-sdp').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-sdp.html');
});

// CLIENT > MEDICAL > Assessments view populate
jQuery('#main-menu .medical, .content-topnav .medical-assessments').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/medical-assessments.html');
});

// CLIENT > MEDICAL > CDER view populate
jQuery('.medical-cder').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/medical-cder.html');
});

// CLIENT > MEDICAL > INFO view populate
jQuery('.content-topnav .medical-info').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/medical-info.html');
});

// CLIENT > MEDICAL > Medications view populate
jQuery('.content-topnav .medical-meds').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/medical-meds.html');
});

// CLIENT > MEDICAL > Visit view populate
jQuery('.content-topnav .medical-visit').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/medical-visit.html');
});

// CLIENT > MEDICAL > Doctors view populate
jQuery('.content-topnav .medical-doctors').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/medical-doctors.html');
});

// CLIENT > MEDICAID WAIVER view populate
jQuery('#main-menu .medicaid-waiver').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/medicaid-waiver.html');
});

// CLIENT > POS LIST view populate
jQuery('#main-menu .pos-list').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/pos-list.html');
});
