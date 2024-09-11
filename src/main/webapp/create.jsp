<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>${fn:toUpperCase("Note Taker - Add Page")}</title>
<%@ include file="includes.jsp"%>
</head>

<body>
	<header>
		<!-- place navbar here -->
		<%@ include file="header.jsp"%>
	</header>
	<main>
		<c:import url="form.jsp">
			<c:param name="formTitle" value="Create Note"></c:param>
			<c:param name="submitBtn" value="Add"></c:param>
			<c:param name="submitLink" value="CreateNote"></c:param>
		</c:import>
	</main>
</body>
</html>