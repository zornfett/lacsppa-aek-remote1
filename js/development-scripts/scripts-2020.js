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

// CLIENT > SIR LIST view populate
jQuery('#main-menu .sir-list').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/sir-list.html');
});

// CLIENT > DOC LIST (landing) view populate
jQuery('#main-menu .doc-list').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-landing.html');
});

// CLIENT > DOCLIST INFO view populate
jQuery('#main-menu .doclist-info, content-topnav .doclist-info').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-info.html');
});

// CLIENT > DOCLIST SERVICES view populate
jQuery('.content-topnav .doclist-services').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-services.html');
});

// CLIENT > DOCLIST SERVICES view populate
jQuery('.content-topnav .doclist-health').on('click', function(e){
	// e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-health.html');
});

// CLIENT > DOCLIST SURVEY view populate
jQuery('.content-topnav .doclist-survey').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-survey.html');
});

// CLIENT > DOCLIST SURVEY view populate
jQuery('.content-topnav .doclist-finance').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-finance.html');
});

// CLIENT > DOCLIST RESIDENT view populate
jQuery('.content-topnav .doclist-resident').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-resident.html');
});

// CLIENT > DOCLIST FINALIZE view populate
jQuery('.content-topnav .doclist-final').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-final.html');
});

// CLIENT > DOCLIST ADDENDUMS view populate
jQuery('.content-topnav .doclist-add').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-add.html');
});

// CLIENT > DOCLIST QUARTERLIES view populate
jQuery('.content-topnav .doclist-quarter').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-quarter.html');
});

// CLIENT > DOCLIST ANNUAL CONTACTS view populate
jQuery('.content-topnav .doclist-contacts').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/doclist-contacts.html');
});

// CLIENT > IFSP landing view populate
jQuery('#main-menu .ifsp-landing').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/ifsplist-landing.html');
});

// CLIENT > IFSP Identifying view populate
jQuery('.content-topnav .ifsplist-identifying, .ifsp-landing .dummy-link').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/ifsplist-identifying.html');
});

// CLIENT > IFSP Identifying view populate
jQuery('.content-topnav .ifsplist-concerns').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/ifsplist-concerns.html');
});

// CLIENT > IFSP Dev/Health view populate
jQuery('.content-topnav .ifsplist-health').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/ifsplist-health.html');
});

// CLIENT > IFSP Outcomes view populate
jQuery('.content-topnav .ifsplist-outcomes').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/ifsplist-outcomes.html');
});

// CLIENT > IFSP Finalize/Signatures view populate
jQuery('.content-topnav .ifsplist-finalize').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/ifsplist-final.html');
});

// CLIENT > IFSP Periodic Review view populate
jQuery('.content-topnav .ifsplist-review').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/ifsplist-review.html');
});

// CLIENT > IFSP Transition Plan view populate
jQuery('.content-topnav .ifsplist-transition').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/ifsplist-transition.html');
});

// CLIENT > IFSP Addendum view populate
jQuery('.content-topnav .ifsplist-addendum').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/ifsplist-addendum.html');
});

// RESOURCE landing page view populate
jQuery('#main-menu .resource').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/resource/resource-landing.html');
});

// RESOURCE > Profile view populate
jQuery('#main-menu .resource-profile, .content-topnav .resource-profile').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/resource/resource-profile.html');
});

jQuery('#main-menu .my-settings').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/my-settings/my-settings.html');
});

jQuery('#main-menu .my-tickler').on('click', function(){
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/my-tickler/my-tickler.html');
});

