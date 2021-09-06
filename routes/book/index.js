const path = require('path')
const express = require('express')
const router = express.Router()
const { error } = require('../../modules/util')

const formRouter = require('./form-router')
const createRouter = require('./create-router')
const listRouter = require('./list-router')
const viewRouter = require('./view-router')
const deleteRouter = require('./delete-router')
const updateRouter = require('./update-router')

router.post('/', createRouter)												// POST: 저장
router.put('/', updateRouter)													// UPDATE: 수정
router.delete('/', deleteRouter)											// DELETE: 삭제
router.use('/form', formRouter)												// HTML: 글작성(수정)페이지
router.use('/view', viewRouter)												// HTML/GET: 상세페이지
router.use('/', listRouter)														// HTML/GET: 리스트페이지

module.exports = router

/* 
GET  		/book,/book/list		페이지리스트 LIST - 1page
GET  		/book/list/:page		페이지리스트 LIST - 해당페이지
GET  		/book/view/1				상세리스트 VIEW
GET  		/book/update/1			상세리스트 UPDATE
POST 		/book								저장 save
PUT  		/book								업데이트 update
DELETE 	/book								삭제 delete
*/