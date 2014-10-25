mongoose = require "mongoose"


User = new mongoose.Schema require "./schema"
User.statics.auth = require './auth'

U = mongoose.model "User", User, "users"
module.exports = U