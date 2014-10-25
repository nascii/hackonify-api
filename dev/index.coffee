config = require "./config"
globalHelpers = rootRequire "helpers/globals"

http = require 'http'
express = require "express"
socket = require 'socket.io'

db = rootRequire "db"

app = express()
server = http.Server(app)
app.all "/", (req, res) -> res.send 'lol'
io = socket(server)

api = rootRequire 'api'
io.on 'connection', (socket) -> 
  logger.debug 'user connected'
  api(socket)


port = process.env.PORT || 7001
server.listen port, -> console.log "listening to port " + port