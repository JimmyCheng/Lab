    <!-- for the dashboard header -->
    <nav class="navbar navbar-default" role="navigation">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">       
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
            </button>        
            <a class="nav-brand" href="${ctx}/"><img alt="CodeRadar" src="${ctx}/static/img/logo_lab.png"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav top-menu">
			  <li class="dropdown">
			    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-star"></i>${defaultPlatform} Result<span class="caret"></span></a>
			    <ul class="dropdown-menu" role="menu">
			        <c:forEach items="${platforms}" var="platform">
			        <c:choose> 
			          <c:when test="${platform.status eq 'active'}">   
			             <li><a href="${ctx}/${platform.name}">${platform.name} result</a></li>
			          </c:when>
			          <c:otherwise>
			             <li class="disabled"><a href="#">${platform.name} result</a></li>
			                </c:otherwise>
			              </c:choose>   
			         </c:forEach>                
			     </ul>
			   </li>
			</ul>  
                 
			<shiro:guest> 
			<form class="navbar-form navbar-right" role="search" action="${ctx}/login">
			    <button type="submit" class="btn btn-primary">Login</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
			  <li><a href="${ctx}/register">Register</a></li>
			</ul>
			</shiro:guest>       
			
			<shiro:user>     
			<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i><shiro:principal/><span class="caret"></span></a>
			  <ul class="dropdown-menu" role="menu">
                <shiro:hasRole name="admin">        
			    <li><a href="${ctx}/admin/platform">Management</a></li>
                </shiro:hasRole>
		
                <li><a href="#">Edit Profile</a></li>
			    <li class="divider"></li>
			    <li><a href="${ctx}/logout">Logout</a></li>
			  </ul>
			</li>
			</ul>
			</shiro:user> 
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>