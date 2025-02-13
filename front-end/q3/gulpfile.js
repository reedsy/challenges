const gulp = require('gulp');
const sass = require('gulp-sass')(require('sass'));
const postcss = require('gulp-postcss');
const autoprefixer = require('autoprefixer');
const cleanCSS = require('gulp-clean-css');
const sourcemaps = require('gulp-sourcemaps');
const browserSync = require('browser-sync').create();

// Paths
const paths = {
    scss: 'scss/*.scss', 
    css: 'css/',  
    html: '*.html'
};

// Compile SCSS
function styles() {
    return gulp.src(paths.scss)
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(postcss([autoprefixer()]))
        .pipe(cleanCSS())
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.css))
        .pipe(browserSync.stream());
}

// Watch files and reload
function watchFiles() {
    browserSync.init({
        server: {
            baseDir: './',
            index: 'q3.html'
        }
    });
    gulp.watch(paths.scss, styles);
    gulp.watch(paths.html).on('change', browserSync.reload);
}

// Default task
exports.default = gulp.series(styles, watchFiles);