<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>PeformanceLab</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Jimmy Cheng">
<link rel="shortcut icon" href="${ctx}/static/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${ctx}/static/css/blog.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css" type="text/css">
</head>

<body >
    <%@include file="inc/navbar-main.jsp" %>    
    <div class="container">
      <br>
      <div class="row">
        <div class="col-sm-12 blog-main ">
          <div class="blog-post">
            <h2 class="blog-post-title">About Me</h2>
            <p class="blog-post-meta">September 6, 2014 by <a href="mailto:chengnianhua@gmail.com">Jimmy Cheng</a></p>
            <p>I am a passionate and disciplined software engineer. I worked in world top companies for 10 years. I have experience on large scale software development e.g. Mobile Switch Center (MSC), Base Transceiver Station (BTS), Multi Service Delivery Platform (MSDP). I am proud of what I have done.</p>            
            <p>I have created two websites: <a href="www.perflab.org">www.perflab.org</a>, <a href="www.coderadar.org">www.coderadar.org</a>. The ideas of these two websites are best practice I learned in Ericsson. They all base on opensource platform and free software, like Jenkins, Jetty, MySQL, Solr, etc. These two websites aims to improve the efficiency of Continuous Integration. I implemented all the code from backend to frontend. </p>
            <p><strong>I am currently in Australia, seeking for a Senior Java Development position.</strong></p>                       
            <img src="${ctx}/static/img/jimmy.jpg" alt="This is Jimmy." height="483" width="644" />
            <br>
            <p>For more about myself, please find me in social.</p>
            <p>LinkedIn:<a href="http://au.linkedin.com/in/jimmych/">http://au.linkedin.com/in/jimmych/</a>
            <p>Github:<a href="http://github.com/JimmyCheng">http://github.com/JimmyCheng</a>
            <br>
           </div> 
        </div><!-- /.blog-main -->
      </div><!-- /.row -->
    </div><!-- /.container -->

    <!-- footer -->
    <%@include file="inc/footer.jsp" %> 

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/static/js/jquery.js"></script>
    <script src="${ctx}/static/js/bootstrap.js"></script>
    <script src="${ctx}/static/js/excanvas.js"></script>
</body>
</html>
