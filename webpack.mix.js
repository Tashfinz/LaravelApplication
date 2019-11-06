let mix = require('laravel-mix');

mix.js('./resources/js/app.js', 'public/js')
    .sass('./resources/sass/app.scss', 'public/css');

mix.styles([
    './resources/css/libs/bootstrap.css',
    './resources/css/libs/blog-post.css',
    './resources/css/libs/font-awesome.css',
    './resources/css/libs/metisMenu.css',
    './resources/css/libs/sb-admin-2.css',
], './public/css/libs.css')


    .scripts([
        './resources/js/jquery.js',
        './resources/js/bootstrap.js',
        './resources/js/sb-admin-2.js',
        './resources/js/metisMenu.js',
        './resources/js/scripts.js'

    ], './public/js/libs.js')
