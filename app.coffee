axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
    ignores: [
        'readme.md',
        '**/layout.*',
        '**/_*',
        '.gitignore',
        'ship.*conf'
    ]

    extensions: [
        js_pipeline(manifest: 'assets/js/manifest.yaml', out: '/js/io.js', minify: true),
        css_pipeline(manifest: 'assets/css/manifest.yaml', out: '/css/io.css', minify: true)
    ]

    stylus:
        use: [axis(), rupture(), autoprefixer()]
        sourcemap: false

    'coffee-script':
        sourcemap: false

    jade:
        pretty: false
