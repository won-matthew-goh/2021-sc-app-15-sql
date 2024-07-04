/************* global require *************/
require('dotenv').config();
const express = require('express');
const app = express();
const jwt = require('jsonwebtoken');
const helmet = require('helmet');
const cookieParser = require('cookie-parser');
const cors = require('cors');

/*************** server init **************/
require('./modules/server-init')(app, process.env.PORT);

/*************** static init **************/
app.use(helmet({ contentSecurityPolicy: false }));

/*************** middleware ***************/
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cors({ origin: true, credentials: true }));
app.use(cookieParser());

/*************** logger init **************/
// app.use(logger)

/*************** router init **************/
const bookRouter = require('./routes/book');

app.use('/book', bookRouter);

/**************** error init **************/
const _404Router = require('./routes/error/404-router');
const _500Router = require('./routes/error/500-router');

app.use(_404Router);
app.use(_500Router);

// /************* global require *************/
// // 환경 변수 설정을 위한 dotenv 모듈 로드
// require('dotenv').config();
// const express = require('express');
// const app = express();
// const jwt = require('jsonwebtoken');
// const helmet = require('helmet');
// const cookieParser = require('cookie-parser');
// const cors = require('cors');

// /*************** server init **************/
// // 서버 초기화 및 포트 설정
// require('./modules/server-init')(app, process.env.PORT);

// /*************** static init **************/
// // 보안 강화를 위한 helmet 모듈 설정 (특정 내용 보안 정책 비활성화)
// app.use(helmet({ contentSecurityPolicy: false }));

// /*************** middleware ***************/
// // JSON 및 URL 인코딩된 데이터 파싱
// app.use(express.json());
// app.use(express.urlencoded({ extended: false }));

// // CORS 설정
// const allowedOrigins = ['http://localhost:8081']; // 클라이언트 도메인 설정
// const corsOptions = {
//   origin: function (origin, callback) {
//     // 요청 도메인이 허용된 도메인인지 확인
//     if (!origin || allowedOrigins.indexOf(origin) !== -1) {
//       callback(null, true);
//     } else {
//       callback(new Error('Not allowed by CORS'));
//     }
//   },
//   credentials: true, // 쿠키 사용을 허용
// };
// app.use(cors(corsOptions)); // CORS 미들웨어 사용

// // 쿠키 파싱 미들웨어 사용
// app.use(cookieParser());

// /*************** logger init **************/
// // 로깅 미들웨어 (현재 비활성화 상태)
// // app.use(logger)

// /*************** router init **************/
// // 책 관련 라우터 설정
// const bookRouter = require('./routes/book');
// app.use('/book', bookRouter);

// /**************** error init **************/
// // 404 에러 처리 라우터
// const _404Router = require('./routes/error/404-router');
// // 500 에러 처리 라우터
// const _500Router = require('./routes/error/500-router');
// app.use(_404Router);
// app.use(_500Router);
