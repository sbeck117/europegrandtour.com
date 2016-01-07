import gulp from 'gulp'
import sequence from 'run-sequence'
import plumber from 'gulp-plumber'
import del from 'del'
import fs from 'fs'
import path from 'path'
import sh from 'shelljs'

// Notifications
import notify from 'gulp-notify'

// Templating
import data from 'gulp-data'
import swig from 'gulp-swig'

// Style things
import sass from 'gulp-sass'

import sourcemaps from 'gulp-sourcemaps'

// Dev server stuff
import browserSync from 'browser-sync'
import connectLogger from 'connect-logger'
import cleanUrls from 'clean-urls'

// Releasing
import surge from 'gulp-surge'

// Environment
import dotenv from 'dotenv'
dotenv.load()

// *************************************************************************************************
// Configuration
// *************************************************************************************************

const buildDir = 'build'
const pagesPath = 'pages'
const dataPath = './data/data.json'
const scriptsDir = 'scripts'
const stylesPath = 'styles/main.sass'
const imagesDir = 'images'

// *************************************************************************************************
// Top-level tasks
// *************************************************************************************************

gulp.task('default', [ 'build' ])

gulp.task('serve', [ 'watch' ], cb => (
  sequence([ 'browsersync' ], cb)
))

gulp.task('build', cb => (
  sequence('clean', [ 'styles', 'bundle', 'pages', 'assets' ], cb)
))

gulp.task('watch', [ 'build' ], cb => (
  sequence([ 'styles:watch', 'bundle:watch', 'pages:watch', 'assets:watch' ], cb)
))

// *************************************************************************************************
// Sub-tasks
// *************************************************************************************************

gulp.task('clean', () => (
  del([ path.join(buildDir, '**/*') ])
))

gulp.task('styles', () => (
  gulp.src(stylesPath)
    .pipe(plumber({ errorHandler: notify.onError('Error <%= error.message %>') }))
    .pipe(sourcemaps.init())
    .pipe(sass())
    .pipe(sourcemaps.write())
    .pipe(gulp.dest(path.join(buildDir, 'styles')))
    .pipe(browserSync.stream())
))

gulp.task('styles:watch', () => (
  gulp.watch(path.join('styles', '**/*'), [ 'styles' ])
))

gulp.task('assets', () => (
  gulp.src(path.join(imagesDir, '**/*'))
    .pipe(gulp.dest(path.join(buildDir, imagesDir)))
    .pipe(browserSync.stream())
))

gulp.task('assets:watch', () => (
  gulp.watch(path.join(imagesDir, '**/*'), [ 'assets' ])
))

gulp.task('pages', () => (
  gulp.src([
    path.join(pagesPath, '**/*'),
    `!${path.join(pagesPath, '_layouts')}`,
    `!${path.join(pagesPath, '_layouts', '**/*')}`
  ])
    .pipe(plumber())
    .pipe(data(file => {
      var baseData = require(dataPath)
      baseData.basename = path.basename(file.path, '.swig')
      return baseData
    }))
    .pipe(swig({
      defaults: {
        cache: false,
        locals: { now: () => new Date() }
      }
    }))
    .pipe(gulp.dest(buildDir))
    .pipe(browserSync.stream())
))

gulp.task('pages:watch', () => {
  gulp.watch(path.join(pagesPath, '**/*'), [ 'pages' ])
  gulp.watch(dataPath, [ 'pages' ])
})

gulp.task('bundle', () => {
  gulp.src(path.join(scriptsDir, '**/*'))
    .pipe(gulp.dest(path.join(buildDir, scriptsDir)))
    .pipe(browserSync.stream())
})

gulp.task('bundle:watch', () => (
  gulp.watch(path.join(scriptsDir, '**/*.js'), [ 'bundle' ])
))

gulp.task('browsersync', () => {
  browserSync({
    server: {
      baseDir: buildDir,
      middleware: [ cleanUrls(true, { root: buildDir }), connectLogger() ]
    },
    open: true,
    notify: true
  })
})

gulp.task('uglify', [ 'build' ], () => (
  gulp.src(path.join(buildDir, scriptsDir, 'bundle.js'))
    .pipe(uglify())
    .pipe(gulp.dest(path.join(buildDir, scriptsDir)))
))

gulp.task('deploy', [ 'build', 'uglify' ], () => {
  var branch = sh.exec('git rev-parse --abbrev-ref HEAD', { silent: true }).output.trim()
  var changes = sh.exec('git diff-files --quiet --ignore-submodules').code !== 0

  if (branch !== 'master' || changes) {
    throw new Error('the current git branch must be `master` and there must be no uncommitted changes.')
  }

  var cname = fs.readFileSync('./CNAME')

  return surge({
    project: buildDir,
    domain: cname
  })
})
