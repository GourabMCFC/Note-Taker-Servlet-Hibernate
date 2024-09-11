window.addEventListener("load", () => {
	const forms = document.querySelectorAll("form");
	forms.forEach(form => {
		const btn = form.lastElementChild;
		btn.addEventListener("click", (event) => {
			event.preventDefault();
			Swal.fire({
				title: "Are you sure?",
				text: "You won't be able to revert this!",
				icon: "warning",
				showCancelButton: true,
				confirmButtonColor: "#3085d6",
				cancelButtonColor: "#d33",
				confirmButtonText: "Yes, delete it!"
			}).then((result) => {
				if (result.isConfirmed) {
					const xhr = new XMLHttpRequest();
					xhr.addEventListener("load", () => {
						const { success } = JSON.parse(xhr.responseText);
						if (success) {
							Swal.fire({
								title: "Deleted!",
								text: "Post has been deleted.",
								icon: "success"
							}).then(() => location.reload());
						} else {
							Swal.fire({
								title: "Oops...",
								text: "Something went wrong!",
								icon: "error",
							});
						}
					});
					xhr.addEventListener("error", () => {
						Swal.fire({
							title: "Oops...",
							text: "Network Error!",
							icon: "error",
						});
					});
					xhr.open("POST", "DeletePost");
					xhr.send(new FormData(form));
				}
			});
		});
	});
});