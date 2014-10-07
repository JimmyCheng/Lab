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
<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/css/docs.min.css" type="text/css">
</head>

<body >
    <%@include file="inc/navbar-main.jsp" %>    
    <div class="container">
    <div class="bs-docs-featurette">
      <div class="container">
        <h2 class="bs-docs-featurette-title">Designed for Performance Test.</h2>
        <p class="lead">PerformanceLab makes performance testing easier and faster. It integrates with Jenkins. The dashboard provides a easier access to the test results. Dashboard can be viewed anywhere with any devices. The backend management system provides a better way to manage all the test cases</p>
    
        <hr class="half-rule">
    
        <div class="row">
          <div class="col-sm-4">
            <img src="${ctx}/static/img/jenkins.jpg" alt="Integrate with Jenkins" class="img-responsive">
            <h3>Jenkins Integration</h3>
            <p><a href="http://www.jenkins-ci.org/">Jenkins</a> provides continuous integration services for software development. Jenkins runs the performance testcases continuesly and saves the result to the PerformanceLab database.</p>
          </div>
          <div class="col-sm-4">
            <img src="${ctx}/static/img/devices.jpg" alt="Responsive across devices" class="img-responsive">
            <h3>Monitor on Every Device.</h3>
            <p>PerformanceLab uses responsive design. Now developer can monitor the performance result from phones to tablets to desktops.</p>
          </div>
          <div class="col-sm-4">
            <img src="${ctx}/static/img/deploy.jpg" alt="deployment" class="img-responsive">
            <h3>Easy to Deploy</h3>
            <p>Performance Lab is designed in Java. It can be deployed in Tomcat, Jetty, JBOSS or any other <br> Java Servers</p>
          </div>
        </div>
    
        <hr class="half-rule">
    
        <p class="lead">PerformanceLab will be opensource soon. It will be hosted, developed, and maintained on GitHub in the future.</p>
        <a href="https://github.com/" class="btn btn-outline btn-lg disabled">View the GitHub project</a>
      </div>
    </div>
    </div>

    <!-- footer -->
    <%@include file="inc/footer.jsp" %> 

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/static/js/jquery.js"></script>
    <script src="${ctx}/static/js/bootstrap.js"></script>
    <script src="${ctx}/static/js/excanvas.js"></script>
</body>
</html>
