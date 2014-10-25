module.exports = (data, callback) ->
  callback = makeRunnable callback
  return callback(false)