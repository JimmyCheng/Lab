<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%response.setStatus(200);%>

<!DOCTYPE html>
<html>
<head>
	<title>404 - Page doesn't exist</title>
</head>

<body>
	<h2>404 - Page doesn't exist.</h2>
	<p><a href="<c:url value="/"/>">Return to Home</a></p>
</body>
</html>