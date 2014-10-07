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
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="glyphicon glyphicon-home"></i> Version Management
                        </div>
                        <div class="panel-body">
                            <div class="well well-sm">
                                The performance result is based on different Version. <a href="${ctx}/admin/version/create"
                                    class="btn btn-info btn-xs pull-right "><i class="glyphicon glyphicon-plus"></i>
                                    Create New</a>
                            </div>

                            <form class="form-horizontal" role="form" method="POST" action="${ctx}/admin/version/${action}">
                                <input type="hidden" name="id" value="${version.id}" />
                                
                                <div class="form-group">
                                    <label for="inputVersion" class="col-sm-4 control-label">Version</label>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control input-sm" name="name" value="${version.name}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputStatus" class="col-sm-4 control-label">Status</label>
                                    <div class="col-sm-6">
                                        <select class="form-control input-sm" name="status">
                                            <option <c:if test="${version.status eq 'active'}">selected</c:if>>active</option>
                                            <option <c:if test="${version.status eq 'inactive'}">selected</c:if>>inactive</option>
                                            <option <c:if test="${version.status eq 'pending'}">selected</c:if>>pending</option>
                                            <option <c:if test="${version.status eq 'obsolete'}">selected</c:if>>obsolete</option>
                                        </select>
                                    </div>
                                </div>

                              <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-3">
                                  <button type="submit" class="btn btn-primary btn-sm pull-right"><i class="glyphicon glyphicon-ok"></i> Submit</button>
                                </div>  
                                <div class=" col-sm-3">
                                  <button type="button" class="btn btn-default btn-sm pull-right" onclick="history.back()"><i class="glyphicon glyphicon-remove"></i> Cancel
                                  </button>
                                </div>
                              </div>
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
