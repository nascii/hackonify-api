var T, Tag, mongoose;

mongoose = require("mongoose");

Tag = new mongoose.Schema(require("./schema"));

T = mongoose.model("Tag", Tag, "tags");

module.exports = T;
