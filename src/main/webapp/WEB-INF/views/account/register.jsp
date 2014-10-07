<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>PeformanceLab Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Jimmy Cheng">
<link rel="shortcut icon" href="${ctx}/static/img/favicon.ico" type="image/x-icon">"">

<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>

<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/css/bootstrap-responsive.min.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/css/performance.css" type="text/css"> 
<link rel="stylesheet" href="${ctx}/static/css/charisma-app.css" type="text/css">

<script>
		$(document).ready(function() {
			//focus on the first input
			$("#loginName").focus();
			//validate fucntion for the inputForm
			$("#inputForm").validate({
				rules: {
					loginName: {
						remote: "${ctx}/register/checkLoginName"
					}
				},
				messages: {
					loginName: {
						remote: "User name already exists."
					}
				}
			});
		});
</script>
</head>

<body >
   <%@include file="../inc/navbar-account.jsp" %>   

   <!--  register form -->
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-12 center login-header">
					<h2>Register for Management</h2>
				</div>
				<!--/span-->
			</div>
			<!--/row-->

			<div class="row">
				<div class="well col-md-5 center login-box">
					<div class="alert alert-info">Please login with your Username
						and Password.</div>
					<form class="form-horizontal" action="${ctx}/register"  method="post">
						<fieldset>		
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user green"></i></span> 
								<input type="text" id="loginName" name="loginName" class="form-control required" placeholder="Pick a login name" minlength="3"/>
							</div>
							<div class="clearfix"></div>
							<br>
							
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user green"></i></span> 
								<input type="text" id="name" name="name" class="form-control required" placeholder="Pick a user name" >
							</div>
							<div class="clearfix"></div>
							<br>							

							<div class="input-group input-group-lg">
								<span class="input-group-addon"><i class="glyphicon glyphicon-lock green"></i></span> 
								<input type="password" id="plainPassword" name="plainPassword" class="form-control required" placeholder="Password" />
							</div>
							<div class="clearfix"></div>
							<br>

							<div class="input-group input-group-lg">
								<span class="input-group-addon"><i class="glyphicon glyphicon-lock green"></i></span> 
								<input type="password" id="confirmPassword" name="confirmPassword" class="form-control required" placeholder="Password" equalTo="#plainPassword"/>
							</div>
							<div class="clearfix"></div>
							<br>
							
							<div class="clearfix"></div>

							<p class="center col-md-5">
								<button type="submit" class="btn btn-primary">Register</button>
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
