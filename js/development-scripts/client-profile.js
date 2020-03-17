
// CLIENT > FINANCIAL INFO view populate
jQuery('.content-topnav .profile-financial-info').on('click', function(e){
	// e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-financial-info.html');
});

// CLIENT > FINANCIAL > HEALTH BENEFIT view populate
jQuery('.content-topnav .profile-financial-health').on('click', function(e){
	console.log('choy');
	// e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-financial-health.html');
});

