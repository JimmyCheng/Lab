<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>PerformanceLab Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Jimmy Cheng">
<link rel="shortcut icon" href="${ctx}/static/img/favicon.ico" type="image/x-icon">

<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>

<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/css/bootstrap-responsive.min.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/css/performance.css" type="text/css"> 
<link rel="stylesheet" href="${ctx}/static/css/charisma-app.css" type="text/css">
</head>

<body >
   <%@include file="../inc/navbar-account.jsp" %>   
    
   <!--  login form -->
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-12 center login-header">
					<h2>Welcome to PerformanceLab</h2>
				</div>
				<!--/span-->
			</div>
			<!--/row-->

			<div class="row">
				<div class="well col-md-5 center login-box">
					<div class="alert alert-info">Please login with your Username and Password.<br>This is a demo. <br>Please use admim/admin as administrator. <br> Please use user/user as guest.</div>
					<form class="form-horizontal" action="${ctx}/login" method="post">
						<fieldset>
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span> 
								<input type="text" id="username" name="username" value="${username}" class="form-control required" placeholder="Username">
							</div>
							<div class="clearfix"></div>
							<br>

							<div class="input-group input-group-lg">
								<span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span> 
								<input type="password" id="password" name="password" class="form-control required" placeholder="Password">
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend">
								<label class="remember" for="remember">
								<input type="checkbox" id="remember"> Remember me</label>
							</div>
							<div class="clearfix"></div>

							<p class="center col-md-5">
								<button type="submit" class="btn btn-primary">Login</button>
							</p>
						</fieldset>
					</form>
				</div>
				<!--/span-->
			</div>
			<!--/row-->
		</div>
		<!--/fluid-row-->
	</div>
	<!--/.fluid-container-->

	<!-- footer -->
	<%@include file="../inc/footer.jsp" %>  

	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${ctx}/static/js/jquery.js"></script>
	<script src="${ctx}/static/js/bootstrap.js"></script>
	<script src="${ctx}/static/js/excanvas.js"></script>
</body>
</html>
