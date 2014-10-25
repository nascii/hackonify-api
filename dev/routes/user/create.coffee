User = rootRequire 'db/models/user'
random = rootRequire 'helpers/random'

module.exports = (socket, data) ->
  
  logger.debug 'user.create event emitted'

  name = data.name
  sessionKey = random()

  User.create
    name: name
    sessionKey: sessionKey
  , (err, user) ->

    socket.send 
      'success': 1
      'sessionKey': sessionKey
  
  

  