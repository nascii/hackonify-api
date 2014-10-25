global.PROD = false
global.PATHS =
  app: "./app"
  assets: "./app/assets"
  stylus: "./app/styles/**/*.styl"
  coffee: "./app/coffee/**/*.coffee"
  img: "./app/img/**/*"
  fonts: "./app/fonts/**/*"
  templates: "./app/templates/**/*.jade"
  js: "./app/js"
  public: "./public"

fs = require "fs"
path = require "path"
tasks = fs.readdirSync("./gulp/tasks/"). filter (name) -> 
  /(\.(js|coffee)$)/i.test path.extname(name)

tasks.forEach (name) ->
  require("./tasks/" + name)