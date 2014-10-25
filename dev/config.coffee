log4js = require "log4js"
path = require "path"
global.logger = log4js.getLogger()

global.shouldImprove = ->
  logger.warn "IMPROVEMENT NEEDED:"
  for i of arguments
    logger.warn arguments[i]
  return

global.rootRequire = (name) -> 
  require __dirname + "/" + name

global.apiURL = "http://localhost:7001"
global.webURL = "http://localhost:3000"
global.rootDir = path.join __dirname + "../../"

exports.addSendErrorMethod = (req, res, next) ->
  res.sendError = (m) ->
    logger.error(m)
    @send {
      "error":m
    }
  next()

exports.addSendSuccessMethod = (req, res, next) ->
  res.sendSuccess = (d) ->
    data = {success:1}
    data['data'] = d if typeof d isnt 'undefined'
    @send(data)
  next()

exports.allowCrossDomain = (req, res, next) ->
  res.set {
    "Access-Control-Allow-Origin" : '*'
    "Access-Control-Allow-Headers" : 'Content-Type, X-Requested-With'
    "Access-Control-Allow-Methods" : 'GET, POST'
  }
  next()

exports.errorEscaping = (err, req, res, next) ->
  console.log "ERROR OCCURED!!"
  console.log err
  res.send(500)
