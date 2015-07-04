var bm = {
	"sSearch" : "<span>Cari:</span> ",
	"sInfo" : "Tunjuk <span>_START_</span> to <span>_END_</span> of <span>_TOTAL_</span> entries",
	"sLengthMenu" : "_MENU_ <span>items per page</span>",
	"sInfoEmpty" : "Tunjuk 0 to 0 of 0 rekords",
};

var english = {
	"sSearch" : "<span>Search:</span> ",
	"sInfo" : "Showing <span>_START_</span> to <span>_END_</span> of <span>_TOTAL_</span> entries",
	"sLengthMenu" : "_MENU_ <span>entries per page</span>",
};

$(function() {

	var dtable = $('#table1').dataTable({
		"sPaginationType" : "full_numbers",
		"oLanguage" : bm,
		"sDom" : "lfrtip",
		"aaSorting" : [],
		"bDestroy" : true
	});

	$('#siteLanguage').click(function() {

		var currentLang = '${pageContext.response.locale}';

		if (currentLang == 'en_US') {
			dtable.fnDestroy();
			dtable = null;
			currentLang = (currentLang == bm) ? english : bm;
			dtable = $('#table1').dataTable({
				"sPaginationType" : "full_numbers",
				"oLanguage" : currentLang,
				"sDom" : "lfrtip",
				"aaSorting" : [],
				"bDestroy" : true
			});
		} else {
			dtable.fnDestroy();
			dtable = null;
			currentLang = (currentLang == english) ? bm : english;
			dtable = $('#table1').dataTable({
				"sPaginationType" : "full_numbers",
				"oLanguage" : currentLang,
				"sDom" : "lfrtip",
				"aaSorting" : [],
				"bDestroy" : true
			});
		}

	});
});
