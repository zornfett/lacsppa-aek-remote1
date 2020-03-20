
// CLIENT > LEGAL XXXX view populate
jQuery('.content-topnav .confidential, .content-topnav .profile-legal').on('click', function(e){
	console.log('chunga')
;	// e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-legal-confidential.html');
});
