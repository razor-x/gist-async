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

    watch:
      files: ['javascripts/**/*.coffee']
      tasks: ['coffee']

  grunt.registerTask 'default', ['clean', 'coffee']
