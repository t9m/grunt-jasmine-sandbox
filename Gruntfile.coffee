module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      test:
        expand: true
        options:
          bare: true
        cwd: 'spec/coffee'
        src: '*.coffee'
        dest: 'spec'
        ext: '.js'

    connect:
      jasmine:
        options:
          port: 3000

    jasmine:
      product:
        src: 'src/*.js'
        options:
          host: 'http://localhost:3000/'
          specs: 'spec/*Spec.js'
          vendor: 'spec/vendor/*.js'
          helpers: 'spec/helpers/*.js'

  grunt.loadNpmTasks 'grunt-contrib'

  grunt.registerTask 'test', ['coffee', 'connect:jasmine', 'jasmine:product']
