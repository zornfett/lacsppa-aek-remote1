// THIS INPUTS VIEW HTML INTO #insert-view-content-here
jQuery('#main-menu .home').on('click', function(e){
	e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/home.html');
});

// CLIENT views
jQuery('#main-menu .profile-facesheet').on('click', function(e){
	console.log('Jackson!');
	e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-facesheet.html');
});

// maybe replace with name-swap via IDs