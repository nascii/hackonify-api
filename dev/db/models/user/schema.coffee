mongoose = require "mongoose"
Tag = rootRequire "db/models/tag"

module.exports =  
  name: String
  avatar: String
  tags: [
    type: mongoose.Schema.Types.ObjectId
    ref: "Tag"
  ]
  sessionKey: String
  date: 
    type: Date
    default: Date.now