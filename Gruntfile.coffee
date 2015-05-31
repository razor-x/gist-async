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

    coffeelint:
      javascripts: ['javascripts/*.coffee']

    watch:
      files: ['javascripts/**/*.coffee']
      tasks: ['coffeelint', 'coffee']

  grunt.registerTask 'default', ['clean', 'coffeelint', 'coffee']
