module.exports = {
	...require('./create-book'),
	...require('./find-book'),
	...require('./delete-book'),
	...require('./update-book')
}