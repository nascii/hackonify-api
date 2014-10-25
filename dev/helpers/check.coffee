checkEmail = (email) ->
  reg = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
  reg.test email

checkPassword = (password) ->
  reg = /.{8,}/
  reg.test password

checkUserType = (userType) ->
  reg = /company|solver/
  reg.test userType

checkStringSize = (str, size) ->
  str.length >= size

checkData = (data) ->
  typeof data is "object"

module.exports = 
  email: checkEmail
  password: checkPassword
  userType: checkUserType
  stringSize: checkStringSize
  data: checkData