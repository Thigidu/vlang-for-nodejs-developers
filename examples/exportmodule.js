const crypto = require('crypto')
module.exports = {
    get_random_num: () => Math.floor(Math.random() * 1000),
    get_random_uuid: () => crypto.randomUUID()
}