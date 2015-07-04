// This script sorts any table on the page according to the sortConfig variable.
    	// WARNING: May not sort all tables if there is more than 1 table on this page.
    	$(function () {
    		var sortConfig = [ // configure your sorting options here (add more rows if necessary)
    		                   // [ <indexOfColumn>, 'asc'||'desc' ]
    		                  [0, 'desc']];
    		
    		function setDefaultSort ()
    		{
    			var tables = $.fn.DataTable.fnTables();
    			if(tables.length) {
    				for(var i=0; i<tables.length; i++) {
    					$(tables[i]).dataTable().fnSort(sortConfig);
    				}
    			} else {
    				setTimeout(setDefaultSort, 100);
    			}
    		}
    		
    		setDefaultSort();
    	});
