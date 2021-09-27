module.exports = (req, res, next) => {
	console.log(req.session.user)
	res.locals.user = req.session.user || null
	next()
}