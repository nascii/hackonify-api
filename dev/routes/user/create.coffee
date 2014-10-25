User = rootRequire 'db/models/user'
random = rootRequire 'helpers/random'

module.exports = (socket, data, cb) ->

  callback = makeRunnable(cb)
  
  logger.debug 'user.create event emitted'

  name = data.name
  sessionKey = random(32)

  User.create
    name: name
    sessionKey: sessionKey
  , (err, user) ->

    callback
      'success': 1
      'sessionKey': sessionKey
  
  

  