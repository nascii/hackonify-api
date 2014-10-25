User = rootRequire 'routes/user'
# Session = rootRequire 'routes/session'
# Company = rootRequire 'routes/company'
# Solver = rootRequire 'routes/solver'
# Challenge = rootRequire 'routes/challenge'
# Solution = rootRequire 'routes/solution'
# File = rootRequire 'routes/file'

module.exports = (socket) ->  

  # users
  socket.on 'user.create', (data) -> User.create(socket, data)

  
  
