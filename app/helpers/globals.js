global.checkExistance = function() {
  var i;
  for (i in arguments) {
    if (typeof arguments[i] === "undefined") {
      return false;
    }
  }
  return true;
};

global.makeRunnable = function(f) {
  if (typeof f === "function") {
    return function() {
      return f.apply(this, arguments);
    };
  } else {
    return function() {};
  }
};
