User = rootRequire 'routes/user'
# Session = rootRequire 'routes/session'
# Company = rootRequire 'routes/company'
# Solver = rootRequire 'routes/solver'
# Challenge = rootRequire 'routes/challenge'
# Solution = rootRequire 'routes/solution'
# File = rootRequire 'routes/file'

module.exports = (socket) ->  

  # users
  socket.on 'user.create', (data, cb) -> User.create(socket, data, cb)
  socket.on 'user.tags.add', (data, cb) -> User.addTags(socket, data, cb)

  
  
