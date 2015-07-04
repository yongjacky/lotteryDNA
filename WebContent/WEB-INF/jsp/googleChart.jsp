<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your great chart</title>
</head>
<body>
<img src="${url}" alt="Chart" />

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
      ///google.load("visualization", "1", {packages:["corechart"]});
      google.load('visualization', '1', {'packages':['table,piechart,orgchart,barchart']});

      google.setOnLoadCallback(init);
      function init() {
    	  var query = new google.visualization.Query('http://localhost:18080/appStatsAnalytic/api/chart/getData');
    	  query.send(handleSimpleDsResponse);
      }
      function handleSimpleDsResponse(response) {
    	    if (response.isError()) {
    	      alert('Error in query: ' + response.getMessage() + ' ' + response.getDetailedMessage());
    	      return;
    	    }

    	    var data = response.getDataTable();
    	    alert(data);
    	    var chart = new google.visualization.PieChart(document.getElementById('simple_div'));
    	    chart.draw(data, {width: 600, height: 150, is3D: true});
    	  }
      
      
    </script>
    
    <div id="simple_div" ></div>
</body>
</html>