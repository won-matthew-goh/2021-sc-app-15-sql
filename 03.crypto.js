/** 
* ! 암호화(encrypt) 평문 -> 암호
* ! 복호화(decrypt) 암호 -> 평문
* ! crypto(단방향 암호화) : 한 번 암호화 시키면 복호화를 못시킴
* ! cipher(양방향 암호화) : 암호화 -> 복호화
* md5, sha1, sha256, sha512 ...
* rainbow table
*/

const crypto = require('crypto')
const bcrypt = require('bcrypt')

const salt = 'fjtldk98d2'

let pass = '123456'
let pass512 = crypto.createHash('sha512').update(pass + salt).digest('base64')

let pass2 = '123456'
let pass512Re = crypto.createHash('sha512').update(pass2 + salt).digest('base64')

if(pass512 === pass512Re) console.log('로그인 되었습니다.')
else console.log('패스워드가 틀렸습니다.')


const genPass = async pass => { // 암호화
	return await bcrypt.hash(pass + salt, 5)
}

const comparePass = async (pass, hash) => { // 검증
	return await bcrypt.compare(pass + salt, hash)
	console.log(compare) // 일치: true, 불일치: false
}

const passVerify = async () => {
	let pass = '123456'
	let hash = await genPass(pass)
	let compare = await comparePass('123456', hash)
	console.log(compare)
}

passVerify();


const passVerify2 = async () => {
	let pass = '123456'
	let salt = 'jasdfesaf'
	let hash = await bcrypt.hash(pass + salt, 9)
	let compare = await bcrypt.compare(pass + salt, hash)
	console.log("verify2: ", compare)
}

// passVerify2()

// 암복호화 예제
let encrypt = cipher.AES.encrypt('아버지를 아버지라...', salt).toString()
console.log("encrypt", encrypt)

let decrypt = cipher.AES.decrypt(encrypt, salt)
console.log("decrypt", decrypt)