        function createMeterGauge(canvasName, benchmark, currentResult){
            var scale = Math.round(currentResult*100/benchmark);
            var meter = new RGraph.Meter(			
				{
	                id: canvasName,
	                min: 0,
	                max: 200,
	                value: scale,
	                options: {
					   colors: {
					     ranges: [[100, 200, '#a5c753'],[0, 100, '#ff5e5e']]
					   },
					   border: false,
					   needle:{
					     linewidth: 8,
						 taul: false,
						 radius: 60
					   },
					   segment:{
					     radius:{
						   start: 85,
						   }
					   },				   
					   strokestyle: 'transparent',
					   text:{
					     size: 7,
						 color: '#fff'
					   },				   
					   background: {
					     color: 'transparent'
					   }
	                }
	            }
			).grow();
        }
        
        function createLineChart(trendData){
            var lineChart;
            if (typeof lineChart != "undefined"){
                RGraph.Clear(lineChart.canvas); 
                RGraph.ObjectRegistry.Remove(lineChart);
            }
			
			var trend = JSON.parse(trendData);
			
			lineChart = new RGraph.Line({
                id: 'modalCanvas',
                data: trend,
                options: {
                    labels: ['2014-08-01', '2014-08-02', '2014-08-03', '2014-08-04', '2014-08-05', '2014-08-06', '2014-08-07','2014-08-08','2014-08-09','2014-08-10'],
					text:{
					  angle: 45
					},
					tickmarks: 'circle',
					gutter:{
					  bottom: 100,
					  left: 45
					}				
                }
            }).draw();          

        }
        
        function showTrendModal(modal, scenarioId, scenarioName){
            var xmlhttp;
            if (scenarioId==""){
                document.getElementById("txtHint").innerHTML="";
                return;
            }
           
            if (window.XMLHttpRequest){
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            }else{
            	// code for IE6, IE5
               xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
        
            xmlhttp.onreadystatechange = function(){
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200){                	
                	trendData = xmlhttp.responseText;
                	$('#modalTitle').text(scenarioName);
                    createLineChart(trendData);    
                    modal.modal('show');
                 }
             }
            
            xmlhttp.open("GET", "${ctx}/trend/" + scenarioId, true);
            xmlhttp.send();           
        }
        
            
        function showDetail(modal, scenarioId, scenarioName){        
            $('#detailData').html("");
            $('#detailData').append("<div class='modal-header'> "
                                        + "<button type='button' class='close' data-dismiss='modal' >&times;</button>"
                                        + "<h3 id='metricModalTitle'>" + scenarioName + "</h3>"            
                                    + "</div>"
                                    + "<div align='center'>"
                                        + "<iframe style='border:0' src='detail.jsp?code=" + scenarioId + "' width='100%' align='middle' height='710px'></iframe>"
                                    + "</div>");
            modal.modal('show');
        }  