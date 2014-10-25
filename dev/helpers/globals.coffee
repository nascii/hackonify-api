global.checkExistance = ->
  for i of arguments
    return false if typeof arguments[i] is "undefined"
  return true

global.makeRunnable = (f) ->
  if typeof f is "function"
    -> f.apply this, arguments
  else
    ->