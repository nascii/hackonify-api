gulp = require "gulp"
notify = require "gulp-notify"
nodemon = require "gulp-nodemon"

gulp.task "server", ["coffee"], ->
  nodemon
    script: "app"
    env: { 'NODE_ENV': 'development' }
    # ext: "html js"
    # ignore: ["ignored.js"]

