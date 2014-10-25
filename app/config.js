var log4js, path;

log4js = require("log4js");

path = require("path");

global.logger = log4js.getLogger();

global.shouldImprove = function() {
  var i;
  logger.warn("IMPROVEMENT NEEDED:");
  for (i in arguments) {
    logger.warn(arguments[i]);
  }
};

global.rootRequire = function(name) {
  return require(__dirname + "/" + name);
};

global.apiURL = "http://localhost:7001";

global.webURL = "http://localhost:3000";

global.rootDir = path.join(__dirname + "../../");

exports.addSendErrorMethod = function(req, res, next) {
  res.sendError = function(m) {
    logger.error(m);
    return this.send({
      "error": m
    });
  };
  return next();
};

exports.addSendSuccessMethod = function(req, res, next) {
  res.sendSuccess = function(d) {
    var data;
    data = {
      success: 1
    };
    if (typeof d !== 'undefined') {
      data['data'] = d;
    }
    return this.send(data);
  };
  return next();
};

exports.allowCrossDomain = function(req, res, next) {
  res.set({
    "Access-Control-Allow-Origin": '*',
    "Access-Control-Allow-Headers": 'Content-Type, X-Requested-With',
    "Access-Control-Allow-Methods": 'GET, POST'
  });
  return next();
};

exports.errorEscaping = function(err, req, res, next) {
  console.log("ERROR OCCURED!!");
  console.log(err);
  return res.send(500);
};
