var crypto;

crypto = require("crypto");

module.exports = function(howMany, chars) {
  var i, len, rnd, value;
  chars = chars || "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
  rnd = crypto.randomBytes(howMany);
  value = new Array(howMany);
  len = chars.length;
  i = 0;
  while (i < howMany) {
    value[i] = chars[rnd[i] % len];
    i++;
  }
  return value.join("");
};
