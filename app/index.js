var api, app, config, db, express, globalHelpers, http, io, port, server, socket;

config = require("./config");

globalHelpers = rootRequire("helpers/globals");

http = require('http');

express = require("express");

socket = require('socket.io');

db = rootRequire("db");

app = express();

server = http.Server(app);

app.all("/", function(req, res) {
  return res.send('lol');
});

io = socket(server);

api = rootRequire('api');

io.on('connection', function(socket) {
  logger.debug('user connected');
  return api(socket);
});

port = process.env.PORT || 7001;

server.listen(port, function() {
  return console.log("listening to port " + port);
});
