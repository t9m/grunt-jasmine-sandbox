module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      test:
        expand: true
        options:
          bare: true
        cwd: 'test/coffee'
        src: '*.coffee'
        dest: 'test/'
        ext: '.js'

    jasmine:
      product:
        src: 'src/*.js'
        options:
          host: 'http://localhost:3000/'
          specs: 'test/spec/*Spec.js'
          helpers: 'test/spec/*Helpers.js'

  grunt.loadNpmTasks 'grunt-contrib'

  grunt.registerTask 'test', ['coffee', 'jasmine:product']
