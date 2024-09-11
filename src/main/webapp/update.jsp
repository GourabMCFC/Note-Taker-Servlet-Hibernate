<%@page import="entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="utils.HibernateUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>${fn:toUpperCase("Note Taker - Update Page")}</title>
<%@ include file="includes.jsp"%>
</head>

<body>
	<header>
		<!-- place navbar here -->
		<%@ include file="header.jsp"%>
	</header>
	<main>
		<%
		Session hiberSession = HibernateUtil.getSessionFactory().openSession();
		Note note = hiberSession.get(Note.class, Integer.parseInt(request.getParameter("id")));
		hiberSession.close();
		request.setAttribute("note", note); // Set note as a request attribute
		%>
		<c:import url="form.jsp">
			<c:param name="formTitle" value="Update Note"></c:param>
			<c:param name="submitBtn" value="Update"></c:param>
			<c:param name="submitLink" value="UpdateNote"></c:param>
			<c:param name="note" value="${note}"></c:param>
		</c:import>
	</main>
</body>
</html>