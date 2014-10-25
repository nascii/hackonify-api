var User, random;

User = rootRequire('db/models/user');

random = rootRequire('helpers/random');

module.exports = function(socket, data, cb) {
  var callback, name, sessionKey;
  callback = makeRunnable(cb);
  logger.debug('user.create event emitted');
  name = data.name;
  sessionKey = random(32);
  return User.create({
    name: name,
    sessionKey: sessionKey
  }, function(err, user) {
    return callback({
      'success': 1,
      'sessionKey': sessionKey
    });
  });
};
