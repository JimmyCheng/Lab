<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Jimmy Cheng">
<link rel="shortcut icon" href="${ctx}/static/img/favicon.ico" type="image/x-icon">

<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>

<link rel="stylesheet" href="${ctx}/static/css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/css/bootstrap-responsive.min.css" type="text/css">
<link rel="stylesheet" href="${ctx}/static/css/charisma-app.css" type="text/css">
</head>

<body>
    <%@include file="../inc/navbar-admin.jsp"%>
    <div class="container fill">
        <%@include file="sidebar-nav.jsp"%>

        <div id="content" class="col-lg-9 col-sm-9">
            <div class="row">
                <div class="col-md-12">
                
                    <!-- panel for default platform setting -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="glyphicon glyphicon-home"></i> Default Setting
                        </div>
                        <div class="panel-body">
                            <div class="well well-sm">
                                The default view in dashboard is from default platform and default version. 
                            </div>
                            
                            <c:if test="${not empty message}">
                               <div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
                            </c:if>

                            <form class="form-horizontal" role="form" method="POST" action="${ctx}/admin/setting">                                
        					  <div class="form-group">
        					    <label for="inputPlatform" class="col-sm-4 control-label"> Default Platform</label>
        					    <div class="controls col-sm-6">
                                  <select class="form-control input-sm" name="platform">
                                    <c:forEach items="${platforms}" var="platform">
                                      <option <c:if test="${platform.name eq defaultPlatform.name}">selected </c:if>>${platform.name}</option>
                                    </c:forEach>
                                  </select>
        					    </div>
        					  </div>
        					  
                              <div class="form-group">
                                <label for="inputScenario" class="col-sm-4 control-label">Default Version</label>
                                  <div class="controls col-sm-6">
                                    <select class="form-control input-sm" name="version">
                                      <c:forEach items="${versions}" var="version">
                                        <option <c:if test="${version.name eq defaultVersion.name}">selected </c:if>>${version.name}</option>
                                      </c:forEach>
                                    </select>
                                  </div>  
                              </div>
                              
                              <div class="form-group">
                                <label for="inputScenario" class="col-sm-4 control-label">Default Theme</label>
                                  <div class="controls col-sm-6">
                                    <select class="form-control input-sm" name="theme">
                                      <c:forEach items="${themes}" var="theme">
                                        <option <c:if test="${theme eq defaultTheme}">selected </c:if>>${theme}</option>
                                      </c:forEach>
                                    </select>
                                  </div>  
                              </div>                              
                              
                              <shiro:hasRole name="admin"> 
                              <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-3">
                                  <button type="submit" class="btn btn-primary btn-sm pull-right"><i class="glyphicon glyphicon-ok"></i> Submit</button>
                                </div>  
                                <div class=" col-sm-3">
                                  <button type="button" class="btn btn-default btn-sm pull-right" onclick="history.back()"><i class="glyphicon glyphicon-remove"></i> Cancel
                                  </button>
                                </div>
                              </div>
                              </shiro:hasRole>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--/row-->
        </div>
    </div>
    <!--/.fluid-container-->

    <!-- footer -->
    <%@include file="../inc/footer.jsp"%>

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/static/js/jquery.js"></script>
    <script src="${ctx}/static/js/bootstrap.js"></script>
    <script src="${ctx}/static/js/excanvas.js"></script>
</body>
</html>
