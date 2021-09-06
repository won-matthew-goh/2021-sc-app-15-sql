document.querySelectorAll('.book-tbl tbody tr').forEach(function(v, i) {
	v.addEventListener('click', function(e) {
		this.dataset['idx']
	})
})