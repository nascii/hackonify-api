var MONGOHQ_URL, db, mongoose;

mongoose = require('mongoose');

MONGOHQ_URL = "mongodb://admin:ololo2311@ds049130.mongolab.com:49130/hackonify";

db = mongoose.connection;

db.on('error', console.error);

mongoose.connect(MONGOHQ_URL);

module.exports = db;
