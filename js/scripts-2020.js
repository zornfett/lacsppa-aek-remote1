// THIS INPUTS VIEW HTML INTO #insert-view-content-here
jQuery('#main-menu .home').on('click', function(e){
	e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/home.html');
});

// CLIENT views
jQuery('#main-menu .client-default').on('click', function(e){
	console.log('choy');
	// e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/client-default.html');
});

jQuery('#main-menu .profile-facesheet, table.table-bordered.dataTable .fa-pencil-square-o').on('click', function(e){
	e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/client/profile-facesheet.html');
});


// REPORT LIST view
jQuery('#main-menu .report-list').on('click', function(e){
	e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/report-list.html');
});

// TICKLER views
jQuery('#main-menu .client-tickler').on('click', function(e){
	e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/tickler/client-tickler.html');
});

// VALIDATE views
jQuery('#main-menu .validate-default').on('click', function(e){
	e.stopPropagation();
	jQuery('#insert-view-content-here').load('/KEA_QA/content-views/validate/validate-default.html');
});


// maybe replace with name-swap via IDs