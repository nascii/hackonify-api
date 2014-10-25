crypto = require "crypto"

module.exports = (howMany, chars) ->
  chars = chars or "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789"
  rnd = crypto.randomBytes(howMany)
  value = new Array(howMany)
  len = chars.length
  i = 0

  while i < howMany
    value[i] = chars[rnd[i] % len]
    i++
  value.join ""