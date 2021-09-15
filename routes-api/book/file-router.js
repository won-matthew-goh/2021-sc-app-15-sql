const path = require('path')
const express = require('express')
const router = express.Router()
const { error } = require('../../modules/util')
const { pool } = require('../../modules/mysql-init')

router.delete('/:id', async (req, res, next) => {
	try {
		sql = "UPDATE files SET status='0' WHERE idx = " + req.params.idx
		await pool.execute(sql)
	
		sql = "SELECT savename FROM files WHERE idx = " + req.params.idx
		const [rs] = await pool.execute(sql)
	
		for(let { savename } of rs) {
			await moveFile(savename)
		}
		res.status(200).json({ code: 200, result: 'success' })
	}
	catch(err) {
		next(err)
	}
})


module.exports = router