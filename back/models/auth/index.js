// findUser, verifyData, createUser, updateUser, deleteUser

module.exports = { 
	...require('./create-user'),
	...require('./find-user'),
	...require('./update-user'),
	...require('./update-key'),
	...require('./delete-users'),
}