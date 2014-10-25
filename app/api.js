var User;

User = rootRequire('routes/user');

module.exports = function(socket) {
  return socket.on('user.create', function(data) {
    return User.create(socket, data);
  });
};
