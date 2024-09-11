window.addEventListener("load", () => {
	const dataElements = document.querySelector("#dataElements");
	const submitBtn = document.querySelector("button[type='submit']");
	const loader = document.querySelector("#loader");
	const form = document.querySelector("form");
	const submitLink = dataElements.getAttribute("data-submitLink");
	submitBtn.addEventListener("click", (event) => {
		event.preventDefault();
		postRequest(submitLink, new FormData(form), submitBtn, loader);
	});
});

function postRequest(link, data, submitBtn, loader) {
	toggleLoader(submitBtn, loader);
	const xhr = new XMLHttpRequest();
	xhr.addEventListener("load", () => {
		const { success } = JSON.parse(xhr.responseText);
		if (success) {
			Swal.fire({
				title: "Created!",
				text: "Note Created Successfully!",
				icon: "success"
			}).then(() => {
				toggleLoader(submitBtn, loader);
				window.location = "index.jsp"
			});
		} else {
			Swal.fire({
				title: "Oops...",
				text: "Something went wrong!",
				icon: "error",
			}).then(() => toggleLoader(submitBtn, loader));
		}
	});
	xhr.addEventListener("error", () => {
		Swal.fire({
			title: "Oops...",
			text: "Network Error!",
			icon: "error",
		}).then(() => toggleLoader(submitBtn, loader));
	});
	xhr.open("POST", link);
	xhr.send(data);
}

function toggleLoader(submitBtn, loader) {
	submitBtn.classList.toggle("d-none");
	loader.classList.toggle("d-none");
}