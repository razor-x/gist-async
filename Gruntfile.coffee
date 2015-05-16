module.exports = (grunt) ->
  require('load-grunt-tasks') grunt

  grunt.initConfig
    clean:
      folder: 'build'

    coffee:
      compile:
        options:
          sourceMap: true
        files:
          'build/main.js': 'javascripts/main.coffee'

    uglify:
      js:
        files:
          'js/gist-async.min.js': ['build/main.js']

    watch:
      files: ['javascripts/**/*.coffee']
      tasks: ['coffee']

  grunt.registerTask 'default', ['clean', 'coffee', 'uglify']
