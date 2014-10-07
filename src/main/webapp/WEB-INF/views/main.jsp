<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>PerformanceLab</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Jimmy Cheng">
<link rel="shortcut icon" href="${ctx}/static/img/favicon.ico" type="image/x-icon">

<script src="${ctx}/static/js/RGraph.common.core.js"></script>
<script src="${ctx}/static/js/RGraph.meter.js"></script>
<script src="${ctx}/static/js/RGraph.bar.js"></script>
<script src="${ctx}/static/js/RGraph.common.effects.js"></script>
<script src="${ctx}/static/js/RGraph.common.dynamic.js"></script>
<script src="${ctx}/static/js/RGraph.line.js"></script>
<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/css/performance.css" type="text/css">

<script>
        window.onload = function () {
            <c:forEach items="${requestScope.performance.groupDatas}" var="groupData" >
                <c:forEach items="${groupData.detailDatas}" var="detailData">
                   <c:choose>
                      <c:when test="${defaultTheme eq 'bar'}">
                         createBarChart("${groupData.name}:${detailData.name}", ${detailData.benchmark}, ${detailData.performance});
                      </c:when>
                      <c:otherwise>
                         createMeterGauge("${groupData.name}:${detailData.name}", ${detailData.benchmark}, ${detailData.performance});
                      </c:otherwise>
                   </c:choose>
                </c:forEach>
            </c:forEach>
        }
        
        
        function createBarChart(canvasName, benchmark, currentResult){
            var bar = new RGraph.Bar({
                id: canvasName,
                data: [[benchmark,0], [0,currentResult]],
                options: {
                    labels: {
                        self: ['Benchmark','Current'],
                        above: true
                    },
                    colors: ['black', 'green'],
                    
                    ylabels: false,
                    background: {
                      grid: false
                    },
                    bevel: !RGraph.ISOLD,
                    grouping: 'stacked',
                    strokestyle: 'rgba(0,0,0,0)'
                }                
            }).draw();
        }

        
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
					  start: 85
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
	      	).draw();           
        }
        
        var lineChart;
        function createLineChart(trendData){
            if (typeof lineChart != "undefined"){
                RGraph.Clear(lineChart.canvas); 
                RGraph.ObjectRegistry.Remove(lineChart);
            }
			//2014-09-25. I didn't fully understand json.
			//actually i can use {"dateTrend":["", "", "",""], "dataLable":[]}
            //var myTrend = "[413, 423, 433, 423]:[\"2014-09-01 18:47:52\", \"2014-08-31 18:47:52\", \"2014-08-30 18:47:52\", \"2014-08-29 18:47:52\"]";
			var sep = trendData.indexOf(":");
			
            var dataTrend = JSON.parse(trendData.substring(0, sep));
			var dataLable = JSON.parse(trendData.substring(sep+1));
			
			//var dataTrend = JSON.parse("[413, 423, 433, 423]");
			//var dataLable = JSON.parse("[\"2014-09-01 18:47:52\", \"2014-08-31 18:47:52\", \"2014-08-30 18:47:52\", \"2014-08-29 18:47:52\"]");
				
			lineChart = new RGraph.Line({
                id: 'modalCanvas',
                data: dataTrend,
                options: {
                    labels: dataLable,
					text:{
					  angle: 45
					},
					tickmarks: 'circle',
					gutter:{
					  bottom: 100,
					  left:80
					}				
                }
            }).draw();
        }
        
        function showTrendModal(modal, scenarioId, scenarioName){
            var xmlhttp;
            if (scenarioId=="" || scenarioName ==""){
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
                	
                   	$('#modalTitle').text(scenarioName);
                	var trendData = '' + xmlhttp.responseText;
                    createLineChart(trendData);    
                    modal.modal('show');
                 }
             }
            
            xmlhttp.open("GET", "${ctx}/trend/" + scenarioId, true);
            xmlhttp.send();           
        }

        //todo.
        function showDetailModal(modal, scenarioId, scenarioName){
            modal.modal('show');
        }        
    </script>

</head>

<body >

    <%@include file="inc/navbar-main.jsp" %>    

    <div class="container">
        <c:forEach items="${performance.groupDatas}" var="groupData">
        <div class="row">
            <div class="col-sm-12 col-md-12">
                <div class="panel panel-default">
		            <div class="panel-heading">
		                <i class="glyphicon glyphicon glyphicon-stats"></i> ${groupData.name}
		            </div>                

					<div class="panel-body">
                        <c:forEach items="${groupData.detailDatas}" var="detailData">
                        <div class="col-sm-3 col-md-3">
                            <h5>${detailData.name}</h5>
                            <p>
                                <canvas id="${groupData.name}:${detailData.name}"
                                 width="190" height="125">[No canvas support]</canvas>
                            </p>
                            <p>
                                <span class="label">${detailData.version}=${detailData.benchmark},&nbsp;
                                    ${detailData.version}=${detailData.performance}</span>&nbsp;
                            </p>
                         
                            <p>
                                <a class="" data-toggle="modal"
                                    onClick="showTrendModal($('#trendModal'), '${detailData.id}', '${detailData.name}')">TPS Trend
                                 &raquo;</a> &nbsp; 
                                   
                                <a class="" data-toggle="modal"
                                    onClick="showDetailModal($('#detailModal'), ${detailData.id}, '${detailData.name}')">Metric Detail
                                    &raquo;</a>
                            </p>
                         </div>
                        </c:forEach>
                    </div>
                </div>
            </div> <!-- col-md-12 -->
        </div>
        <p></p>
        </c:forEach>
        <p></p>
    </div>

    <!-- footer -->
    <%@include file="inc/footer.jsp" %> 
    
    <%@include file="inc/trend.jsp" %> 
    <%@include file="inc/detail.jsp" %>   

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/static/js/jquery.js"></script>
    <script src="${ctx}/static/js/bootstrap.js"></script>
    <script src="${ctx}/static/js/excanvas.js"></script>
</body>
</html>
