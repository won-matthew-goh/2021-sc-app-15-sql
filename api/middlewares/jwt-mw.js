/**
 * 1. 요청이 발생
 *  가. req.cookies 의 존재 여부 확인
 *    - !존재
 *      = DB에서 origin과 apikey의 일치 여부 확인
 *        +  일치
 *          . token을 발행(jwt.sign()) - data: { userid, apikey, origin }
 *          . res.cookie에 token을 저장
 *          . next()
 *        + !일치
 *          . next(createError(401, 'Authorization Fail'))
 *    -  존재
 *      = req.cookies 에서 Token을 확인하고 `jwt.verify(token, salt) : 내용 리턴`
 *      = 리턴된 내용에서 전달 받은 origin과 apikey의 일치 여부 확인
 *        +  일치
 *          . next()
 *        + !일치 
 *          . next(createError(401, 'Authorization Fail'))
 * 
*/

const jwt = require('jsonwebtoken')

const isApiUser = (req, res, next) => {
  try {
    console.log(req.headers)
    console.log(req.query.apikey)
    next()
  }
  catch(err) {

  }
}

module.exports = { isApiUser }