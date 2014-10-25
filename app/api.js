var User;

User = rootRequire('routes/user');

module.exports = function(socket) {
  socket.on('user.create', function(data, cb) {
    return User.create(socket, data, cb);
  });
  return socket.on('user.tags.add', function(data, cb) {
    return User.addTags(socket, data, cb);
  });
};
