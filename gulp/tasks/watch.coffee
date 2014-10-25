gulp = require "gulp"

gulp.task "watch", ->
  gulp.watch "./dev/**/*.coffee", ["coffee"]

