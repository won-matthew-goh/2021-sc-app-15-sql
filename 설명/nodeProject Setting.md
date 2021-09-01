# node(express)프로젝트 세팅
## 본인 컴퓨터에서 처음 한 번만 설치할 것
```bash
# npm 버전업
npm i -g npm

# nodemon or supervisor 설치
npm i -g nodemon
npm i -g supervisor
```

## 프로젝트 시작
1. github를 연동한다.
```bash
# git init
git init

# git remote connect
git remote add origin https://github.com/uon/2021-sc-app-14-ejs.git
```
2. .gitignore를 생성한다.
  1. vscode에서 f1 > add gitignore > node
  2. vscode에서 f1 > add gitignore > visual studio code > append

3. 폴더를 생성한다.
   1. public  : Front-end의 정적 페이지 
   2. modules : util/database연동/Mongo/sequelize ... 내가 만든 모듈들
   3. views   : ejs(pug) 파일들

4. root에서 아래와 같이 app.js를 생성한다.
```js
/*************** global init ****************/
const port = 3000
const express = require('express')
const app = express()


/*************** view engine ***************/
app.set('view engine', 'ejs')
app.set('views', './views')


/*************** middleware ****************/
// application/json
app.use(express.json())

// application/x-www-urlencoded
app.use(express.urlencoded({ extended: false }))


/*************** router init ****************/
app.use('/', express.static('./public'))
app.get('/', (req, res, next) => {})


/*************** server init ****************/
app.listen(port, () => { console.log('http://127.0.0.1:'+port) })
```