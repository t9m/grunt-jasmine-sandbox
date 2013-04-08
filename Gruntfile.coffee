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

    jasmine:
      product:
        src: 'src/*.js'
        options:
          host: 'http://127.0.0.1:8000/'
          specs: 'spec/*Spec.js'
          vendor: 'spec/vendor/*.js'
          helpers: 'spec/helpers/*.js'

  grunt.loadNpmTasks 'grunt-contrib'

  grunt.registerTask 'test', ['coffee', 'jasmine:product']
