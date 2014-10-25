gulp       = require 'gulp'
coffee     = require 'gulp-coffee'
uglify     = require 'gulp-uglify'
gif        = require 'gulp-if'
notify     = require 'gulp-notify'
size       = require 'gulp-size'

console.log PATHS.coffee

gulp.task 'coffee', ->
  gulp.src "./dev/**/*.coffee"
    .pipe coffee { bare: true }
    .on 'error', notify.onError 'Error: <%= error.message %>'
    .pipe gif PROD, uglify()
    .pipe size title: 'APP SIZE IS: '
    .pipe gulp.dest PATHS.app