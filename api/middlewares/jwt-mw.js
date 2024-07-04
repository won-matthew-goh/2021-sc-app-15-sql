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

const jwt = require('jsonwebtoken');
const createError = require('http-errors');
const { pool } = require('../modules/mysql-init');
const { findApiUser } = require('../models/auth');

const createCookie = (domain, apikey, res) => {
  const token = jwt.sign({ domain, apikey }, process.env.JWT_SALT, { expiresIn: Number(process.env.JWT_EXPIRES) });
  res.cookie('token', token, { expires: new Date(Date.now() + Number(process.env.JWT_EXPIRES)) });
};

const isApiUser = async (req, res, next) => {
  const errMsg = 'Authorization Fail';
  try {
    console.log(req.headers);
    const domain = req.headers.origin || req.protocol + '://' + req.headers.host;
    const apikey = req.query.apikey;

    if (req.cookies.token) {
      const token = jwt.verify(req.cookies.token, process.env.JWT_SALT);
      if (domain === token.domain && apikey === token.apikey) {
        createCookie(domain, apikey, res);
        next();
      } else {
        next(createError(401, errMsg));
      }
    } else if (domain && apikey) {
      const { success } = await findApiUser(domain, apikey);
      if (success) {
        createCookie(domain, apikey, res);
        next();
      } else {
        next(createError(401, errMsg));
      }
    } else {
      next(createError(401, errMsg));
    }
  } catch (err) {
    next(createError(err));
  }
};

module.exports = { isApiUser };

// const jwt = require('jsonwebtoken');
// const createError = require('http-errors');
// const { pool } = require('../modules/mysql-init');
// const { findApiUser } = require('../models/auth');

// // 쿠키 생성 함수
// const createCookie = (domain, apikey, res) => {
//   // JWT 토큰 생성
//   const token = jwt.sign({ domain, apikey }, process.env.JWT_SALT, { expiresIn: Number(process.env.JWT_EXPIRES) });
//   // 쿠키에 토큰 저장
//   res.cookie('token', token, { expires: new Date(Date.now() + Number(process.env.JWT_EXPIRES)) });
// };

// // API 유저 검증 미들웨어
// const isApiUser = async (req, res, next) => {
//   const errMsg = 'Authorization Fail';
//   try {
//     console.log(req.headers);
//     // 요청 도메인 설정
//     const domain = req.headers.origin || req.protocol + '://' + req.headers.host;
//     // 헤더에서 apikey 가져오기
//     const apikey = req.headers['x-api-key'];

//     if (req.cookies.token) {
//       // 쿠키에서 토큰 검증
//       const token = jwt.verify(req.cookies.token, process.env.JWT_SALT);
//       // 도메인과 apikey 검증
//       if (domain === token.domain && apikey === token.apikey) {
//         createCookie(domain, apikey, res); // 쿠키 갱신
//         next(); // 다음 미들웨어로 이동
//       } else {
//         next(createError(401, errMsg)); // 인증 실패
//       }
//     } else if (domain && apikey) {
//       // DB에서 유저 정보 확인
//       const { success } = await findApiUser(domain, apikey);
//       if (success) {
//         createCookie(domain, apikey, res); // 쿠키 생성
//         next(); // 다음 미들웨어로 이동
//       } else {
//         next(createError(401, errMsg)); // 인증 실패
//       }
//     } else {
//       next(createError(401, errMsg)); // 인증 실패
//     }
//   } catch (err) {
//     next(createError(err)); // 에러 처리
//   }
// };

// module.exports = { isApiUser };
