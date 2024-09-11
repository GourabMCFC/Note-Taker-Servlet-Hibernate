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
		toggleLoader(submitBtn, loader);
	});
	xhr.addEventListener("error", () => {
		toggleLoader(submitBtn, loader);
	});
	xhr.open("POST", link);
	xhr.send(data);
}

function toggleLoader(submitBtn, loader) {
	submitBtn.classList.toggle("d-none");
	loader.classList.toggle("d-none");
}