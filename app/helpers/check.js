var checkData, checkEmail, checkPassword, checkStringSize, checkUserType;

checkEmail = function(email) {
  var reg;
  reg = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return reg.test(email);
};

checkPassword = function(password) {
  var reg;
  reg = /.{8,}/;
  return reg.test(password);
};

checkUserType = function(userType) {
  var reg;
  reg = /company|solver/;
  return reg.test(userType);
};

checkStringSize = function(str, size) {
  return str.length >= size;
};

checkData = function(data) {
  return typeof data === "object";
};

module.exports = {
  email: checkEmail,
  password: checkPassword,
  userType: checkUserType,
  stringSize: checkStringSize,
  data: checkData
};
