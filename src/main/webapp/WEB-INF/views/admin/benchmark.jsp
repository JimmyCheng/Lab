<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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

<body >
    <%@include file="../inc/navbar-admin.jsp" %>   
    
    <div class="container fill">
        <%@include file="sidebar-nav.jsp" %>
    
        <div id="content" class="col-lg-9 col-sm-9">
          <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="glyphicon glyphicon-asterisk"></i> Benchmark Management
                    </div>
                    <div class="panel-body">
                        <div class="well well-sm">
                          The Benchmark is the value for comparison, it is based on version and platform.
                          <shiro:hasRole name="admin"> 
                          <a href="${ctx}/admin/benchmark/create" class="btn btn-info btn-xs pull-right "><i class="glyphicon glyphicon-plus"></i> Create New</a>
                          </shiro:hasRole>
                        </div>
                        <c:if test="${not empty message}">
                           <c:choose>
                              <c:when  test="${not warning}">
                                 <div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
                              </c:when>
                              <c:otherwise>
                                 <div id="message" class="alert alert alert-danger"><button data-dismiss="alert" class="close">×</button>${message}</div>
                              </c:otherwise>
                           </c:choose>      
                        </c:if>
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>Scenario Name</th>
                                <th>Platform</th>
                                <th>Version</th>                                
                                <th>Result</th>
                                <shiro:hasRole name="admin"> 
                                <th>Action</th>
                                </shiro:hasRole>
                            </tr>
                            </thead>
                            <tbody>                            
                            <c:forEach items="${benchmarks}" var="benchmark">
                            <tr>
                               <shiro:hasRole name="admin">
                               <td class="center"><a href="${ctx}/admin/benchmark/edit/${benchmark.id}">${benchmark.scenario.name}</a></td>
                               </shiro:hasRole>
                               
                               <shiro:hasRole name="user">
                               <td class="center">${benchmark.scenario.name}</td>
                               </shiro:hasRole>
                           
                               <td class="center">${benchmark.platform.name}</td>
                               <td class="center">${benchmark.version.name}</td>
                               <td class="center">${benchmark.result}</td>
                               
                               <shiro:hasRole name="admin">
                               <td class="center">
                                    <a class="btn btn-danger btn-xs" href="${ctx}/admin/platform/delete/${benchmark.id}">
                                        <i class="glyphicon glyphicon-trash icon-white"></i>Delete
                                    </a>
                               </td>
                               </shiro:hasRole>
                            </tr>     
                            </c:forEach>                         
                            </tbody>
                         </table>
                     </div>
                  </div>
              </div>
           </div><!--/row-->    
        </div>

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
