<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>NOTETAKER - Home Page</title>
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
				<div class="col-12 col-lg-4">
					<div
						class="card text-start p-3 card-bg border border-2 rounded border-black">
						<img class="card-img-top img-fluid card-img"
							src="images/sticky-notes.png" alt="Title" />
						<div class="card-body">
							<h4
								class="card-title fw-bold fs-2 text-uppercase text-decoration-underline">
								Title</h4>
							<p class="card-text fs-4 fw-semibold">Body</p>
							<a id="edit"
								class="btn btn-success fw-bold fs-6 text-uppercase px-3"
								href="#" role="button">Edit</a>
							<form action="delete" method="post" class="d-inline">
								<button type="button"
									class="btn btn-danger fw-bold fs-6 text-uppercase px-3 ms-2">
									Delete</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>
