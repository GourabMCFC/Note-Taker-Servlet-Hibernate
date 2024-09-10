<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>NOTETAKER - Add Note Page</title>
<%@ include file="includes.jsp"%>
</head>

<body>
	<header>
		<!-- place navbar here -->
		<%@ include file="header.jsp"%>
	</header>
	<main>
		<div
			class="container fs-3 fw-bold text-uppercase border border-2 border-black rounded p-4 mt-5 bg-opacity-10">
			<form class="row justify-content-center align-items-center g-2 gap-2"
				action="CreateNote" method="post">
				<div class="col-12 fs-2 text-center text-decoration-underline">
					create note</div>
				<div class="col-12">
					<div class="mb-3">
						<label for="title" class="form-label">Title<sup
							class="text-danger">*</sup></label> <input required="required"
							type="text" class="form-control fs-4 py-2" name="title"
							id="title" placeholder="Enter Note Title" />
					</div>
				</div>
				<div class="col-12">
					<div class="mb-3">
						<label for="description" class="form-label">Description<sup
							class="text-danger">*</sup></label>
						<textarea required="required" class="form-control fs-4 py-2"
							name="description" id="description"
							placeholder="Enter Note Description"></textarea>
					</div>
				</div>
				<div class="col-12 text-center">
					<button type="submit" class="btn btn-dark fs-3 text-uppercase px-4">
						Add Note</button>
				</div>
			</form>
		</div>
	</main>
</body>
</html>
