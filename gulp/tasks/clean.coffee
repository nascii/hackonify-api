gulp = require "gulp"
clean = require "gulp-clean"

gulp.task "clean", ->
  gulp.src "./app/**/*", read: false
    .pipe clean()