module.exports = (grunt) ->
  require('load-grunt-tasks') grunt

  grunt.initConfig
    pkg: grunt.file.readJSON('bower.json')

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
        options:
          banner: '/*! <%= pkg.name %> - v<%= pkg.version %> - ' +
                  '<%= grunt.template.today("yyyy-mm-dd") %> - '  +
                  '<%= pkg.homepage %> */'
        files:
          'js/gist-async.min.js': ['build/main.js']

    watch:
      files: ['javascripts/**/*.coffee']
      tasks: ['coffee']

  grunt.registerTask 'default', ['clean', 'coffee', 'uglify']
