const { pool } = require('../modules/mysql-init')
const { alert } = require('../modules/util')

const isUser = (req, res, next) => {
	if(req.session.user) next()
	else res.sendalert('로그인 후 이용하세요.')
}

const isGuest = (req, res, next) => {
	if(req.session.user) res.sendalert('회원은 이용하실 수 없습니다.')
	else next()
}

const isMyBook = (name, mode) => {
	return async (req, res, next) => {
		let sql
		const { idx, _method } = eval(`req.${name}`)
		const fidx = req.session.user.idx
		if(mode === 'U' && _method !== 'PUT') next()
		else {
			sql = " SELECT fidx FROM books WHERE idx=? AND fidx=? "
			const [r] = await pool.execute(sql, [idx, fidx])
			if(r.length) next()
			else res.send(alert('정상적인 접근이 아닙니다. -.-'))
		}
	}
}

module.exports = { isUser, isGuest, isMyBook }