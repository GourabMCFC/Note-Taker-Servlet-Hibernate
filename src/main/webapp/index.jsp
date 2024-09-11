<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>${fn:toUpperCase("Note Taker - Home Page")}</title>
<%@ include file="includes.jsp"%>
</head>

<body>
	<header>
		<!-- place navbar here -->
		<%@ include file="header.jsp"%>
	</header>
	<main>
		<div class="container">
			<div class="row justify-content-center align-items-center g-2">
				<div class="col-12">
					<div class="card text-white card-bg">
						<img class="card-img-top home-img mx-auto"
							src="images/sticky-notes.png" alt="Start Taking Your Notes" />
						<div class="card-body">
							<h4
								class="card-title text-center text-black text-uppercase fs-1 fw-semibold">
								Start Taking Your Notes</h4>
							<p class="card-text text-center">
								<a class="btn btn-danger fw-bold fs-2 px-4 text-uppercase"
									href="create.jsp" role="button">Start</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>
