var User, random;

User = rootRequire('db/models/user');

random = rootRequire('helpers/random');

module.exports = function(socket, data) {
  var name, sessionKey;
  logger.debug('user.create event emitted');
  name = data.name;
  sessionKey = random();
  return User.create({
    name: name,
    sessionKey: sessionKey
  }, function(err, user) {
    return socket.send({
      'success': 1,
      'sessionKey': sessionKey
    });
  });
};
