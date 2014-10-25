module.exports = function(data, callback) {
  callback = makeRunnable(callback);
  return callback(false);
};
