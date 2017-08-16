<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory" %>
<%	
	//Set return code to 200, avoid the default error page.
	response.setStatus(200);
	//Record the log
	Logger logger = LoggerFactory.getLogger("500.jsp");
	logger.error(exception.getMessage(), exception);
%>

<!DOCTYPE html>
<html>
<head>
	<title>500 - Internal Error</title>
</head>

<body>
	<h2>500 - Internal Error.</h2>
</body>
</html>
