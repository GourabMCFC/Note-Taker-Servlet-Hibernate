<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div
	class="container fs-3 fw-bold text-uppercase border border-2 border-black rounded p-4 mt-4 bg-opacity-10">
	<form class="row justify-content-center align-items-center g-2 gap-2">
		<div class="col-12 fs-2 text-center text-decoration-underline">
			${param.formTitle}</div>
		<div class="col-12">
			<div class="mb-3">
				<label for="title" class="form-label">Title<sup
					class="text-danger">*</sup></label> <input required="required" type="text"
					class="form-control fs-4 py-2" name="title" id="title"
					placeholder="Enter Note Title" />
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
	<!-- Element To Store The Server Information Used in JS File -->
	<div id="dataElements" data-submitLink="${param.submitLink}"></div>
</div>
<script type="text/javascript" src="javascripts/ajax.js"></script>