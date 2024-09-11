window.addEventListener("load", () => {
	const dataElements = document.querySelector("#dataElements");
	const submitBtn = document.querySelector("button[type='submit']");
	const form = document.querySelector("form");
	const submitLink = dataElements.getAttribute("data-submitLink");
	submitBtn.addEventListener("click", (event) => {
		event.preventDefault();
		postRequest(submitLink, new FormData(form));
	});

});

function postRequest(link, data) {
	const xhr = new XMLHttpRequest();
	xhr.addEventListener("load", () => {
		console.log(xhr.responseText);
	});
	xhr.addEventListener("error", () => {
		console.log("error");
	});
	xhr.open("POST", link);
	xhr.send(data);
}