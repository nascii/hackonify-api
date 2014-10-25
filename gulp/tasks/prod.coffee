gulp = require 'gulp'

gulp.task "prod", ->
  PROD = true
  gulp.start "default"